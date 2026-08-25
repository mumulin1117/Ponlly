import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyWaitingBattleCardView: UIControl {
    var paintQuest: (() -> Void)?
    var zMotion: ((PonllyaerErstTwoToneFillr) -> Void)?
    var styleNoise: (() -> Void)?
    private let ponllBattleSignal: PonllyBattle

    init(fencePiece ponllBattleSignal: PonllyBattle) {
        self.ponllBattleSignal = ponllBattleSignal
        super.init(frame: .zero)
        bruCiustyleArc()
        addTarget(self, action: #selector(flckinkcurvedLetter), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func bruCiustyleArc() {
        backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        layer.cornerRadius = 24
        layer.borderWidth = 1.2
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        let aerErstStackPath = UIStackView()
        aerErstStackPath.axis = .vertical
        aerErstStackPath.spacing = 18
        aerErstStackPath.translatesAutoresizingMaskIntoConstraints = false
        addSubview(aerErstStackPath)

        let ponllArtworkPanel = PbruCiuClearCoatView(ponllPaintTrace: ponllBattleSignal.neonDrip)
        ponllArtworkPanel.layer.cornerRadius = 14
        ponllArtworkPanel.clipsToBounds = true
        ponllArtworkPanel.heightAnchor.constraint(equalToConstant: 210).isActive = true

        let bruCiuThemeLabel = ponllwideLetter(ponllBattleSignal.chromeFill.uppercased(), softLetter: 14, sharpLetter: PonllyPalette.cyan, blockyLetter: .black)
        bruCiuThemeLabel.font = PonllyFonts.graffitiForge(aerosolForge: 14)

        let flckinkTitleRow = UIStackView()
        flckinkTitleRow.axis = .horizontal
        flckinkTitleRow.alignment = .center
        flckinkTitleRow.distribution = .equalSpacing
        let aerErstTitleLabel = ponllwideLetter(ponllBattleSignal.nozzleCraft, softLetter: 14, sharpLetter: .white, blockyLetter: .black)
        aerErstTitleLabel.numberOfLines = 1
        aerErstTitleLabel.adjustsFontSizeToFitWidth = true
        aerErstTitleLabel.minimumScaleFactor = 0.82
        let ponllTimeLabel = ponllwideLetter("◷ \(ponllBattleSignal.sketchRush) remaining", softLetter: 12, sharpLetter: PonllyPalette.pink, blockyLetter: .bold)
        ponllTimeLabel.textAlignment = .right
        flckinkTitleRow.addArrangedSubview(aerErstTitleLabel)
        flckinkTitleRow.addArrangedSubview(ponllTimeLabel)

        let bruCiuArtistButton = UIControl()
        bruCiuArtistButton.addTarget(self, action: #selector(aerErstArtistbrokenLetter), for: .touchUpInside)
        let flckinkArtistRow = UIStackView()
        flckinkArtistRow.axis = .horizontal
        flckinkArtistRow.alignment = .center
        flckinkArtistRow.spacing = 14
        flckinkArtistRow.isUserInteractionEnabled = false
        flckinkArtistRow.translatesAutoresizingMaskIntoConstraints = false
        bruCiuArtistButton.addSubview(flckinkArtistRow)
        let aerErstUserMark = PonllyponllTornEdge.flckinkChippedPaint(ponllBattleSignal.paintMist)
        flckinkArtistRow.addArrangedSubview(ErErstPaintLabView(user: aerErstUserMark, size: 44))
        flckinkArtistRow.addArrangedSubview(ponllwideLetter(aerErstUserMark.aerosolDream, softLetter: 13, sharpLetter: .white, blockyLetter: .semibold))
        NSLayoutConstraint.activate([
            flckinkArtistRow.leadingAnchor.constraint(equalTo: bruCiuArtistButton.leadingAnchor),
            flckinkArtistRow.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuArtistButton.trailingAnchor),
            flckinkArtistRow.topAnchor.constraint(equalTo: bruCiuArtistButton.topAnchor),
            flckinkArtistRow.bottomAnchor.constraint(equalTo: bruCiuArtistButton.bottomAnchor),
            bruCiuArtistButton.heightAnchor.constraint(equalToConstant: 56),
            bruCiuArtistButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 132)
        ])

        let ponllrooftopPieceButton = PonllyNeonButton("Join Challenge")
        ponllrooftopPieceButton.addTarget(self, action: #selector(bruCiustackedLetter), for: .touchUpInside)

        [ponllArtworkPanel, bruCiuThemeLabel, flckinkTitleRow, bruCiuArtistButton, ponllrooftopPieceButton].forEach(aerErstStackPath.addArrangedSubview)
        [ponllArtworkPanel, bruCiuThemeLabel, flckinkTitleRow].forEach(flckinkAttachangularLetter)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(greaterThanOrEqualToConstant: 430),
            aerErstStackPath.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 26),
            aerErstStackPath.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -26),
            aerErstStackPath.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            aerErstStackPath.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
            ponllrooftopPieceButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func ponllwideLetter(_ bruCiuText: String, softLetter flckinkSize: CGFloat, sharpLetter aerErstColor: UIColor, blockyLetter ponllWeight: UIFont.Weight) -> UILabel {
        let bruCiuLabel = UILabel()
        bruCiuLabel.text = bruCiuText
        bruCiuLabel.font = ponllWeight == .black ? PonllyFonts.muralForgepon(neonLab: flckinkSize) : PonllyFonts.utilityBox(blankFacade: flckinkSize, aerosolMuse: ponllWeight)
        bruCiuLabel.textColor = aerErstColor
        return bruCiuLabel
    }

    private func flckinkAttachangularLetter(compactLetter aerErstView: UIView) {
        aerErstView.isUserInteractionEnabled = true
        let tallLetter = UITapGestureRecognizer(target: self, action: #selector(flckinkcurvedLetter))
        tallLetter.cancelsTouchesInView = true
        aerErstView.addGestureRecognizer(tallLetter)
    }

    @objc private func flckinkcurvedLetter() {
        paintQuest?()
    }

    @objc private func aerErstArtistbrokenLetter() {
        zMotion?(PonllyponllTornEdge.flckinkChippedPaint(ponllBattleSignal.paintMist))
    }

    @objc private func bruCiustackedLetter() {
        styleNoise?()
    }
}
