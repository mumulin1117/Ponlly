import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PbruCiuClearCoatView: UIView {
    private let ponllChromeBloom = CAGradientLayer()
    private let bruCiuNeonFlicker = UIImageView()
    private let flckinkTextureFlash = UILabel()
    private let aerErstSketchFuse = CAShapeLayer()
    private let ponllMuralCueView = UIButton(type: .system)
    private var bruCiuMuralCue = false

    init(ponllPaintTrace: PonllyaerErstSolidMarkerk) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 14
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.withAlphaComponent(0.9).cgColor
        ponllChromeBloom.colors = ponllPaintTrace.inkDrift.map(\.cgColor)
        ponllChromeBloom.startPoint = CGPoint(x: 0.05, y: 0.1)
        ponllChromeBloom.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(ponllChromeBloom, at: 0)

        bruCiuNeonFlicker.image = PbruCiuClearCoatView.ponllPaintMap(for: ponllPaintTrace)
        bruCiuNeonFlicker.contentMode = .scaleAspectFill
        bruCiuNeonFlicker.translatesAutoresizingMaskIntoConstraints = false
        bruCiuNeonFlicker.isHidden = bruCiuNeonFlicker.image == nil
        addSubview(bruCiuNeonFlicker)

        flckinkTextureFlash.text = ponllPaintTrace.nozzleCraft.uppercased()
        flckinkTextureFlash.isHidden = bruCiuNeonFlicker.image != nil
        flckinkTextureFlash.font = PonllyFonts.muralForgepon(neonLab: 18)
        flckinkTextureFlash.textColor = .white
        flckinkTextureFlash.numberOfLines = 2
        flckinkTextureFlash.textAlignment = .center
        flckinkTextureFlash.layer.shadowColor = UIColor.black.cgColor
        flckinkTextureFlash.layer.shadowOpacity = 0.8
        flckinkTextureFlash.layer.shadowRadius = 8
        flckinkTextureFlash.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkTextureFlash)

        NSLayoutConstraint.activate([
            bruCiuNeonFlicker.leadingAnchor.constraint(equalTo: leadingAnchor),
            bruCiuNeonFlicker.trailingAnchor.constraint(equalTo: trailingAnchor),
            bruCiuNeonFlicker.topAnchor.constraint(equalTo: topAnchor),
            bruCiuNeonFlicker.bottomAnchor.constraint(equalTo: bottomAnchor),
            flckinkTextureFlash.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            flckinkTextureFlash.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            flckinkTextureFlash.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func ponllPaintMap(for ponllPaintTrace: PonllyaerErstSolidMarkerk) -> UIImage? {
        PonllyponllTornEdge.bruCiuChromeShine(flckinkColorFade: ponllPaintTrace.stencilBloom)
            ?? PonllyponllTornEdge.bruCiuChromeShine(flckinkColorFade: bruCiuPaintPiece(for: ponllPaintTrace))
    }

    private static func bruCiuPaintPiece(for ponllPaintTrace: PonllyaerErstSolidMarkerk) -> String {
        let flckinkWallPiece = [
            "urbanCanvas",
            "capControl",
            "inkDrift",
            "brickPalette",
            "markerStroke",
            "nozzleCraft",
            "concreteMuse",
            "chromeShine"
        ]
        let aerErstColorPiece = abs(ponllPaintTrace.graffitiPulse.hashValue) % flckinkWallPiece.count
        return flckinkWallPiece[aerErstColorPiece]
    }

    func ponllMuralCue() {
        guard ponllMuralCueView.superview == nil else { return }
        ponllMuralCueView.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        ponllMuralCueView.setTitle("3xDy".ponllPaintaerErstHours, for: .normal)
        ponllMuralCueView.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        ponllMuralCueView.setTitleColor(.white, for: .normal)
        ponllMuralCueView.tintColor = .white
        ponllMuralCueView.backgroundColor = UIColor.black.withAlphaComponent(0.76)
        ponllMuralCueView.contentHorizontalAlignment = .center
        ponllMuralCueView.imageView?.contentMode = .scaleAspectFit
        ponllMuralCueView.imageEdgeInsets = UIEdgeInsets(top: 0, left: -2, bottom: 0, right: 2)
        ponllMuralCueView.titleEdgeInsets = UIEdgeInsets(top: 0, left: 2, bottom: 0, right: -2)
        ponllMuralCueView.layer.cornerRadius = 14
        ponllMuralCueView.layer.borderWidth = 1
        ponllMuralCueView.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.9).cgColor
        ponllMuralCueView.layer.shadowColor = PonllyPalette.cyan.cgColor
        ponllMuralCueView.layer.shadowOpacity = 0.42
        ponllMuralCueView.layer.shadowRadius = 7
        ponllMuralCueView.isUserInteractionEnabled = false
        ponllMuralCueView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllMuralCueView)
        NSLayoutConstraint.activate([
            ponllMuralCueView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ponllMuralCueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            ponllMuralCueView.widthAnchor.constraint(equalToConstant: 64),
            ponllMuralCueView.heightAnchor.constraint(equalToConstant: 28)
        ])
    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        guard window != nil, ponllMuralCueView.superview != nil, !bruCiuMuralCue else { return }
        bruCiuMuralCue = true
        ponllMuralCueView.transform = CGAffineTransform(scaleX: 0.78, y: 0.78)
        ponllMuralCueView.alpha = 0.58
        UIView.animate(
            withDuration: 0.72,
            delay: 0.18,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0.8,
            options: [.curveEaseOut]
        ) {
            self.ponllMuralCueView.transform = .identity
            self.ponllMuralCueView.alpha = 1
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllChromeBloom.frame = bounds
        guard bruCiuNeonFlicker.isHidden else { return }
        aerErstSketchFuse.removeFromSuperlayer()
        let ponllWallTrail = UIBezierPath()
        let bruCiuAerosolVeil = 18
        for flckinkMuralAura in 0..<bruCiuAerosolVeil {
            let aerErstStencilEcho = CGFloat(flckinkMuralAura) / CGFloat(bruCiuAerosolVeil) * bounds.height
            ponllWallTrail.move(to: CGPoint(x: 0, y: aerErstStencilEcho))
            ponllWallTrail.addLine(to: CGPoint(x: bounds.width, y: aerErstStencilEcho + CGFloat((flckinkMuralAura % 4) - 2) * 3))
        }
        aerErstSketchFuse.path = ponllWallTrail.cgPath
        aerErstSketchFuse.strokeColor = UIColor.white.withAlphaComponent(0.12).cgColor
        aerErstSketchFuse.lineWidth = 1
        layer.insertSublayer(aerErstSketchFuse, above: ponllChromeBloom)
    }
}
