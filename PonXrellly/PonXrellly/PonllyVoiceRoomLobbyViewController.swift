import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyVoiceRoomLobbyViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let roomsStack = UIStackView()
    private var selectedCategory: PonllyVoiceLobbyCategory = .featured
    private var categoryButtons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        setup()
        reloadRooms()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = false
        reloadRooms()
    }

    private func setup() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 10/255, green: 12/255, blue: 17/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        stack.axis = .vertical
        stack.spacing = 18
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let header = UIStackView()
        header.axis = .vertical
        header.spacing = 6
        let title = UILabel()
        title.text = "Voice Room"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 32)
        let subtitle = UILabel()
        subtitle.text = "Drop into wall-talk sessions with writers, critics, and process crews."
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 14, weight: .medium)
        subtitle.numberOfLines = 0
        header.addArrangedSubview(title)
        header.addArrangedSubview(subtitle)
        stack.addArrangedSubview(header)
        stack.addArrangedSubview(categoryRow())
        roomsStack.axis = .vertical
        roomsStack.spacing = 14
        stack.addArrangedSubview(roomsStack)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 20),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -96)
        ])
    }

    private func categoryRow() -> UIStackView {
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 8
        row.distribution = .fillEqually
        categoryButtons = PonllyVoiceLobbyCategory.allCases.enumerated().map { index, category in
            let button = UIButton(type: .system)
            button.tag = index
            button.setTitle(category.rawValue, for: .normal)
            button.titleLabel?.font = PonllyFonts.display(size: 10)
            button.layer.cornerRadius = 17
            button.layer.borderWidth = 1
            button.heightAnchor.constraint(equalToConstant: 38).isActive = true
            button.addTarget(self, action: #selector(categoryTapped(_:)), for: .touchUpInside)
            row.addArrangedSubview(button)
            return button
        }
        refreshCategories()
        return row
    }

    private func refreshCategories() {
        for (index, button) in categoryButtons.enumerated() {
            let category = PonllyVoiceLobbyCategory.allCases[index]
            let selected = category == selectedCategory
            button.backgroundColor = selected ? PonllyPalette.pink : PonllyPalette.panel
            button.setTitleColor(selected ? .white : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func reloadRooms() {
        roomsStack.arrangedSubviews.forEach {
            roomsStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let rooms = PonllyDataCenter.voiceRooms(for: selectedCategory)
        guard !rooms.isEmpty else {
            roomsStack.addArrangedSubview(emptyState())
            return
        }
        rooms.forEach { roomsStack.addArrangedSubview(roomCard($0)) }
    }

    private func roomCard(_ room: PonllyVoiceRoom) -> UIControl {
        let card = UIControl()
        card.backgroundColor = PonllyPalette.panel
        card.layer.cornerRadius = 22
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        card.clipsToBounds = true
        card.addAction(UIAction { [weak self] _ in
            self?.open(room)
        }, for: .touchUpInside)

        let image = UIImageView(image: UIImage(named: room.backgroundImageName))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.isUserInteractionEnabled = false
        image.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(image)
        let shade = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.05), UIColor.black.withAlphaComponent(0.78)], start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
        shade.isUserInteractionEnabled = false
        shade.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(shade)
        let more = UIButton(type: .system)
        more.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        more.tintColor = .white
        more.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.86)
        more.layer.cornerRadius = 20
        more.layer.borderWidth = 1
        more.layer.borderColor = UIColor.white.withAlphaComponent(0.18).cgColor
        more.translatesAutoresizingMaskIntoConstraints = false
        more.addAction(UIAction { [weak self] _ in
            self?.presentReport(for: room)
        }, for: .touchUpInside)
        card.addSubview(more)

        let host = PonllyDataCenter.user(room.hostId)
        let avatarButton = UIControl()
        avatarButton.translatesAutoresizingMaskIntoConstraints = false
        avatarButton.addAction(UIAction { [weak self] _ in
            self?.openArtist(host)
        }, for: .touchUpInside)
        card.addSubview(avatarButton)
        let avatar = ErErstPaintLabView(user: host, size: 44)
        avatar.isUserInteractionEnabled = false
        avatarButton.addSubview(avatar)
        let title = UILabel()
        title.text = room.title
        title.textColor = .white
        title.font = PonllyFonts.display(size: 17)
        title.numberOfLines = 2
        title.isUserInteractionEnabled = false
        title.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(title)
        let topic = UILabel()
        topic.text = room.topic
        topic.textColor = UIColor.white.withAlphaComponent(0.76)
        topic.font = PonllyFonts.body(size: 12, weight: .medium)
        topic.numberOfLines = 2
        topic.isUserInteractionEnabled = false
        topic.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(topic)
        let meta = UILabel()
        meta.text = "\(room.speakerSeats.count) seats  •  \(room.listenerIds.count) listening  •  \(host.name)"
        meta.textColor = room.accent
        meta.font = PonllyFonts.mono(size: 11)
        meta.isUserInteractionEnabled = false
        meta.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(meta)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 210),
            image.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            image.topAnchor.constraint(equalTo: card.topAnchor),
            image.bottomAnchor.constraint(equalTo: card.bottomAnchor),
            shade.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            shade.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            shade.topAnchor.constraint(equalTo: card.topAnchor),
            shade.bottomAnchor.constraint(equalTo: card.bottomAnchor),
            more.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -14),
            more.topAnchor.constraint(equalTo: card.topAnchor, constant: 14),
            more.widthAnchor.constraint(equalToConstant: 40),
            more.heightAnchor.constraint(equalToConstant: 40),
            avatarButton.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            avatarButton.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -18),
            avatarButton.widthAnchor.constraint(equalToConstant: 44),
            avatarButton.heightAnchor.constraint(equalToConstant: 44),
            avatar.leadingAnchor.constraint(equalTo: avatarButton.leadingAnchor),
            avatar.trailingAnchor.constraint(equalTo: avatarButton.trailingAnchor),
            avatar.topAnchor.constraint(equalTo: avatarButton.topAnchor),
            avatar.bottomAnchor.constraint(equalTo: avatarButton.bottomAnchor),
            title.leadingAnchor.constraint(equalTo: avatarButton.trailingAnchor, constant: 12),
            title.trailingAnchor.constraint(equalTo: more.leadingAnchor, constant: -12),
            title.topAnchor.constraint(greaterThanOrEqualTo: card.topAnchor, constant: 94),
            topic.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            topic.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            topic.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.trailingAnchor.constraint(equalTo: topic.trailingAnchor),
            meta.bottomAnchor.constraint(equalTo: avatarButton.bottomAnchor)
        ])
        return card
    }

    private func emptyState() -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 12
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        panel.layer.cornerRadius = 22
        panel.layer.borderWidth = 1
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layoutMargins = UIEdgeInsets(top: 36, left: 20, bottom: 36, right: 20)
        panel.isLayoutMarginsRelativeArrangement = true
        let icon = UIImageView(image: UIImage(systemName: "mic.slash"))
        icon.tintColor = PonllyPalette.cyan
        icon.widthAnchor.constraint(equalToConstant: 38).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 38).isActive = true
        let title = UILabel()
        title.text = "No rooms from followed artists"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 16)
        let body = UILabel()
        body.text = "Follow more wall writers to see their live voice spaces here."
        body.textColor = PonllyPalette.muted
        body.textAlignment = .center
        body.numberOfLines = 0
        body.font = PonllyFonts.body(size: 13, weight: .medium)
        [icon, title, body].forEach(panel.addArrangedSubview)
        return panel
    }

    private func open(_ room: PonllyVoiceRoom) {
        ponllyShowToast("Entering room...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            let detail = PonllyVoiceRoomImmersiveViewController(room: room)
            detail.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(detail, animated: true)
        }
    }

    private func openArtist(_ user: PonllyUser) {
        guard user.id != PonllyDataCenter.currentUserId else { return }
        let profile = FlckinkPrimerCoatController(user: user)
        profile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(profile, animated: true)
    }

    private func presentReport(for room: PonllyVoiceRoom) {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let report = PonllyReportRoomViewController(room: room)
            report.onReportSubmitted = { [weak self] in
                self?.ponllyShowNotice("Report submitted", style: .success)
            }
            report.modalPresentationStyle = .overFullScreen
            report.modalTransitionStyle = .crossDissolve
            self.present(report, animated: true)
        }
    }

    @objc private func categoryTapped(_ sender: UIButton) {
        selectedCategory = PonllyVoiceLobbyCategory.allCases[sender.tag]
        refreshCategories()
        reloadRooms()
    }
}
