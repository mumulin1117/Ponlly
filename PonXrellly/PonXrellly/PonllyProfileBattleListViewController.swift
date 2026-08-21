import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyProfileBattleListViewController: UIViewController {
    private let user: PonllyUser
    private let scrollView = UIScrollView()
    private let stack = UIStackView()

    init(user: PonllyUser) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
        title = "Works"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
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
        let header = headerView()
        view.addSubview(header)
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
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 18),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -18),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 22),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func reload() {
        stack.arrangedSubviews.forEach {
            stack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let battles = PonllyDataCenter.battleRecords(for: user.id)
        let count = UILabel()
        count.text = "\(battles.count) Battle Works"
        count.textColor = PonllyPalette.muted
        count.font = PonllyFonts.display(size: 14)
        stack.addArrangedSubview(count)
        guard !battles.isEmpty else {
            stack.addArrangedSubview(emptyPanel())
            return
        }
        battles.forEach { stack.addArrangedSubview(battleRow($0)) }
    }

    private func headerView() -> UIView {
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

        let title = UILabel()
        title.text = "Battle Works"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 24)
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -12),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            title.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor)
        ])
        return header
    }

    private func battleRow(_ battle: PonllyBattle) -> UIControl {
        let control = UIControl()
        control.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        control.layer.cornerRadius = 18
        control.layer.borderWidth = 1
        control.layer.borderColor = PonllyPalette.line.cgColor
        control.addAction(UIAction { [weak self] _ in
            let detail = PonllyBattleDetailViewController(battle: battle)
            detail.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(detail, animated: true)
        }, for: .touchUpInside)

        let artwork = battle.creatorAId == user.id ? battle.artworkA : (battle.artworkB ?? battle.artworkA)
        let image = PonllyArtworkView(artwork: artwork)
        image.isUserInteractionEnabled = false
        control.addSubview(image)

        let title = UILabel()
        title.text = battle.title
        title.textColor = .white
        title.font = PonllyFonts.display(size: 14)
        title.numberOfLines = 2
        title.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(title)

        let status = UILabel()
        let totalVotes = battle.votesA + battle.votesB
        status.text = battle.status == .hot ? "\(totalVotes) votes  •  \(battle.deadlineText)" : "Waiting  •  \(battle.deadlineText)"
        status.textColor = battle.status == .hot ? PonllyPalette.pink : PonllyPalette.cyan
        status.font = PonllyFonts.body(size: 12, weight: .bold)
        status.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(status)

        let meta = UILabel()
        meta.text = "\(battle.theme)  •  \(battle.comments.count) notes"
        meta.textColor = PonllyPalette.muted
        meta.font = PonllyFonts.body(size: 12, weight: .medium)
        meta.numberOfLines = 1
        meta.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(meta)

        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 124),
            image.leadingAnchor.constraint(equalTo: control.leadingAnchor, constant: 12),
            image.topAnchor.constraint(equalTo: control.topAnchor, constant: 12),
            image.bottomAnchor.constraint(equalTo: control.bottomAnchor, constant: -12),
            image.widthAnchor.constraint(equalTo: control.widthAnchor, multiplier: 0.34),
            title.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 14),
            title.trailingAnchor.constraint(equalTo: control.trailingAnchor, constant: -14),
            title.topAnchor.constraint(equalTo: control.topAnchor, constant: 22),
            status.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            status.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            status.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            meta.topAnchor.constraint(equalTo: status.bottomAnchor, constant: 8)
        ])
        return control
    }

    private func emptyPanel() -> UIView {
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
        let icon = UIImageView(image: UIImage(systemName: "bolt.horizontal"))
        icon.tintColor = PonllyPalette.cyan
        icon.widthAnchor.constraint(equalToConstant: 36).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 36).isActive = true
        let title = UILabel()
        title.text = "No Battle Works Yet"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 18)
        let body = UILabel()
        body.text = "Your joined and created PK battles will appear here."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 13, weight: .regular)
        body.textAlignment = .center
        body.numberOfLines = 0
        [icon, title, body].forEach(panel.addArrangedSubview)
        return panel
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
