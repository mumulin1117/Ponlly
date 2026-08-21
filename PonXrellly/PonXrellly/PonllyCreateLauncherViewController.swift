import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyCreateLauncherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setupHub()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
    }

    private func setupHub() {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(header)
        let title = UILabel()
        title.text = "Creation Hub"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)
        let subtitle = UILabel()
        subtitle.text = "Select Your Medium"
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 13, weight: .medium)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(subtitle)
        let close = UIButton(type: .system)
        close.setImage(UIImage(systemName: "xmark"), for: .normal)
        close.tintColor = .white
        close.backgroundColor = PonllyPalette.panel
        close.layer.cornerRadius = 28
        close.layer.borderWidth = 1
        close.layer.borderColor = PonllyPalette.line.cgColor
        close.translatesAutoresizingMaskIntoConstraints = false
        close.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        header.addSubview(close)

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 22
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        stack.addArrangedSubview(hubCard(title: "Post Video", subtitle: "Share progress timelapses & tutorials", color: PonllyPalette.cyan, iconName: "create_post_video_icon", action: #selector(videoTapped)))
        stack.addArrangedSubview(hubCard(title: "Start PK Battle", subtitle: "Challenge another writer to a battle", color: PonllyPalette.green, iconName: "create_pk_battle_icon", action: #selector(start)))
        stack.addArrangedSubview(hubCard(title: "Create Voice Room", subtitle: "Hangout, review yards, or critique", color: .white, iconName: "create_voice_room_icon", action: #selector(voiceTapped)))

        let mark = UILabel()
        mark.text = "Leave Your Mark"
        mark.textColor = UIColor.white.withAlphaComponent(0.03)
        mark.font = PonllyFonts.display(size: 34)
        mark.adjustsFontSizeToFitWidth = true
        mark.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mark)

        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            header.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
            header.heightAnchor.constraint(equalToConstant: 74),
            title.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            title.topAnchor.constraint(equalTo: header.topAnchor),
            subtitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 2),
            close.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            close.centerYAnchor.constraint(equalTo: header.centerYAnchor),
            close.widthAnchor.constraint(equalToConstant: 56),
            close.heightAnchor.constraint(equalToConstant: 56),
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            stack.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 46),
            mark.leadingAnchor.constraint(equalTo: stack.leadingAnchor),
            mark.trailingAnchor.constraint(equalTo: stack.trailingAnchor),
            mark.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 76)
        ])
    }

    private func hubCard(title: String, subtitle: String, color: UIColor, iconName: String, action: Selector) -> UIControl {
        let card = UIControl()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.72)
        card.layer.cornerRadius = 26
        card.layer.borderWidth = 1.2
        card.layer.borderColor = color.withAlphaComponent(0.25).cgColor
        card.layer.shadowColor = color.cgColor
        card.layer.shadowOpacity = 0.2
        card.layer.shadowRadius = 18
        card.translatesAutoresizingMaskIntoConstraints = false
        card.addTarget(self, action: action, for: .touchUpInside)
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = color
        titleLabel.font = PonllyFonts.display(size: 16)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = PonllyPalette.muted
        subtitleLabel.font = PonllyFonts.body(size: 12, weight: .medium)
        subtitleLabel.numberOfLines = 2
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        let icon = UIImageView(image: UIImage(named: iconName))
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(titleLabel)
        card.addSubview(subtitleLabel)
        card.addSubview(icon)
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 112),
            titleLabel.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 28),
            titleLabel.topAnchor.constraint(equalTo: card.topAnchor, constant: 28),
            subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: icon.leadingAnchor, constant: -18),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            icon.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -26),
            icon.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 72),
            icon.heightAnchor.constraint(equalToConstant: 72)
        ])
        return card
    }

    @objc private func start() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            let entry = PonllyCreateBattleEntryViewController()
            entry.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(entry, animated: true)
        }
    }

    @objc private func closeTapped() {
        tabBarController?.selectedIndex = 0
    }

    @objc private func videoTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            let publish = PonllyPublishVideoViewController()
            publish.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(publish, animated: true)
        }
    }

    @objc private func voiceTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            let room = PonllyCreateVoiceRoomViewController()
            room.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(room, animated: true)
        }
    }
}
