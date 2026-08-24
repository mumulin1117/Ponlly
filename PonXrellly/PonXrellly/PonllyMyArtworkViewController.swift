import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyMyArtworkViewController: UIViewController {
    private enum StashTab: Int, CaseIterable {
        case artwork
        case videos
        case pkBattles

        var title: String {
            switch self {
            case .artwork: return "Artwork"
            case .videos: return "Video"
            case .pkBattles: return "PK Battle"
            }
        }
    }

    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let contentStack = UIStackView()
    private let summaryMetaLabel = UILabel()
    private var selectedTab: StashTab = .artwork
    private var tabButtons: [UIButton] = []
    private var currentUser: PonllyUser { PonllyDataCenter.currentUser() }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setup()
        reloadTabs()
        reloadContent()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
        updateSummary()
        reloadTabs()
        reloadContent()
    }

    private func setup() {
        let header = simpleHeader(title: "My Artwork")
        view.addSubview(header)
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let summary = summaryCard()
        let tabs = tabRow()
        contentStack.axis = .vertical
        contentStack.spacing = 12
        [summary, tabs, contentStack].forEach(stack.addArrangedSubview)

        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 118),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -16),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 22),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -32)
        ])
    }

    private func simpleHeader(title: String) -> UIView {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
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
        let label = UILabel()
        label.text = title
        label.textColor = .white
        label.font = PonllyFonts.display(size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(label)
        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -12),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            label.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: back.centerYAnchor)
        ])
        return header
    }

    private func summaryCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor

        let avatar = PonllyAvatarView(user: currentUser, size: 54)
        card.addSubview(avatar)
        let title = UILabel()
        title.text = "@\(currentUser.name.lowercased())"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(title)
        summaryMetaLabel.textColor = PonllyPalette.muted
        summaryMetaLabel.font = PonllyFonts.body(size: 12, weight: .medium)
        summaryMetaLabel.adjustsFontSizeToFitWidth = true
        summaryMetaLabel.minimumScaleFactor = 0.78
        summaryMetaLabel.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(summaryMetaLabel)
        updateSummary()

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 92),
            avatar.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            avatar.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            title.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 14),
            title.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            title.topAnchor.constraint(equalTo: card.topAnchor, constant: 24),
            summaryMetaLabel.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            summaryMetaLabel.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            summaryMetaLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 7)
        ])
        return card
    }

    private func updateSummary() {
        let artworkCount = PonllyDataCenter.profileArtworks(for: currentUser.id).count
        let videoCount = PonllyDataCenter.profileVideos(for: currentUser.id).count
        let battleCount = PonllyDataCenter.battleRecords(for: currentUser.id).count
        summaryMetaLabel.text = "\(artworkCount) pieces  •  \(videoCount) videos  •  \(battleCount) PK battles"
    }

    private func tabRow() -> UIStackView {
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 8
        row.distribution = .fillEqually
        tabButtons = StashTab.allCases.map { tab in
            let button = UIButton(type: .system)
            button.tag = tab.rawValue
            button.setTitle(tab.title, for: .normal)
            button.titleLabel?.font = PonllyFonts.display(size: 11)
            button.layer.cornerRadius = 16
            button.layer.borderWidth = 1
            button.addTarget(self, action: #selector(tabTapped(_:)), for: .touchUpInside)
            button.heightAnchor.constraint(equalToConstant: 38).isActive = true
            row.addArrangedSubview(button)
            return button
        }
        return row
    }

    private func reloadTabs() {
        tabButtons.forEach { button in
            if let tab = StashTab(rawValue: button.tag) {
                button.setTitle("\(tab.title) \(count(for: tab))", for: .normal)
            }
            let selected = button.tag == selectedTab.rawValue
            button.backgroundColor = selected ? PonllyPalette.pink : PonllyPalette.panel.withAlphaComponent(0.72)
            button.setTitleColor(selected ? .white : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func count(for tab: StashTab) -> Int {
        switch tab {
        case .artwork:
            return PonllyDataCenter.profileArtworks(for: currentUser.id).count
        case .videos:
            return PonllyDataCenter.profileVideos(for: currentUser.id).count
        case .pkBattles:
            return PonllyDataCenter.battleRecords(for: currentUser.id).count
        }
    }

    private func reloadContent() {
        contentStack.arrangedSubviews.forEach {
            contentStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        switch selectedTab {
        case .artwork:
            contentStack.addArrangedSubview(artworkGrid())
        case .videos:
            contentStack.addArrangedSubview(videoList())
        case .pkBattles:
            contentStack.addArrangedSubview(pkBattleList())
        }
    }

    private func artworkGrid() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let artworks = PonllyDataCenter.profileArtworks(for: currentUser.id)
        guard !artworks.isEmpty else {
            outer.addArrangedSubview(emptyPanel(title: "No Artwork Yet", subtitle: "Your published wall pieces will appear here."))
            return outer
        }
        for index in stride(from: 0, to: artworks.count, by: 2) {
            let row = UIStackView()
            row.axis = .horizontal
            row.spacing = 10
            row.distribution = .fillEqually
            row.addArrangedSubview(artworkTile(artworks[index]))
            if index + 1 < artworks.count {
                row.addArrangedSubview(artworkTile(artworks[index + 1]))
            } else {
                row.addArrangedSubview(UIView())
            }
            outer.addArrangedSubview(row)
        }
        return outer
    }

    private func artworkTile(_ artwork: PonllyArtwork) -> UIView {
        let card = UIControl()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        card.layer.cornerRadius = 16
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        card.clipsToBounds = true
        card.accessibilityIdentifier = artwork.id
        card.addAction(UIAction { [weak self] _ in
            self?.openArtworkDetail(artwork)
        }, for: .touchUpInside)
        let image = PonllyArtworkView(artwork: artwork)
        image.isUserInteractionEnabled = false
        image.layer.cornerRadius = 14
        image.layer.borderWidth = 0
        card.addSubview(image)
        let title = UILabel()
        title.text = artwork.title
        title.textColor = .white
        title.font = PonllyFonts.display(size: 12)
        title.numberOfLines = 1
        title.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(title)
        let meta = UILabel()
        if let battle = PonllyDataCenter.battle(containing: artwork) {
            meta.text = "\(artwork.style)  •  \(battle.status == .hot ? "PK Live" : "Waiting")  •  \(PonllyDataCenter.noteCount(for: artwork)) notes"
        } else {
            meta.text = "\(artwork.style)  •  Published Piece  •  \(PonllyDataCenter.noteCount(for: artwork)) notes"
        }
        meta.textColor = PonllyPalette.muted
        meta.font = PonllyFonts.body(size: 11, weight: .medium)
        meta.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(meta)
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 224),
            image.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 10),
            image.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -10),
            image.topAnchor.constraint(equalTo: card.topAnchor, constant: 10),
            image.heightAnchor.constraint(equalTo: image.widthAnchor),
            title.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 12),
            title.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -12),
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            meta.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 6)
        ])
        return card
    }

    private func openArtworkDetail(_ artwork: PonllyArtwork) {
        guard artwork.ownerId == currentUser.id else {
            ponllyShowNotice("Artwork is unavailable", style: .failure)
            return
        }
        let detail = PonllyArtworkDetailViewController(artwork: artwork, owner: currentUser)
        detail.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(detail, animated: true)
    }

    private func videoList() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 12
        let videos = PonllyDataCenter.profileVideos(for: currentUser.id)
        let artworks = PonllyDataCenter.profileArtworks(for: currentUser.id)
        guard !videos.isEmpty else {
            outer.addArrangedSubview(emptyPanel(title: "No Videos Yet", subtitle: "Your published process clips will appear here."))
            return outer
        }
        videos.enumerated().forEach { index, video in
            if let artwork = artworkForVideo(video, fallbackIndex: index, artworks: artworks) {
                outer.addArrangedSubview(mediaRow(
                    artwork: artwork,
                    title: video.title,
                    subtitle: video.details,
                    meta: "\(video.reactionCount) reactions  •  \(video.commentCount) notes",
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
        let battles = PonllyDataCenter.battleRecords(for: currentUser.id)
        guard !battles.isEmpty else {
            outer.addArrangedSubview(emptyPanel(title: "No PK Battles Yet", subtitle: "Your created and joined battles will appear here."))
            return outer
        }
        battles.forEach { battle in
            let artwork = battle.creatorAId == currentUser.id ? battle.artworkA : (battle.artworkB ?? battle.artworkA)
            let row = mediaRow(
                artwork: artwork,
                title: battle.title,
                subtitle: battle.theme,
                meta: battle.status == .hot ? "\(battle.votesA + battle.votesB) votes  •  \(battle.deadlineText)" : "Waiting  •  \(battle.deadlineText)",
                accent: battle.status == .hot ? PonllyPalette.pink : PonllyPalette.cyan
            )
            let tap = UITapGestureRecognizer(target: self, action: #selector(battleTapped(_:)))
            row.accessibilityIdentifier = battle.id
            row.isUserInteractionEnabled = true
            row.addGestureRecognizer(tap)
            outer.addArrangedSubview(row)
        }
        return outer
    }

    private func mediaRow(artwork: PonllyArtwork, title: String, subtitle: String, meta: String, accent: UIColor) -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let image = PonllyArtworkView(artwork: artwork)
        image.layer.borderColor = accent.withAlphaComponent(0.45).cgColor
        card.addSubview(image)
        let text = UIStackView()
        text.axis = .vertical
        text.spacing = 7
        text.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(text)
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = PonllyFonts.display(size: 14)
        titleLabel.numberOfLines = 2
        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = PonllyPalette.muted
        subtitleLabel.font = PonllyFonts.body(size: 12, weight: .regular)
        subtitleLabel.numberOfLines = 2
        let metaLabel = UILabel()
        metaLabel.text = meta
        metaLabel.textColor = accent
        metaLabel.font = PonllyFonts.body(size: 11, weight: .bold)
        [titleLabel, subtitleLabel, metaLabel].forEach(text.addArrangedSubview)
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(greaterThanOrEqualToConstant: 122),
            image.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 12),
            image.topAnchor.constraint(equalTo: card.topAnchor, constant: 12),
            image.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -12),
            image.widthAnchor.constraint(equalTo: card.widthAnchor, multiplier: 0.34),
            text.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 14),
            text.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -14),
            text.centerYAnchor.constraint(equalTo: card.centerYAnchor)
        ])
        return card
    }

    private func artworkForVideo(_ video: PonllyVideo, fallbackIndex: Int, artworks: [PonllyArtwork]) -> PonllyArtwork? {
        let titleText = video.title.lowercased()
        let detailText = video.details.lowercased()
        if let matched = artworks.first(where: { artwork in
            let firstTitleWord = artwork.title.lowercased().split(separator: " ").first.map(String.init) ?? ""
            return titleText.contains(artwork.style.lowercased()) || (!firstTitleWord.isEmpty && detailText.contains(firstTitleWord))
        }) {
            return matched
        }
        guard !artworks.isEmpty else { return nil }
        return artworks[fallbackIndex % artworks.count]
    }

    private func emptyPanel(title: String, subtitle: String) -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 12
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        panel.layer.cornerRadius = 18
        panel.layer.borderWidth = 1
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layoutMargins = UIEdgeInsets(top: 44, left: 18, bottom: 44, right: 18)
        panel.isLayoutMarginsRelativeArrangement = true
        let icon = UIImageView(image: UIImage(systemName: "paintpalette"))
        icon.tintColor = PonllyPalette.cyan
        icon.widthAnchor.constraint(equalToConstant: 34).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 34).isActive = true
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = PonllyFonts.display(size: 18)
        let body = UILabel()
        body.text = subtitle
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 13, weight: .regular)
        body.textAlignment = .center
        body.numberOfLines = 0
        [icon, titleLabel, body].forEach(panel.addArrangedSubview)
        return panel
    }

    @objc private func tabTapped(_ sender: UIButton) {
        guard let tab = StashTab(rawValue: sender.tag), tab != selectedTab else { return }
        selectedTab = tab
        updateSummary()
        reloadTabs()
        reloadContent()
    }

    @objc private func battleTapped(_ gesture: UITapGestureRecognizer) {
        guard let id = gesture.view?.accessibilityIdentifier,
              let battle = PonllyDataCenter.battles.first(where: { $0.id == id }) else { return }
        let detail = PonllyBattleDetailViewController(battle: battle)
        detail.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(detail, animated: true)
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
