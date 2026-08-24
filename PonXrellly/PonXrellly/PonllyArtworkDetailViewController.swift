import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyArtworkDetailViewController: UIViewController {
    private let artwork: PonllyArtwork
    private let owner: PonllyUser

    init(artwork: PonllyArtwork, owner: PonllyUser) {
        self.artwork = artwork
        self.owner = owner
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 11/255, green: 14/255, blue: 19/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        let scrollView = UIScrollView()
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 18
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let header = headerView()
        let hero = PonllyArtworkView(artwork: artwork)
        hero.layer.cornerRadius = 24
        hero.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.65).cgColor
        stack.addArrangedSubview(header)
        stack.addArrangedSubview(hero)
        stack.addArrangedSubview(infoCard())
        stack.addArrangedSubview(detailCard())

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 18),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -18),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 22),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34),
            header.heightAnchor.constraint(equalToConstant: 86),
            hero.heightAnchor.constraint(equalTo: hero.widthAnchor, multiplier: 0.88)
        ])
    }

    private func headerView() -> UIView {
        let header = UIView()
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
        title.text = "Artwork"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -8),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            title.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor)
        ])
        return header
    }

    private func infoCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor

        let avatar = PonllyAvatarView(user: owner, size: 46)
        card.addSubview(avatar)
        let title = UILabel()
        title.text = artwork.title
        title.textColor = .white
        title.font = PonllyFonts.display(size: 18)
        title.numberOfLines = 2
        title.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(title)
        let meta = UILabel()
        meta.text = "\(artwork.style)  •  \(PonllyDataCenter.noteCount(for: artwork)) notes"
        meta.textColor = PonllyPalette.cyan
        meta.font = PonllyFonts.body(size: 12, weight: .bold)
        meta.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(meta)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(greaterThanOrEqualToConstant: 92),
            avatar.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            avatar.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            title.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 14),
            title.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            title.topAnchor.constraint(equalTo: card.topAnchor, constant: 20),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            meta.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            meta.bottomAnchor.constraint(lessThanOrEqualTo: card.bottomAnchor, constant: -18)
        ])
        return card
    }

    private func detailCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(stack)

        let heading = UILabel()
        heading.text = "Wall Notes"
        heading.textColor = .white
        heading.font = PonllyFonts.display(size: 15)
        let body = UILabel()
        body.text = "A finished street-art piece from \(owner.name), built around \(artwork.style.lowercased()) rhythm, wall texture, and clean visual presence."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 13, weight: .medium)
        body.numberOfLines = 0
        [heading, body].forEach(stack.addArrangedSubview)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 18),
            stack.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -18),
            stack.topAnchor.constraint(equalTo: card.topAnchor, constant: 18),
            stack.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -18)
        ])
        return card
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
