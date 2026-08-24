import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllymuralKickntroller: UIViewController {
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let backgroundImageView = UIImageView()
    private var currentUser: PonllyUser { PonllyDataCenter.currentUser() }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setup()
        NotificationCenter.default.addObserver(self, selector: #selector(profileDidChange), name: .ponllyCurrentProfileDidChange, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(profileDidChange), name: .ponllyCoinBalanceDidChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = false
        reloadContent()
    }

    private func setup() {
        backgroundImageView.image = PonllyDataCenter.currentCoverImage()
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.34
        view.addSubview(backgroundImageView)
        backgroundImageView.pinToEdges(of: view)
        let veil = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.34), PonllyPalette.background.withAlphaComponent(0.96)], start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 70),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -96)
        ])
    }

    private func reloadContent() {
        stack.arrangedSubviews.forEach {
            stack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        if FlckinkMatteFinish.shared.isLoggedIn {
            loggedInContent().forEach(stack.addArrangedSubview)
        } else {
            stack.addArrangedSubview(signedOutPanel())
        }
    }

    private func loggedInContent() -> [UIView] {
        [
            profileHeader(),
            statsCard(),
            balanceCard(),
            settingsGroup([
                profileRow(title: "My Artwork", subtitle: "Show your artwork", symbol: "paintpalette", color: PonllyPalette.cyan, action: #selector(myArtworkTapped)),
                profileRow(title: "Blacklist", subtitle: "Manage blocked users", symbol: "shield", color: PonllyPalette.cyan, action: #selector(blacklistTapped))
            ]),
            sectionTitle("Policies"),
            settingsGroup([
                profileRow(title: "Terms Of Service", subtitle: "Read our terms and conditions", symbol: "doc.text", color: PonllyPalette.pink, action: #selector(termsTapped)),
                profileRow(title: "Privacy Policy", subtitle: "How we protect your data", symbol: "lock", color: PonllyPalette.pink, action: #selector(privacyTapped))
            ]),
            sectionTitle("Account Actions"),
            settingsGroup([
                profileRow(title: "Log Out", subtitle: "Sign out of your account", symbol: "rectangle.portrait.and.arrow.right", color: .white, action: #selector(logoutTapped)),
                profileRow(title: "Delete Account", subtitle: "Permanently remove your account", symbol: "trash", color: PonllyPalette.pink, action: #selector(deleteAccountTapped))
            ])
        ]
    }

    private func signedOutPanel() -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 16
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        panel.layer.cornerRadius = 24
        panel.layer.borderWidth = 1
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layoutMargins = UIEdgeInsets(top: 34, left: 22, bottom: 34, right: 22)
        panel.isLayoutMarginsRelativeArrangement = true

        let title = UILabel()
        title.text = "My Stash"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 24)
        let body = UILabel()
        body.text = "Sign in to keep your graffiti profile, battles, rooms, and private messages together."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 14, weight: .medium)
        body.textAlignment = .center
        body.numberOfLines = 0
        let button = PonllyNeonButton(title: "Sign In")
        button.addTarget(self, action: #selector(signInTapped), for: .touchUpInside)
        [title, body, button].forEach(panel.addArrangedSubview)
        button.widthAnchor.constraint(equalTo: panel.widthAnchor, multiplier: 0.82).isActive = true
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return panel
    }

    private func profileHeader() -> UIView {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false

        let avatar = ErErstPaintLabView(user: currentUser, size: 92)
        avatar.layer.borderWidth = 3
        avatar.layer.borderColor = PonllyPalette.pink.cgColor
        avatar.layer.shadowColor = PonllyPalette.pink.cgColor
        avatar.layer.shadowOpacity = 0.5
        avatar.layer.shadowRadius = 20
        header.addSubview(avatar)

        let name = UILabel()
        name.text = "@\(currentUser.name.lowercased())"
        name.textColor = .white
        name.font = PonllyFonts.display(size: 24)
        name.adjustsFontSizeToFitWidth = true
        name.minimumScaleFactor = 0.78
        name.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(name)

        let badge = UILabel()
        badge.text = "\(currentUser.crew) • \(currentUser.city)"
        badge.textColor = PonllyPalette.cyan
        badge.backgroundColor = UIColor(red: 38/255, green: 40/255, blue: 56/255, alpha: 0.92)
        badge.font = PonllyFonts.display(size: 11)
        badge.textAlignment = .center
        badge.layer.cornerRadius = 8
        badge.clipsToBounds = true
        badge.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(badge)

        let edit = UIButton(type: .system)
        edit.setTitle("Edit", for: .normal)
        edit.setImage(UIImage(systemName: "pencil"), for: .normal)
        edit.tintColor = PonllyPalette.pink
        edit.setTitleColor(PonllyPalette.pink, for: .normal)
        edit.titleLabel?.font = PonllyFonts.display(size: 13)
        edit.layer.cornerRadius = 16
        edit.layer.borderWidth = 1.6
        edit.layer.borderColor = PonllyPalette.pink.cgColor
        edit.translatesAutoresizingMaskIntoConstraints = false
        edit.addTarget(self, action: #selector(editTapped), for: .touchUpInside)
        header.addSubview(edit)

        let bio = UILabel()
        bio.text = currentUser.bio
        bio.textColor = PonllyPalette.muted
        bio.font = PonllyFonts.body(size: 15, weight: .medium)
        bio.numberOfLines = 0
        bio.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(bio)

        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(greaterThanOrEqualToConstant: 210),
            avatar.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 22),
            avatar.topAnchor.constraint(equalTo: header.topAnchor, constant: 8),
            name.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 18),
            name.trailingAnchor.constraint(lessThanOrEqualTo: edit.leadingAnchor, constant: -12),
            name.topAnchor.constraint(equalTo: avatar.topAnchor, constant: 18),
            badge.leadingAnchor.constraint(equalTo: name.leadingAnchor),
            badge.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 8),
            badge.widthAnchor.constraint(greaterThanOrEqualToConstant: 128),
            badge.heightAnchor.constraint(equalToConstant: 28),
            edit.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -4),
            edit.centerYAnchor.constraint(equalTo: name.centerYAnchor),
            edit.widthAnchor.constraint(equalToConstant: 116),
            edit.heightAnchor.constraint(equalToConstant: 48),
            bio.leadingAnchor.constraint(equalTo: avatar.leadingAnchor),
            bio.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -12),
            bio.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 26),
            bio.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -6)
        ])
        return header
    }

    private func statsCard() -> UIView {
        let stats = PonllyDataCenter.profileStats(for: currentUser.id)
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let row = UIStackView(arrangedSubviews: [
            metric("\(stats.artworkCount)", "WORKS", action: #selector(worksTapped)),
            metric("\(stats.followerCount)", "FOLLOWERS", action: #selector(followersTapped)),
            metric("\(stats.followingCount)", "FOLLOWING", action: #selector(followingTapped))
        ])
        row.axis = .horizontal
        row.distribution = .fillEqually
        row.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(row)
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 108),
            row.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            row.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            row.topAnchor.constraint(equalTo: card.topAnchor),
            row.bottomAnchor.constraint(equalTo: card.bottomAnchor)
        ])
        return card
    }

    private func balanceCard() -> UIView {
        let card = UIView()
        card.backgroundColor = UIColor(red: 24/255, green: 24/255, blue: 34/255, alpha: 0.94)
        card.layer.cornerRadius = 20
        card.layer.borderWidth = 1
        card.layer.borderColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 0.38).cgColor
        card.translatesAutoresizingMaskIntoConstraints = false

        let coinIcon = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        coinIcon.contentMode = .scaleAspectFit
        coinIcon.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(coinIcon)

        let amount = UILabel()
        amount.text = PonllyDataCenter.coinBalance.formatted()
        amount.textColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 1)
        amount.font = PonllyFonts.display(size: 32)
        amount.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(amount)
        let caption = UILabel()
        caption.text = "AVAILABLE COINS"
        caption.textColor = PonllyPalette.muted
        caption.font = PonllyFonts.display(size: 9)
        caption.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(caption)
        let recharge = UIButton(type: .system)
        recharge.setTitle("+ Recharge", for: .normal)
        recharge.setTitleColor(.black, for: .normal)
        recharge.titleLabel?.font = PonllyFonts.display(size: 13)
        recharge.backgroundColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 1)
        recharge.layer.cornerRadius = 18
        recharge.translatesAutoresizingMaskIntoConstraints = false
        recharge.addTarget(self, action: #selector(rechargeTapped), for: .touchUpInside)
        card.addSubview(recharge)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 116),
            coinIcon.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 20),
            coinIcon.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            coinIcon.widthAnchor.constraint(equalToConstant: 56),
            coinIcon.heightAnchor.constraint(equalToConstant: 56),
            amount.leadingAnchor.constraint(equalTo: coinIcon.trailingAnchor, constant: 20),
            amount.topAnchor.constraint(equalTo: card.topAnchor, constant: 28),
            caption.leadingAnchor.constraint(equalTo: amount.leadingAnchor),
            caption.topAnchor.constraint(equalTo: amount.bottomAnchor, constant: 4),
            recharge.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -18),
            recharge.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            recharge.leadingAnchor.constraint(greaterThanOrEqualTo: amount.trailingAnchor, constant: 16),
            recharge.widthAnchor.constraint(equalToConstant: 138),
            recharge.heightAnchor.constraint(equalToConstant: 41)
        ])
        return card
    }

    private func settingsGroup(_ rows: [UIView]) -> UIStackView {
        let group = UIStackView()
        group.axis = .vertical
        group.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        group.layer.cornerRadius = 20
        group.layer.borderWidth = 1
        group.layer.borderColor = PonllyPalette.line.cgColor
        group.layoutMargins = UIEdgeInsets(top: 12, left: 26, bottom: 12, right: 26)
        group.isLayoutMarginsRelativeArrangement = true
        rows.enumerated().forEach { index, row in
            group.addArrangedSubview(row)
            if index < rows.count - 1 {
                group.addArrangedSubview(divider())
            }
        }
        return group
    }

    private func profileRow(title: String, subtitle: String, symbol: String, color: UIColor, action: Selector) -> UIControl {
        let control = UIControl()
        control.addTarget(self, action: action, for: .touchUpInside)

        let iconBox = UIView()
        iconBox.layer.cornerRadius = 12
        iconBox.layer.borderWidth = 1.5
        iconBox.layer.borderColor = color.cgColor
        iconBox.isUserInteractionEnabled = false
        iconBox.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(iconBox)
        let icon = UIImageView(image: UIImage(systemName: symbol))
        icon.tintColor = color
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconBox.addSubview(icon)

        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = title == "Delete Account" ? color : .white
        titleLabel.font = PonllyFonts.display(size: 17)
        titleLabel.isUserInteractionEnabled = false
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = PonllyPalette.muted
        subtitleLabel.font = PonllyFonts.body(size: 14, weight: .medium)
        subtitleLabel.isUserInteractionEnabled = false
        let textStack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        textStack.axis = .vertical
        textStack.spacing = 7
        textStack.isUserInteractionEnabled = false
        textStack.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(textStack)

        let chevron = UIImageView(image: UIImage(systemName: "chevron.right"))
        chevron.tintColor = PonllyPalette.muted
        chevron.isUserInteractionEnabled = false
        chevron.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(chevron)

        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 86),
            iconBox.leadingAnchor.constraint(equalTo: control.leadingAnchor),
            iconBox.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            iconBox.widthAnchor.constraint(equalToConstant: 58),
            iconBox.heightAnchor.constraint(equalToConstant: 58),
            icon.centerXAnchor.constraint(equalTo: iconBox.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: iconBox.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 24),
            icon.heightAnchor.constraint(equalToConstant: 24),
            textStack.leadingAnchor.constraint(equalTo: iconBox.trailingAnchor, constant: 22),
            textStack.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            textStack.trailingAnchor.constraint(lessThanOrEqualTo: chevron.leadingAnchor, constant: -14),
            chevron.trailingAnchor.constraint(equalTo: control.trailingAnchor),
            chevron.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            chevron.widthAnchor.constraint(equalToConstant: 14),
            chevron.heightAnchor.constraint(equalToConstant: 22)
        ])
        return control
    }

    private func metric(_ value: String, _ title: String, action: Selector?) -> UIControl {
        let control = UIControl()
        if let action { control.addTarget(self, action: action, for: .touchUpInside) }
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 8
        stack.isUserInteractionEnabled = false
        stack.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(stack)
        let valueLabel = UILabel()
        valueLabel.text = value
        valueLabel.textColor = .white
        valueLabel.font = PonllyFonts.mono(size: 18)
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = PonllyPalette.muted
        titleLabel.font = PonllyFonts.body(size: 11, weight: .medium)
        stack.addArrangedSubview(valueLabel)
        stack.addArrangedSubview(titleLabel)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: control.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: control.centerYAnchor)
        ])
        return control
    }

    private func sectionTitle(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        label.layoutMargins = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 0)
        return label
    }

    private func divider() -> UIView {
        let line = UIView()
        line.backgroundColor = PonllyPalette.line
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        return line
    }

    private func compactCount(_ value: Int) -> String {
        if value >= 10_000 {
            let rounded = Double(value) / 1_000
            return String(format: "%.1fK", rounded)
        }
        return "\(value)"
    }

    @objc private func signInTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            self.reloadContent()
        }
    }

    @objc private func editTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let edit = PonllyEditProfileViewController()
            edit.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(edit, animated: true)
        }
    }

    @objc private func rechargeTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let store = PoonllFineLineController()
            store.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(store, animated: true)
        }
    }

    @objc private func myArtworkTapped() {
        let artwork = PonllyMyArtworkViewController()
        artwork.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(artwork, animated: true)
    }

    @objc private func worksTapped() {
        let records = RerosolTwistController(user: currentUser)
        records.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(records, animated: true)
    }

    @objc private func followersTapped() {
        let list = PonllyacidGreenFillfController(kind: .followers)
        list.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(list, animated: true)
    }

    @objc private func followingTapped() {
        let list = PonllyacidGreenFillfController(kind: .following)
        list.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(list, animated: true)
    }

    @objc private func profileDidChange() {
        backgroundImageView.image = PonllyDataCenter.currentCoverImage()
        reloadContent()
    }

    @objc private func blacklistTapped() {
        let list = BlckinkHiddenWallController()
        list.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(list, animated: true)
    }

    @objc private func termsTapped() {
        let policy = SmuralLeanController()
        policy.title = "Terms Of Service"
        policy.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(policy, animated: true)
    }

    @objc private func privacyTapped() {
        let policy = SmuralLeanController()
        policy.title = "Privacy Policy"
        policy.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(policy, animated: true)
    }

    @objc private func logoutTapped() {
        ponllyShowThemeAlert(title: "Log Out", message: "Sign out of your Ponlly account on this device?", actionTitle: "Log Out", style: .info, showsCancel: true) {
            FlckinkMatteFinish.shared.logout()
            self.reloadContent()
        }
    }

    @objc private func deleteAccountTapped() {
        ponllyShowThemeAlert(title: "Delete Account", message: "This removes the current account from this device and signs you out.", actionTitle: "Delete", style: .failure, showsCancel: true) {
            FlckinkMatteFinish.shared.deleteCurrentAccount()
            self.reloadContent()
        }
    }

    @objc private func roomsTapped() {
        let rooms = PonllystencilBloomController()
        rooms.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(rooms, animated: true)
    }
}
