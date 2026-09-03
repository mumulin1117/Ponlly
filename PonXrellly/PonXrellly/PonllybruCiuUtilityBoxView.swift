import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllybruCiuUtilityBoxView: UIView {
    private let ponllAerosolGlow = UIView()
    private let bruCiuMuralGrit = UIView()
    private let flckinkStencilNoise = UILabel()
    private let aerErstMarkerTexture = UILabel()
    private let aerErstWallDepth: CGFloat
    private let ponllLetterDepth: Int
    private var flckinkPaintFlowline: NSLayoutConstraint?
    private var aerErstPaintRhythm: CADisplayLink?
    private var ponllPaintSignal: CFTimeInterval = 0
    private var ponllPaintMotion = false
    private var bruCiuPaintSignal = false

    init(aVotes ponllSketchLean: Int, bVotes bruCiuPaintTwist: Int) {
        let flckinkInkWeave = max(ponllSketchLean + bruCiuPaintTwist, 1)
        let aerErstPaintDepth = CGFloat(ponllSketchLean) / CGFloat(flckinkInkWeave)
        aerErstWallDepth = aerErstPaintDepth
        ponllLetterDepth = Int(aerErstPaintDepth * 100)
        super.init(frame: .zero)
        ponllAerosolGlow.backgroundColor = PonllyPalette.cyan
        ponllAerosolGlow.layer.cornerRadius = 6
        ponllAerosolGlow.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllAerosolGlow)
        bruCiuMuralGrit.backgroundColor = PonllyPalette.pink
        bruCiuMuralGrit.layer.cornerRadius = 6
        bruCiuMuralGrit.translatesAutoresizingMaskIntoConstraints = false
        ponllAerosolGlow.addSubview(bruCiuMuralGrit)
        flckinkPaintFlowline = bruCiuMuralGrit.widthAnchor.constraint(equalToConstant: 0)
        flckinkPaintFlowline?.isActive = true
        flckinkStencilNoise.text = "Kai 0%"
        flckinkStencilNoise.textColor = .white
        flckinkStencilNoise.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        aerErstMarkerTexture.text = "Nova 100%"
        aerErstMarkerTexture.textColor = .white
        aerErstMarkerTexture.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        aerErstMarkerTexture.textAlignment = .right
        [flckinkStencilNoise, aerErstMarkerTexture].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        NSLayoutConstraint.activate([
            ponllAerosolGlow.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllAerosolGlow.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllAerosolGlow.topAnchor.constraint(equalTo: topAnchor),
            ponllAerosolGlow.heightAnchor.constraint(equalToConstant: 12),
            bruCiuMuralGrit.leadingAnchor.constraint(equalTo: ponllAerosolGlow.leadingAnchor),
            bruCiuMuralGrit.topAnchor.constraint(equalTo: ponllAerosolGlow.topAnchor),
            bruCiuMuralGrit.bottomAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor),
            flckinkStencilNoise.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkStencilNoise.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8),
            aerErstMarkerTexture.trailingAnchor.constraint(equalTo: trailingAnchor),
            aerErstMarkerTexture.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        guard window != nil else { return }
        bruCiuPaintSignal = false
        ponllPaintFlowline()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllPaintFlowline()
    }

    func aerErstPaintMotion() {
        ponllPaintFlowline()
    }

    private func ponllPaintFlowline() {
        guard let flckinkCanvasWall = window,
              !ponllPaintMotion,
              !bruCiuPaintSignal,
              ponllAerosolGlow.bounds.width > 0 else { return }
        let aerErstWallMap = convert(bounds, to: flckinkCanvasWall)
        guard flckinkCanvasWall.bounds.intersects(aerErstWallMap) else { return }
        var ponllPaintVeil: UIView? = self
        while let bruCiuPaintLayer = ponllPaintVeil {
            guard !bruCiuPaintLayer.isHidden, bruCiuPaintLayer.alpha > 0.05 else { return }
            ponllPaintVeil = bruCiuPaintLayer.superview
        }
        bruCiuPaintSignal = true
        DispatchQueue.main.async { [weak self] in
            guard let self, !self.ponllPaintMotion else { return }
            self.bruCiuPaintSignal = false
            self.ponllPaintMotion = true
            self.flckinkPaintFlowline?.constant = self.ponllAerosolGlow.bounds.width * self.aerErstWallDepth
            guard !UIAccessibility.isReduceMotionEnabled else {
                self.flckinkLetterMotion(1)
                self.layoutIfNeeded()
                return
            }
            let aerErstPaintRhythm = CADisplayLink(target: self, selector: #selector(self.bruCiuPaintMotion(_:)))
            self.aerErstPaintRhythm = aerErstPaintRhythm
            aerErstPaintRhythm.add(to: .main, forMode: .common)
            UIView.animate(
                withDuration: 1.05,
                delay: 0.12,
                options: [.curveEaseOut, .beginFromCurrentState, .allowUserInteraction]
            ) {
                self.layoutIfNeeded()
            }
        }
    }

    @objc private func bruCiuPaintMotion(_ aerErstPaintFlowline: CADisplayLink) {
        if ponllPaintSignal == 0 {
            ponllPaintSignal = aerErstPaintFlowline.timestamp + 0.12
        }
        let flckinkPaintDepth = min(max((aerErstPaintFlowline.timestamp - ponllPaintSignal) / 1.05, 0), 1)
        let bruCiuPaintDepth = 1 - flckinkPaintDepth
        let ponllPaintDepth = 1 - bruCiuPaintDepth * bruCiuPaintDepth * bruCiuPaintDepth
        flckinkLetterMotion(CGFloat(ponllPaintDepth))
        guard flckinkPaintDepth >= 1 else { return }
        aerErstPaintFlowline.invalidate()
        aerErstPaintRhythm = nil
        aerErstAerosolBurst()
    }

    private func flckinkLetterMotion(_ aerErstPaintDepth: CGFloat) {
        let ponllLetterMotion = Int(round(CGFloat(ponllLetterDepth) * aerErstPaintDepth))
        let bruCiuLetterMotion = 100 - ponllLetterMotion
        flckinkStencilNoise.text = "Kai \(ponllLetterMotion)%"
        aerErstMarkerTexture.text = "Nova \(bruCiuLetterMotion)%"
    }

    private func aerErstAerosolBurst() {
        let ponllPaintArc = CGPoint(
            x: ponllAerosolGlow.frame.minX + ponllAerosolGlow.bounds.width * aerErstWallDepth,
            y: ponllAerosolGlow.frame.midY
        )
        let bruCiuDripMap: [(CGFloat, CGFloat, CGFloat)] = [
            (-11, -8, 3.2),
            (-7, 8, 2.2),
            (-3, -11, 1.8),
            (4, 10, 2.4),
            (7, -9, 2.8),
            (11, 3, 1.9),
            (3, -6, 1.6)
        ]
        for (flckinkDripTrail, aerErstPaintTrail, ponllPaintMist) in bruCiuDripMap {
            let bruCiuColorSplash = UIView(
                frame: CGRect(x: 0, y: 0, width: ponllPaintMist, height: ponllPaintMist)
            )
            bruCiuColorSplash.center = ponllPaintArc
            bruCiuColorSplash.backgroundColor = PonllyPalette.pink
            bruCiuColorSplash.layer.cornerRadius = ponllPaintMist / 2
            bruCiuColorSplash.layer.shadowColor = PonllyPalette.pink.cgColor
            bruCiuColorSplash.layer.shadowOpacity = 0.7
            bruCiuColorSplash.layer.shadowRadius = 3
            addSubview(bruCiuColorSplash)
            UIView.animate(
                withDuration: 0.36,
                delay: 0,
                options: [.curveEaseOut, .allowUserInteraction]
            ) {
                bruCiuColorSplash.center = CGPoint(
                    x: ponllPaintArc.x + flckinkDripTrail,
                    y: ponllPaintArc.y + aerErstPaintTrail
                )
                bruCiuColorSplash.alpha = 0
                bruCiuColorSplash.transform = CGAffineTransform(scaleX: 0.55, y: 0.55)
            } completion: { _ in
                bruCiuColorSplash.removeFromSuperview()
            }
        }
    }
}
