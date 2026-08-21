import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyBlacklistViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let stack = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blacklist"
        view.backgroundColor = PonllyPalette.background
        setup()
        reload()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(header)
        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        back.layer.cornerRadius = 28
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        header.addSubview(back)
        let title = UILabel()
        title.text = "Blacklist"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 14
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 122),
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -12),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            title.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 18),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -18),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 30),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func reload() {
        stack.arrangedSubviews.forEach {
            stack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let users = PonllyDataCenter.blockedUsers()
        guard !users.isEmpty else {
            stack.addArrangedSubview(emptyPanel())
            return
        }
        let count = UILabel()
        count.text = "\(users.count) Blocked Users"
        count.textColor = PonllyPalette.muted
        count.font = PonllyFonts.display(size: 14)
        stack.addArrangedSubview(count)
        users.forEach { stack.addArrangedSubview(row(for: $0)) }
    }

    private func row(for user: PonllyUser) -> UIView {
        let card = UIControl()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.94)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        card.addAction(UIAction { [weak self] _ in
            let profile = PonllyArtistProfileViewController(user: user)
            profile.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(profile, animated: true)
        }, for: .touchUpInside)
        let avatar = PonllyAvatarView(user: user, size: 48)
        card.addSubview(avatar)
        let name = UILabel()
        name.text = user.name.lowercased()
        name.textColor = .white
        name.font = PonllyFonts.display(size: 14)
        name.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(name)
        let crew = UILabel()
        crew.text = "\(user.crew) • \(user.city)"
        crew.textColor = PonllyPalette.muted
        crew.font = PonllyFonts.body(size: 12, weight: .medium)
        crew.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(crew)
        let unblock = UIButton(type: .system)
        unblock.setTitle("Unblock", for: .normal)
        unblock.setTitleColor(PonllyPalette.pink, for: .normal)
        unblock.titleLabel?.font = PonllyFonts.display(size: 14)
        unblock.layer.cornerRadius = 14
        unblock.layer.borderWidth = 1
        unblock.layer.borderColor = PonllyPalette.pink.cgColor
        unblock.translatesAutoresizingMaskIntoConstraints = false
        unblock.addAction(UIAction { [weak self] _ in
            PonllyDataCenter.blockedUserIds.remove(user.id)
            self?.ponllyShowToast("Artist unblocked")
            self?.reload()
        }, for: .touchUpInside)
        card.addSubview(unblock)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 90),
            avatar.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            avatar.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            name.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 14),
            name.topAnchor.constraint(equalTo: card.topAnchor, constant: 20),
            name.trailingAnchor.constraint(lessThanOrEqualTo: unblock.leadingAnchor, constant: -12),
            crew.leadingAnchor.constraint(equalTo: name.leadingAnchor),
            crew.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 6),
            crew.trailingAnchor.constraint(equalTo: name.trailingAnchor),
            unblock.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            unblock.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            unblock.widthAnchor.constraint(equalToConstant: 98),
            unblock.heightAnchor.constraint(equalToConstant: 40)
        ])
        return card
    }

    private func emptyPanel() -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 18
        panel.layoutMargins = UIEdgeInsets(top: 190, left: 24, bottom: 24, right: 24)
        panel.isLayoutMarginsRelativeArrangement = true
        let iconWrap = UIView()
        iconWrap.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.16)
        iconWrap.layer.cornerRadius = 64
        iconWrap.layer.borderWidth = 2
        iconWrap.layer.borderColor = PonllyPalette.pink.cgColor
        iconWrap.widthAnchor.constraint(equalToConstant: 128).isActive = true
        iconWrap.heightAnchor.constraint(equalToConstant: 128).isActive = true
        let icon = UIImageView(image: UIImage(systemName: "shield.checkered"))
        icon.tintColor = PonllyPalette.pink
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconWrap.addSubview(icon)
        NSLayoutConstraint.activate([
            icon.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 42),
            icon.heightAnchor.constraint(equalToConstant: 42)
        ])
        let title = UILabel()
        title.text = "No Blocked Users"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 24)
        let body = UILabel()
        body.text = "Your blacklist is empty. Users you block will appear here."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 14, weight: .regular)
        body.textAlignment = .center
        body.numberOfLines = 0
        [iconWrap, title, body].forEach(panel.addArrangedSubview)
        return panel
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
