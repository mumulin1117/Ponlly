import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyWaitingBattleCardView: UIControl {
    var onTap: (() -> Void)?
    var onArtist: ((PonllyUser) -> Void)?
    var onJoin: (() -> Void)?
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
        backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        layer.cornerRadius = 24
        layer.borderWidth = 1.2
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 18
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)

        let artwork = PbruCiuClearCoatView(artwork: battle.artworkA)
        artwork.layer.cornerRadius = 14
        artwork.clipsToBounds = true
        artwork.heightAnchor.constraint(equalToConstant: 210).isActive = true

        let theme = label(battle.theme.uppercased(), size: 14, color: PonllyPalette.cyan, weight: .black)
        theme.font = PonllyFonts.themeFont(size: 14)

        let titleRow = UIStackView()
        titleRow.axis = .horizontal
        titleRow.alignment = .center
        titleRow.distribution = .equalSpacing
        let title = label(battle.title, size: 14, color: .white, weight: .black)
        title.numberOfLines = 1
        title.adjustsFontSizeToFitWidth = true
        title.minimumScaleFactor = 0.82
        let time = label("◷ \(battle.deadlineText) remaining", size: 12, color: PonllyPalette.pink, weight: .bold)
        time.textAlignment = .right
        titleRow.addArrangedSubview(title)
        titleRow.addArrangedSubview(time)

        let artist = UIControl()
        artist.addTarget(self, action: #selector(artistTapped), for: .touchUpInside)
        let artistRow = UIStackView()
        artistRow.axis = .horizontal
        artistRow.alignment = .center
        artistRow.spacing = 14
        artistRow.isUserInteractionEnabled = false
        artistRow.translatesAutoresizingMaskIntoConstraints = false
        artist.addSubview(artistRow)
        let user = PonllyDataCenter.user(battle.creatorAId)
        artistRow.addArrangedSubview(ErErstPaintLabView(user: user, size: 44))
        artistRow.addArrangedSubview(label(user.name, size: 13, color: .white, weight: .semibold))
        NSLayoutConstraint.activate([
            artistRow.leadingAnchor.constraint(equalTo: artist.leadingAnchor),
            artistRow.trailingAnchor.constraint(lessThanOrEqualTo: artist.trailingAnchor),
            artistRow.topAnchor.constraint(equalTo: artist.topAnchor),
            artistRow.bottomAnchor.constraint(equalTo: artist.bottomAnchor),
            artist.heightAnchor.constraint(equalToConstant: 56),
            artist.widthAnchor.constraint(greaterThanOrEqualToConstant: 132)
        ])

        let join = PonllyNeonButton(title: "Join Challenge")
        join.addTarget(self, action: #selector(joinTapped), for: .touchUpInside)

        [artwork, theme, titleRow, artist, join].forEach(stack.addArrangedSubview)
        [artwork, theme, titleRow].forEach(attachDetailTap)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 430),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -26),
            stack.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            join.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func label(_ text: String, size: CGFloat, color: UIColor, weight: UIFont.Weight) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = weight == .black ? PonllyFonts.display(size: size) : PonllyFonts.body(size: size, weight: weight)
        label.textColor = color
        return label
    }

    private func attachDetailTap(to view: UIView) {
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tap.cancelsTouchesInView = true
        view.addGestureRecognizer(tap)
    }

    @objc private func tapped() {
        onTap?()
    }

    @objc private func artistTapped() {
        onArtist?(PonllyDataCenter.user(battle.creatorAId))
    }

    @objc private func joinTapped() {
        onJoin?()
    }
}
