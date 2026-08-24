import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyBattleCardView: UIControl {
    var onTap: (() -> Void)?
    var onMore: (() -> Void)?
    var onArtist: ((PonllyUser) -> Void)?
    private let battle: PonllyBattle

    init(battle: PonllyBattle) {
        self.battle = battle
        super.init(frame: .zero)
        setup()
        addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        layer.cornerRadius = 18
        layer.borderWidth = 1.3
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        let a = PonllyDataCenter.user(battle.creatorAId)
        let b = PonllyDataCenter.user(battle.creatorBId)

        let content = UIStackView()
        content.axis = .vertical
        content.spacing = 14
        content.translatesAutoresizingMaskIntoConstraints = false
        addSubview(content)

        let top = UIStackView()
        top.axis = .horizontal
        top.alignment = .center
        top.distribution = .equalSpacing

        let leftUser = userRow(a)
        leftUser.addTarget(self, action: #selector(leftArtistTapped), for: .touchUpInside)
        let rightUser = userRow(b)
        rightUser.addTarget(self, action: #selector(rightArtistTapped), for: .touchUpInside)
        let more = UIButton(type: .system)
        more.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        more.tintColor = PonllyPalette.muted
        more.layer.cornerRadius = 20
        more.layer.borderWidth = 1
        more.layer.borderColor = PonllyPalette.line.cgColor
        more.widthAnchor.constraint(equalToConstant: 42).isActive = true
        more.heightAnchor.constraint(equalToConstant: 42).isActive = true
        more.addTarget(self, action: #selector(moreTapped), for: .touchUpInside)
        top.addArrangedSubview(leftUser)
        top.addArrangedSubview(rightUser)
        top.addArrangedSubview(more)

        let artRow = UIView()
        artRow.translatesAutoresizingMaskIntoConstraints = false
        let artA = PonllyArtworkView(artwork: battle.artworkA)
        let artB = battle.artworkB.map(PonllyArtworkView.init) ?? PonllyEmptyOpponentView()
        artA.translatesAutoresizingMaskIntoConstraints = false
        artB.translatesAutoresizingMaskIntoConstraints = false
        artRow.addSubview(artA)
        artRow.addSubview(artB)
        let vs = vsBadge()
        artRow.addSubview(vs)

        let theme = label(battle.theme.uppercased(), size: 14, color: PonllyPalette.cyan, weight: .black)
        theme.font = PonllyFonts.themeFont(size: 14)

        let title = UILabel()
        title.text = battle.title
        title.font = PonllyFonts.display(size: 16)
        title.textColor = .white
        title.numberOfLines = 2

        let meta = UIStackView()
        meta.axis = .horizontal
        meta.distribution = .equalSpacing
        let votes = label("\(battle.votesA + battle.votesB) votes", size: 15, color: .white, weight: .bold)
        let comments = label("\(battle.comments.count) comments", size: 15, color: PonllyPalette.muted, weight: .bold)
        meta.addArrangedSubview(votes)
        meta.addArrangedSubview(comments)

        let progress = PonllyVoteProgressView(aVotes: battle.votesA, bVotes: battle.votesB)

        [top, artRow, theme, title, meta, progress].forEach(content.addArrangedSubview)
        [artRow, theme, title, meta, progress].forEach(attachDetailTap)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 380),
            content.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            content.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            content.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            content.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            artRow.heightAnchor.constraint(equalToConstant: 210),
            artA.leadingAnchor.constraint(equalTo: artRow.leadingAnchor),
            artA.topAnchor.constraint(equalTo: artRow.topAnchor),
            artA.bottomAnchor.constraint(equalTo: artRow.bottomAnchor),
            artA.widthAnchor.constraint(equalTo: artRow.widthAnchor, multiplier: 0.49),
            artB.trailingAnchor.constraint(equalTo: artRow.trailingAnchor),
            artB.topAnchor.constraint(equalTo: artRow.topAnchor),
            artB.bottomAnchor.constraint(equalTo: artRow.bottomAnchor),
            artB.widthAnchor.constraint(equalTo: artRow.widthAnchor, multiplier: 0.49),
            vs.centerXAnchor.constraint(equalTo: artRow.centerXAnchor),
            vs.centerYAnchor.constraint(equalTo: artRow.centerYAnchor),
            vs.widthAnchor.constraint(equalToConstant: 70),
            vs.heightAnchor.constraint(equalToConstant: 70),
            progress.heightAnchor.constraint(equalToConstant: 38)
        ])
    }

    private func userRow(_ user: PonllyUser) -> UIControl {
        let control = UIControl()
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .center
        row.spacing = 8
        row.isUserInteractionEnabled = false
        row.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(row)
        row.addArrangedSubview(PonllyAvatarView(user: user, size: 38))
        row.addArrangedSubview(label(user.name, size: 17, color: .white, weight: .bold))
        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 48),
            control.widthAnchor.constraint(greaterThanOrEqualToConstant: 92),
            row.leadingAnchor.constraint(equalTo: control.leadingAnchor),
            row.trailingAnchor.constraint(equalTo: control.trailingAnchor),
            row.topAnchor.constraint(equalTo: control.topAnchor),
            row.bottomAnchor.constraint(equalTo: control.bottomAnchor)
        ])
        return control
    }

    private func attachDetailTap(to view: UIView) {
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tap.cancelsTouchesInView = true
        view.addGestureRecognizer(tap)
    }

    private func label(_ text: String, size: CGFloat, color: UIColor, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = weight == .black ? PonllyFonts.display(size: size) : PonllyFonts.body(size: size, weight: weight)
        label.textColor = color
        return label
    }

    private func vsBadge() -> UIView {
        let imageView = UIImageView(image: UIImage(named: "vs_badge"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }

    @objc private func tapped() {
        onTap?()
    }

    @objc private func moreTapped() {
        onMore?()
    }

    @objc private func leftArtistTapped() {
        onArtist?(PonllyDataCenter.user(battle.creatorAId))
    }

    @objc private func rightArtistTapped() {
        onArtist?(PonllyDataCenter.user(battle.creatorBId))
    }
}
