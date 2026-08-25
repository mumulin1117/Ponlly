import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllytwoToneFillRow: UIControl {
    let grimePiece: String
    private let ponllwidePieceTitle = UILabel()
    private let bruCiuReasonRing = UIView()
    private let flckinkReasonDot = UIView()

    var ishaloPieceReason = false {
        didSet { aerErstsoftPiece() }
    }

    init(fadePiece ponllReasonValue: String) {
        self.grimePiece = ponllReasonValue
        super.init(frame: .zero)
        bruCiucompactPiece()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func bruCiucompactPiece() {
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 14
        layer.borderWidth = 1
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 58).isActive = true
        ponllwidePieceTitle.text = grimePiece
        ponllwidePieceTitle.font = PonllyFonts.utilityBox(blankFacade: 15, aerosolMuse: .semibold)
        ponllwidePieceTitle.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllwidePieceTitle)
        bruCiuReasonRing.layer.cornerRadius = 13
        bruCiuReasonRing.layer.borderWidth = 2
        bruCiuReasonRing.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bruCiuReasonRing)
        flckinkReasonDot.backgroundColor = PonllyPalette.pink
        flckinkReasonDot.layer.cornerRadius = 7
        flckinkReasonDot.translatesAutoresizingMaskIntoConstraints = false
        bruCiuReasonRing.addSubview(flckinkReasonDot)
        NSLayoutConstraint.activate([
            ponllwidePieceTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            ponllwidePieceTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            ponllwidePieceTitle.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuReasonRing.leadingAnchor, constant: -12),
            bruCiuReasonRing.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            bruCiuReasonRing.centerYAnchor.constraint(equalTo: centerYAnchor),
            bruCiuReasonRing.widthAnchor.constraint(equalToConstant: 26),
            bruCiuReasonRing.heightAnchor.constraint(equalToConstant: 26),
            flckinkReasonDot.centerXAnchor.constraint(equalTo: bruCiuReasonRing.centerXAnchor),
            flckinkReasonDot.centerYAnchor.constraint(equalTo: bruCiuReasonRing.centerYAnchor),
            flckinkReasonDot.widthAnchor.constraint(equalToConstant: 14),
            flckinkReasonDot.heightAnchor.constraint(equalToConstant: 14)
        ])
        aerErstsoftPiece()
    }

    private func aerErstsoftPiece() {
        layer.borderColor = (ishaloPieceReason ? PonllyPalette.pink : PonllyPalette.line).cgColor
        ponllwidePieceTitle.textColor = ishaloPieceReason ? .white : PonllyPalette.muted
        bruCiuReasonRing.layer.borderColor = (ishaloPieceReason ? PonllyPalette.pink : PonllyPalette.muted).cgColor
        flckinkReasonDot.isHidden = !ishaloPieceReason
    }
}
