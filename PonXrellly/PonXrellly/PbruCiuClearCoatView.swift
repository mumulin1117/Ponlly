import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PbruCiuClearCoatView: UIView {
    var aerErstMuralCue: (() -> Void)?
    private let ponllChromeBloom = CAGradientLayer()
    private let bruCiuNeonFlicker = UIImageView()
    private let flckinkTextureFlash = UILabel()
    private let aerErstSketchFuse = CAShapeLayer()
    private let ponllMuralCueView = UIButton(type: .system)
    private let flckinkSprayShield = CALayer()
    private var bruCiuMuralCue = false
    private var aerErstAerosolGlow = false
    private var ponllPaintMotion = false

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
        ponllMuralCueView.setTitle(nil, for: .normal)
        ponllMuralCueView.tintColor = .white
        ponllMuralCueView.backgroundColor = UIColor.black.withAlphaComponent(0.76)
        ponllMuralCueView.contentHorizontalAlignment = .center
        ponllMuralCueView.imageView?.contentMode = .scaleAspectFit
        ponllMuralCueView.layer.cornerRadius = 14
        ponllMuralCueView.layer.borderWidth = 1
        ponllMuralCueView.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.9).cgColor
        ponllMuralCueView.layer.shadowColor = PonllyPalette.cyan.cgColor
        ponllMuralCueView.layer.shadowOpacity = 0.42
        ponllMuralCueView.layer.shadowRadius = 7
        ponllMuralCueView.isUserInteractionEnabled = true
        ponllMuralCueView.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralCueView.addTarget(self, action: #selector(flckinkMuralCue), for: .touchUpInside)
        addSubview(ponllMuralCueView)
        NSLayoutConstraint.activate([
            ponllMuralCueView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ponllMuralCueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            ponllMuralCueView.widthAnchor.constraint(equalToConstant: 28),
            ponllMuralCueView.heightAnchor.constraint(equalToConstant: 28)
        ])
    }

    @objc private func flckinkMuralCue() {
        aerErstMuralCue?()
    }

    func aerErstAerosolBloom() {
        guard !bruCiuNeonFlicker.isHidden else { return }
        if !aerErstAerosolGlow {
            aerErstAerosolGlow = true
            bruCiuNeonFlicker.layer.mask = flckinkSprayShield
            setNeedsLayout()
        }
        flckinkPaintBloom()
    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        guard window != nil else { return }
        if ponllMuralCueView.superview != nil, !bruCiuMuralCue {
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
        flckinkPaintBloom()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllChromeBloom.frame = bounds
        flckinkSprayShield.frame = bruCiuNeonFlicker.bounds
        flckinkPaintBloom()
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

    private func flckinkPaintBloom() {
        guard let bruCiuCanvasWall = window,
              aerErstAerosolGlow,
              !ponllPaintMotion,
              bruCiuNeonFlicker.bounds.width > 0,
              bruCiuNeonFlicker.bounds.height > 0 else { return }
        let aerErstWallMap = bruCiuNeonFlicker.convert(bruCiuNeonFlicker.bounds, to: bruCiuCanvasWall)
        guard bruCiuCanvasWall.bounds.intersects(aerErstWallMap) else { return }
        var ponllPaintVeil: UIView? = self
        while let flckinkPaintLayer = ponllPaintVeil {
            guard !flckinkPaintLayer.isHidden, flckinkPaintLayer.alpha > 0.05 else { return }
            ponllPaintVeil = flckinkPaintLayer.superview
        }
        ponllPaintMotion = true

        guard !UIAccessibility.isReduceMotionEnabled else {
            bruCiuNeonFlicker.layer.mask = nil
            return
        }

        flckinkSprayShield.sublayers?.forEach { $0.removeFromSuperlayer() }
        let bruCiuPaintDepth = hypot(
            bruCiuNeonFlicker.bounds.width,
            bruCiuNeonFlicker.bounds.height
        ) / 96 * 1.18
        let ponllMuralGrid: [(CGFloat, CGFloat, CGFloat, CFTimeInterval)] = [
            (0.12, 0.22, 0.74, 0.00),
            (0.31, 0.66, 0.92, 0.06),
            (0.55, 0.28, 0.80, 0.10),
            (0.77, 0.72, 0.96, 0.14),
            (0.91, 0.18, 0.66, 0.18),
            (0.48, 0.50, bruCiuPaintDepth, 0.16)
        ]
        let aerErstPaintSignal = CACurrentMediaTime()

        CATransaction.begin()
        CATransaction.setCompletionBlock { [weak self] in
            self?.bruCiuNeonFlicker.layer.mask = nil
            self?.flckinkSprayShield.sublayers?.forEach { $0.removeFromSuperlayer() }
        }
        for (flckinkWallFlowline, aerErstAerosolArc, ponllPaintDepth, bruCiuSprayRhythm) in ponllMuralGrid {
            let ponllAerosolVeil = CAGradientLayer()
            ponllAerosolVeil.type = .radial
            ponllAerosolVeil.colors = [
                UIColor.white.cgColor,
                UIColor.white.cgColor,
                UIColor.white.withAlphaComponent(0.82).cgColor,
                UIColor.clear.cgColor
            ]
            ponllAerosolVeil.locations = [0, 0.58, 0.82, 1]
            ponllAerosolVeil.startPoint = CGPoint(x: 0.5, y: 0.5)
            ponllAerosolVeil.endPoint = CGPoint(x: 1, y: 1)
            ponllAerosolVeil.bounds = CGRect(x: 0, y: 0, width: 96, height: 96)
            ponllAerosolVeil.position = CGPoint(
                x: bruCiuNeonFlicker.bounds.width * flckinkWallFlowline,
                y: bruCiuNeonFlicker.bounds.height * aerErstAerosolArc
            )
            ponllAerosolVeil.setAffineTransform(CGAffineTransform(scaleX: ponllPaintDepth, y: ponllPaintDepth))
            flckinkSprayShield.addSublayer(ponllAerosolVeil)

            let aerErstPaintFlowline = CAKeyframeAnimation(keyPath: "transform.scale")
            aerErstPaintFlowline.values = [0.025, ponllPaintDepth * 0.42, ponllPaintDepth]
            aerErstPaintFlowline.keyTimes = [0, 0.48, 1]
            aerErstPaintFlowline.timingFunctions = [
                CAMediaTimingFunction(name: .easeOut),
                CAMediaTimingFunction(name: .easeInEaseOut)
            ]
            aerErstPaintFlowline.beginTime = aerErstPaintSignal + bruCiuSprayRhythm
            aerErstPaintFlowline.duration = 0.88
            aerErstPaintFlowline.fillMode = .both
            aerErstPaintFlowline.isRemovedOnCompletion = false
            ponllAerosolVeil.add(aerErstPaintFlowline, forKey: nil)
        }
        CATransaction.commit()
    }
}
