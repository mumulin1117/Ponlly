import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyWaitingBattleCardView: UIControl, UIGestureRecognizerDelegate {
    var paintQuest: (() -> Void)?
    var zMotion: ((PonllyaerErstTwoToneFillr) -> Void)?
    var styleNoise: (() -> Void)?
    var bruCiuMuralForge: (() -> Void)?
    var ponllMuralWall: ((PonllyaerErstSolidMarkerk, PonllyaerErstTwoToneFillr) -> Void)?
    private let ponllBattleSignal: PonllyBattle
    private weak var ponllPaintFlow: UIView?
    private weak var bruCiuPaintFlow: UIView?

    var aerErstPaintFlow: UIView? { ponllPaintFlow }
    var flckinkPaintFlow: UIView? { bruCiuPaintFlow }

    init(fencePiece ponllBattleSignal: PonllyBattle) {
        self.ponllBattleSignal = ponllBattleSignal
        super.init(frame: .zero)
        bruCiustyleArc()
        let ponllPaintMotion = UITapGestureRecognizer(target: self, action: #selector(flckinkcurvedLetter))
        ponllPaintMotion.delegate = self
        ponllPaintMotion.cancelsTouchesInView = false
        addGestureRecognizer(ponllPaintMotion)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func bruCiustyleArc() {
        backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 25/255, alpha: 1)
        layer.cornerRadius = 18
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 37/255, green: 37/255, blue: 48/255, alpha: 1).cgColor
        translatesAutoresizingMaskIntoConstraints = false

        let aerErstStackPath = UIStackView()
        aerErstStackPath.axis = .vertical
        aerErstStackPath.spacing = 14
        aerErstStackPath.translatesAutoresizingMaskIntoConstraints = false
        addSubview(aerErstStackPath)

        let ponllArtworkPanel = PbruCiuClearCoatView(ponllPaintTrace: ponllBattleSignal.neonDrip)
        ponllArtworkPanel.accessibilityIdentifier = ponllBattleSignal.graffitiPulse
        ponllPaintFlow = ponllArtworkPanel
        ponllArtworkPanel.layer.cornerRadius = 14
        ponllArtworkPanel.clipsToBounds = true
        ponllArtworkPanel.heightAnchor.constraint(equalToConstant: 210).isActive = true
        ponllArtworkPanel.ponllMuralCue()
        ponllArtworkPanel.aerErstAerosolBloom()
        ponllArtworkPanel.aerErstMuralCue = { [weak self] in
            self?.ponllWallMap()
        }

        let bruCiuMoreButton = UIButton(type: .system)
        bruCiuMoreButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        bruCiuMoreButton.tintColor = .white
        bruCiuMoreButton.backgroundColor = UIColor.black.withAlphaComponent(0.56)
        bruCiuMoreButton.layer.cornerRadius = 18
        bruCiuMoreButton.layer.borderWidth = 1
        bruCiuMoreButton.layer.borderColor = UIColor.white.withAlphaComponent(0.34).cgColor
        bruCiuMoreButton.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMoreButton.addTarget(self, action: #selector(bruCiuMuralForgeTapped), for: .touchUpInside)
        ponllArtworkPanel.addSubview(bruCiuMoreButton)

        let flckinkTitleRow = UIStackView()
        flckinkTitleRow.axis = .horizontal
        flckinkTitleRow.alignment = .center
        flckinkTitleRow.distribution = .equalSpacing
        let aerErstTitleLabel = ponllwideLetter(ponllBattleSignal.nozzleCraft, softLetter: 14, sharpLetter: .white, blockyLetter: .heavy)
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
        flckinkArtistRow.translatesAutoresizingMaskIntoConstraints = false
        let aerErstUserMark = PonllyponllTornEdge.flckinkChippedPaint(ponllBattleSignal.paintMist)
        let aerErstCutar = ErErstPaintLabView(aerErstUserMark, 36, 2)
        aerErstCutar.accessibilityIdentifier = aerErstUserMark.graffitiPulse
        bruCiuPaintFlow = aerErstCutar
        aerErstCutar.isUserInteractionEnabled = false
        bruCiuArtistButton.addSubview(aerErstCutar)
        let aerErstUserName = ponllwideLetter(aerErstUserMark.aerosolDream, softLetter: 13, sharpLetter: .white, blockyLetter: .semibold)
        flckinkArtistRow.addArrangedSubview(bruCiuArtistButton)
        flckinkArtistRow.addArrangedSubview(aerErstUserName)
        NSLayoutConstraint.activate([
            bruCiuArtistButton.widthAnchor.constraint(equalToConstant: 36),
            bruCiuArtistButton.heightAnchor.constraint(equalToConstant: 36),
            aerErstCutar.leadingAnchor.constraint(equalTo: bruCiuArtistButton.leadingAnchor),
            aerErstCutar.trailingAnchor.constraint(equalTo: bruCiuArtistButton.trailingAnchor),
            aerErstCutar.topAnchor.constraint(equalTo: bruCiuArtistButton.topAnchor),
            aerErstCutar.bottomAnchor.constraint(equalTo: bruCiuArtistButton.bottomAnchor)
        ])

        let ponllrooftopPieceButton = PonllyNeonButton("J3o4i5n6 7C8h9aalblcednegfeg".ponllPaintaerErstHours)
        ponllrooftopPieceButton.addTarget(self, action: #selector(bruCiustackedLetter), for: .touchUpInside)

        [ponllArtworkPanel, flckinkTitleRow, flckinkArtistRow, ponllrooftopPieceButton].forEach(aerErstStackPath.addArrangedSubview)
        aerErstStackPath.setCustomSpacing(18, after: ponllArtworkPanel)
        aerErstStackPath.setCustomSpacing(12, after: flckinkTitleRow)
        aerErstStackPath.setCustomSpacing(18, after: flckinkArtistRow)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 399),
            aerErstStackPath.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            aerErstStackPath.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            aerErstStackPath.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            aerErstStackPath.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            ponllrooftopPieceButton.heightAnchor.constraint(equalToConstant: 52),
            bruCiuMoreButton.topAnchor.constraint(equalTo: ponllArtworkPanel.topAnchor, constant: 10),
            bruCiuMoreButton.trailingAnchor.constraint(equalTo: ponllArtworkPanel.trailingAnchor, constant: -10),
            bruCiuMoreButton.widthAnchor.constraint(equalToConstant: 36),
            bruCiuMoreButton.heightAnchor.constraint(equalToConstant: 36)
        ])
    }

    private func ponllwideLetter(_ bruCiuText: String, softLetter flckinkSize: CGFloat, sharpLetter aerErstColor: UIColor, blockyLetter ponllWeight: UIFont.Weight) -> UILabel {
        let bruCiuLabel = UILabel()
        bruCiuLabel.text = bruCiuText
        bruCiuLabel.font = ponllWeight == .black ? PonllyFonts.muralForgepon(neonLab: flckinkSize) : PonllyFonts.utilityBox(blankFacade: flckinkSize, aerosolMuse: ponllWeight)
        bruCiuLabel.textColor = aerErstColor
        return bruCiuLabel
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

    @objc private func bruCiuMuralForgeTapped() {
        bruCiuMuralForge?()
    }

    @objc private func ponllWallMap() {
        ponllMuralWall?(
            ponllBattleSignal.neonDrip,
            PonllyponllTornEdge.flckinkChippedPaint(ponllBattleSignal.paintMist)
        )
    }

    func gestureRecognizer(_ ponllPaintMotion: UIGestureRecognizer, shouldReceive bruCiuPaintSignal: UITouch) -> Bool {
        var flckinkPaintLayer = bruCiuPaintSignal.view
        while let ponllPaintLayer = flckinkPaintLayer, ponllPaintLayer !== self {
            if ponllPaintLayer is UIControl { return false }
            flckinkPaintLayer = ponllPaintLayer.superview
        }
        return true
    }
}
