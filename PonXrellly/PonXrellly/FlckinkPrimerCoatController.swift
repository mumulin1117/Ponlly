import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class FlckinkPrimerCoatController: UIViewController {
    private enum ProfileTab: Int, CaseIterable {
        case artwork
        case videos
        case pkBattles
        case favorites

        var title: String {
            switch self {
            case .artwork: return "Artwork"
            case .videos: return "Videos"
            case .pkBattles: return "PK Battles"
            case .favorites: return "Favorites"
            }
        }
    }

    private let user: PonllyUser
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let followButton = UIButton(type: .system)
    private let followersValue = UILabel()
    private let tabContentStack = UIStackView()
    private var selectedProfileTab: ProfileTab = .artwork
    private var profileTabButtons: [UIButton] = []

    init(user: PonllyUser) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 10/255, green: 13/255, blue: 18/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 18
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let profileTop = profileTopBlock()
        stack.addArrangedSubview(profileTop)
        let name = label("@\(user.name.lowercased())", size: 24, color: .white, weight: .black)
        name.textAlignment = .center
        let bio = label(user.bio, size: 13, color: PonllyPalette.muted, weight: .regular)
        bio.numberOfLines = 0
        bio.textAlignment = .center
        let tags = tagRow(["Wildstyle", "Chrome", "Stencil"])
        let stats = statsCard()
        let actions = actionRow()
        let tabs = profileTabs()
        tabContentStack.axis = .vertical
        tabContentStack.spacing = 12
        tabContentStack.translatesAutoresizingMaskIntoConstraints = false
        [name, bio, tags, stats, actions, tabs, tabContentStack].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -32),
            profileTop.leadingAnchor.constraint(equalTo: stack.leadingAnchor),
            profileTop.trailingAnchor.constraint(equalTo: stack.trailingAnchor),
            bio.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 24),
            bio.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -24),
            stats.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 16),
            stats.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -16),
            actions.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 16),
            actions.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -16),
            tabs.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 16),
            tabs.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -16),
            tabContentStack.leadingAnchor.constraint(equalTo: stack.leadingAnchor, constant: 16),
            tabContentStack.trailingAnchor.constraint(equalTo: stack.trailingAnchor, constant: -16)
        ])
        refreshProfileTabs()
        reloadProfileTabContent()
        refreshRelationshipUI()
    }

    private func label(_ text: String, size: CGFloat, color: UIColor, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = weight == .black ? PonllyFonts.display(size: size) : PonllyFonts.body(size: size, weight: weight)
        label.textColor = color
        return label
    }

    private func heroHeader() -> UIView {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        let art = PbruCiuClearCoatView(artwork: PonllyDataCenter.profileArtworks(for: user.id).first ?? PonllyArtwork(
            id: "\(user.id)_profile_empty",
            ownerId: user.id,
            title: "Wall Study",
            style: "Graffiti",
            imageName: nil,
            colors: user.colors
        ))
        art.layer.cornerRadius = 0
        art.layer.borderWidth = 0
        art.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(art)
        let shade = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.08), PonllyPalette.background])
        shade.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(shade)
        let back = roundIcon("chevron.left", action: #selector(backTapped))
        let more = roundIcon("ellipsis", action: #selector(moreTapped))
        header.addSubview(back)
        header.addSubview(more)
        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 246),
            art.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            art.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            art.topAnchor.constraint(equalTo: header.topAnchor),
            art.bottomAnchor.constraint(equalTo: header.bottomAnchor),
            shade.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            shade.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            shade.topAnchor.constraint(equalTo: header.topAnchor),
            shade.bottomAnchor.constraint(equalTo: header.bottomAnchor),
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            back.topAnchor.constraint(equalTo: header.safeAreaLayoutGuide.topAnchor, constant: 22),
            more.trailingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            more.topAnchor.constraint(equalTo: back.topAnchor)
        ])
        return header
    }

    private func profileTopBlock() -> UIView {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        let header = heroHeader()
        container.addSubview(header)
        let avatar = ErErstPaintLabView(user: user, size: 82)
        avatar.layer.borderColor = PonllyPalette.pink.cgColor
        avatar.layer.shadowColor = PonllyPalette.pink.cgColor
        avatar.layer.shadowOpacity = 0.55
        avatar.layer.shadowRadius = 18
        avatar.layer.shadowOffset = CGSize(width: 0, height: 0)
        container.addSubview(avatar)
        NSLayoutConstraint.activate([
            container.heightAnchor.constraint(equalToConstant: 246),
            header.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            header.topAnchor.constraint(equalTo: container.topAnchor),
            header.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            avatar.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            avatar.topAnchor.constraint(equalTo: container.topAnchor, constant: 78)
        ])
        return container
    }

    private func roundIcon(_ symbol: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        button.layer.cornerRadius = 28
        button.layer.borderWidth = 1
        button.layer.borderColor = PonllyPalette.line.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 56).isActive = true
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return button
    }

    private func tagRow(_ tags: [String]) -> UIStackView {
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .center
        row.spacing = 10
        tags.forEach { text in
            let pill = UILabel()
            pill.text = text
            pill.textAlignment = .center
            pill.textColor = PonllyPalette.muted
            pill.font = PonllyFonts.body(size: 12, weight: .semibold)
            pill.backgroundColor = PonllyPalette.panel
            pill.layer.cornerRadius = 17
            pill.layer.borderWidth = 1
            pill.layer.borderColor = PonllyPalette.line.cgColor
            pill.clipsToBounds = true
            pill.widthAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
            pill.heightAnchor.constraint(equalToConstant: 36).isActive = true
            row.addArrangedSubview(pill)
        }
        return row
    }

    private func statsCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let row = UIStackView()
        row.axis = .horizontal
        row.distribution = .fillEqually
        row.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(row)
        let stats = PonllyDataCenter.profileStats(for: user.id)
        row.addArrangedSubview(statBlock(value: "\(stats.artworkCount)", title: "Artworks", action: nil))
        row.addArrangedSubview(statBlock(value: "\(stats.followerCount)", title: "Followers", action: #selector(followersTapped)))
        row.addArrangedSubview(statBlock(value: "\(stats.followingCount)", title: "Following", action: #selector(followingTapped)))
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 96),
            row.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            row.trailingAnchor.constraint(equalTo: card.trailingAnchor),
            row.topAnchor.constraint(equalTo: card.topAnchor),
            row.bottomAnchor.constraint(equalTo: card.bottomAnchor)
        ])
        return card
    }

    private func statBlock(value: String, title: String, action: Selector?) -> UIControl {
        let control = UIControl()
        if let action { control.addTarget(self, action: action, for: .touchUpInside) }
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(stack)
        let valueLabel: UILabel
        if title == "Followers" {
            followersValue.text = value
            followersValue.font = PonllyFonts.display(size: 16)
            followersValue.textColor = .white
            valueLabel = followersValue
        } else {
            valueLabel = label(value, size: 16, color: .white, weight: .black)
        }
        let titleLabel = label(title, size: 11, color: PonllyPalette.muted, weight: .medium)
        [valueLabel, titleLabel].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: control.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: control.centerYAnchor)
        ])
        return control
    }

    private func actionRow() -> UIStackView {
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 14
        row.distribution = .fillEqually
        followButton.backgroundColor = PonllyPalette.pink
        followButton.layer.cornerRadius = 22
        followButton.setTitleColor(.white, for: .normal)
        followButton.titleLabel?.font = PonllyFonts.display(size: 12)
        followButton.addTarget(self, action: #selector(followTapped), for: .touchUpInside)
        let message = UIButton(type: .system)
        message.setTitle("Message", for: .normal)
        message.setTitleColor(PonllyPalette.cyan, for: .normal)
        message.titleLabel?.font = PonllyFonts.display(size: 12)
        message.layer.cornerRadius = 22
        message.layer.borderWidth = 1.4
        message.layer.borderColor = PonllyPalette.cyan.cgColor
        message.addTarget(self, action: #selector(messageTapped), for: .touchUpInside)
        [followButton, message].forEach {
            $0.heightAnchor.constraint(equalToConstant: 58).isActive = true
            row.addArrangedSubview($0)
        }
        return row
    }

    private func profileTabs() -> UIStackView {
        let row = UIStackView()
        row.axis = .horizontal
        row.distribution = .fillEqually
        row.spacing = 8
        profileTabButtons = ProfileTab.allCases.map { tab in
            let button = UIButton(type: .system)
            button.tag = tab.rawValue
            button.setTitle(tab.title, for: .normal)
            button.titleLabel?.font = PonllyFonts.display(size: 11)
            button.layer.cornerRadius = 16
            button.layer.borderWidth = 1
            button.addTarget(self, action: #selector(profileTabTapped(_:)), for: .touchUpInside)
            button.heightAnchor.constraint(equalToConstant: 36).isActive = true
            row.addArrangedSubview(button)
            return button
        }
        return row
    }

    private func refreshProfileTabs() {
        profileTabButtons.forEach { button in
            let isSelected = button.tag == selectedProfileTab.rawValue
            button.backgroundColor = isSelected ? PonllyPalette.pink : PonllyPalette.panel.withAlphaComponent(0.72)
            button.setTitleColor(isSelected ? .white : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (isSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func reloadProfileTabContent() {
        tabContentStack.arrangedSubviews.forEach {
            tabContentStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        switch selectedProfileTab {
        case .artwork:
            tabContentStack.addArrangedSubview(artworkGrid())
        case .videos:
            tabContentStack.addArrangedSubview(videoList())
        case .pkBattles:
            tabContentStack.addArrangedSubview(pkBattleList())
        case .favorites:
            tabContentStack.addArrangedSubview(favoriteGrid())
        }
    }

    private func artworkGrid() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let artworks = Array(PonllyDataCenter.profileArtworks(for: user.id).prefix(2))
        guard !artworks.isEmpty else {
            outer.addArrangedSubview(emptyProfilePanel(title: "No artwork yet", subtitle: "Published pieces from this artist will appear here."))
            return outer
        }
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 10
        row.distribution = .fillEqually
        artworks.forEach { artwork in
            let art = PbruCiuClearCoatView(artwork: artwork)
            art.layer.borderColor = UIColor.white.withAlphaComponent(0.18).cgColor
            art.heightAnchor.constraint(equalTo: art.widthAnchor, multiplier: 0.92).isActive = true
            row.addArrangedSubview(art)
        }
        if artworks.count == 1 {
            row.addArrangedSubview(UIView())
        }
        outer.addArrangedSubview(row)
        return outer
    }

    private func videoList() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 12
        let videos = PonllyDataCenter.profileVideos(for: user.id)
        let artworks = PonllyDataCenter.profileArtworks(for: user.id)
        if videos.isEmpty {
            for index in 0..<min(3, artworks.count) {
                outer.addArrangedSubview(profileMediaCard(
                    artwork: artworks[index],
                    title: ["Wall prep process", "Cap pressure study", "Color pass breakdown"][index],
                    subtitle: "\(user.name) keeps the process focused on \(artworks[index].style.lowercased()) control.",
                    meta: "\(6 + index * 3) reactions  •  \(2 + index) notes",
                    accent: PonllyPalette.cyan
                ))
            }
        } else {
            for (index, item) in videos.enumerated() {
                outer.addArrangedSubview(profileMediaCard(
                    artwork: artworks[index % artworks.count],
                    title: item.title,
                    subtitle: item.details,
                    meta: "\(item.reactionCount) reactions  •  \(item.commentCount) notes",
                    accent: PonllyPalette.cyan
                ))
            }
        }
        return outer
    }

    private func pkBattleList() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 12
        let battles = PonllyDataCenter.battleRecords(for: user.id)
        if battles.isEmpty {
            outer.addArrangedSubview(emptyProfilePanel(title: "No PK battle records yet", subtitle: "Fresh challenges from this artist will appear here."))
            return outer
        }
        for battle in battles {
            let art = battle.creatorAId == user.id ? battle.artworkA : (battle.artworkB ?? battle.artworkA)
            let total = max(battle.votesA + battle.votesB, 1)
            let statusText = battle.status == .hot ? "\(total) votes  •  \(battle.deadlineText)" : "Waiting  •  \(battle.deadlineText)"
            let card = profileMediaCard(
                artwork: art,
                title: battle.title,
                subtitle: battle.theme,
                meta: statusText,
                accent: battle.status == .hot ? PonllyPalette.pink : PonllyPalette.cyan
            )
            let tap = UITapGestureRecognizer(target: self, action: #selector(pkBattleCardTapped(_:)))
            card.addGestureRecognizer(tap)
            card.isUserInteractionEnabled = true
            card.accessibilityIdentifier = battle.id
            outer.addArrangedSubview(card)
        }
        return outer
    }

    private func favoriteGrid() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let artworks = Array(PonllyDataCenter.profileArtworks(for: user.id).suffix(2))
        guard !artworks.isEmpty else {
            outer.addArrangedSubview(emptyProfilePanel(title: "No favorites yet", subtitle: "Saved wall inspiration from this artist will appear here."))
            return outer
        }
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 10
        row.distribution = .fillEqually
        artworks.forEach { artwork in
            let art = PbruCiuClearCoatView(artwork: artwork)
            art.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.45).cgColor
            art.heightAnchor.constraint(equalTo: art.widthAnchor, multiplier: 0.76).isActive = true
            row.addArrangedSubview(art)
        }
        if artworks.count == 1 {
            row.addArrangedSubview(UIView())
        }
        outer.addArrangedSubview(row)
        return outer
    }

    private func profileMediaCard(artwork: PonllyArtwork, title: String, subtitle: String, meta: String, accent: UIColor) -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor

        let art = PbruCiuClearCoatView(artwork: artwork)
        art.layer.borderColor = accent.withAlphaComponent(0.45).cgColor
        card.addSubview(art)

        let textStack = UIStackView()
        textStack.axis = .vertical
        textStack.spacing = 7
        textStack.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(textStack)

        let titleLabel = label(title, size: 14, color: .white, weight: .black)
        titleLabel.numberOfLines = 2
        let subtitleLabel = label(subtitle, size: 12, color: PonllyPalette.muted, weight: .regular)
        subtitleLabel.numberOfLines = 2
        let metaLabel = label(meta, size: 11, color: accent, weight: .bold)
        metaLabel.numberOfLines = 1
        [titleLabel, subtitleLabel, metaLabel].forEach(textStack.addArrangedSubview)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(greaterThanOrEqualToConstant: 122),
            art.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 12),
            art.topAnchor.constraint(equalTo: card.topAnchor, constant: 12),
            art.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -12),
            art.widthAnchor.constraint(equalTo: card.widthAnchor, multiplier: 0.34),
            textStack.leadingAnchor.constraint(equalTo: art.trailingAnchor, constant: 14),
            textStack.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -14),
            textStack.centerYAnchor.constraint(equalTo: card.centerYAnchor)
        ])
        return card
    }

    private func emptyProfilePanel(title: String, subtitle: String) -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 10
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        panel.layer.cornerRadius = 18
        panel.layer.borderWidth = 1
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layoutMargins = UIEdgeInsets(top: 26, left: 18, bottom: 26, right: 18)
        panel.isLayoutMarginsRelativeArrangement = true
        let icon = UIImageView(image: UIImage(systemName: "sparkles"))
        icon.tintColor = PonllyPalette.cyan
        icon.widthAnchor.constraint(equalToConstant: 28).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 28).isActive = true
        let titleLabel = label(title, size: 15, color: .white, weight: .black)
        titleLabel.textAlignment = .center
        let subtitleLabel = label(subtitle, size: 12, color: PonllyPalette.muted, weight: .regular)
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        [icon, titleLabel, subtitleLabel].forEach(panel.addArrangedSubview)
        return panel
    }

    private func refreshRelationshipUI() {
        if PonllyDataCenter.isBlocked(user.id) {
            followButton.setTitle("Blocked", for: .normal)
            followButton.alpha = 0.5
            followButton.isEnabled = true
            let stats = PonllyDataCenter.profileStats(for: user.id)
            followersValue.text = "\(stats.followerCount)"
            return
        }
        let following = PonllyDataCenter.isFollowing(user.id)
        followButton.setTitle(following ? "Following" : "Follow", for: .normal)
        followButton.alpha = following ? 0.72 : 1
        let stats = PonllyDataCenter.profileStats(for: user.id)
        followersValue.text = "\(stats.followerCount + (following ? 1 : 0))"
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func moreTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let menu = PaerosolGritMenuViewController(user: self.user)
            menu.onReport = { [weak self] in
                guard let self else { return }
                let report = PonllycolorFadeController(user: self.user)
                report.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(report, animated: true)
            }
            menu.onBlock = { [weak self] in
                self?.presentBlockConfirmation()
            }
            menu.modalPresentationStyle = .overFullScreen
            self.present(menu, animated: false)
        }
    }

    @objc private func profileTabTapped(_ sender: UIButton) {
        guard let tab = ProfileTab(rawValue: sender.tag), tab != selectedProfileTab else { return }
        selectedProfileTab = tab
        refreshProfileTabs()
        reloadProfileTabContent()
    }

    @objc private func pkBattleCardTapped(_ gesture: UITapGestureRecognizer) {
        guard let id = gesture.view?.accessibilityIdentifier,
              let battle = PonllyDataCenter.battles.first(where: { $0.id == id }) else { return }
        let detail = PbruCiuStencilLabController(battle: battle)
        detail.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(detail, animated: true)
    }

    @objc private func followTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            guard !PonllyDataCenter.isBlocked(self.user.id) else {
                self.ponllyShowThemeAlert(
                    title: "Action Unavailable",
                    message: "This artist is currently blocked. Manage your blocked list before reconnecting.",
                    actionTitle: "Got It",
                    style: .failure
                )
                return
            }
            let following = PonllyDataCenter.toggleFollow(self.user.id)
            self.refreshRelationshipUI()
            self.ponllyShowToast(following ? "Artist followed" : "Artist unfollowed")
        }
    }

    @objc private func messageTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            guard !PonllyDataCenter.isBlocked(self.user.id) else {
                self.ponllyShowThemeAlert(
                    title: "Cannot Send Message",
                    message: "Messaging is unavailable while this artist is blocked.",
                    actionTitle: "Got It",
                    style: .failure
                )
                return
            }
            guard PonllyDataCenter.isMutual(self.user.id) else {
                self.ponllyShowThemeAlert(
                    title: "Cannot Send Message",
                    message: "You need to follow each other before starting a direct conversation.",
                    actionTitle: "Got It",
                    style: .failure
                )
                return
            }
            let chat = NckinkSkinnyCapController(user: self.user, thread: PonllyDataCenter.thread(for: self.user.id))
            chat.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(chat, animated: true)
        }
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

    private func presentBlockConfirmation() {
        let confirm = PaerErstHighlightStrokeController(user: user)
        confirm.onConfirm = { [weak self] in
            guard let self else { return }
            PonllyDataCenter.blockUser(self.user.id)
            self.refreshRelationshipUI()
            self.ponllyShowToast("Artist blocked")
        }
        confirm.modalPresentationStyle = .overFullScreen
        present(confirm, animated: false)
    }
}
