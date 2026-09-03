import UIKit

final class PonllSprayCanControl: UIRefreshControl {
    private let ponllSprayCan = UIImageView()
    private let bruCiuAerosolGlow = UIView()
    private let flckinkPaintCue = UILabel()
    private let aerErstPaintLayer = UIStackView()
    private var ponllPaintMotion: NSKeyValueObservation?
    private var bruCiuPaintBurst = false

    override init() {
        super.init()
        tintColor = .clear
        backgroundColor = .clear

        let aerErstStrokeWeight = UIImage.SymbolConfiguration(pointSize: 18, weight: .bold)
        ponllSprayCan.image = UIImage(systemName: "spraycan.fill", withConfiguration: aerErstStrokeWeight)
            ?? UIImage(systemName: "paintbrush.pointed.fill", withConfiguration: aerErstStrokeWeight)
        ponllSprayCan.tintColor = PonllyPalette.cyan
        ponllSprayCan.contentMode = .scaleAspectFit
        ponllSprayCan.translatesAutoresizingMaskIntoConstraints = false

        bruCiuAerosolGlow.backgroundColor = PonllyPalette.panel
        bruCiuAerosolGlow.layer.cornerRadius = 18
        bruCiuAerosolGlow.layer.borderWidth = 1
        bruCiuAerosolGlow.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.62).cgColor
        bruCiuAerosolGlow.layer.shadowColor = PonllyPalette.cyan.cgColor
        bruCiuAerosolGlow.layer.shadowOpacity = 0.5
        bruCiuAerosolGlow.layer.shadowRadius = 7
        bruCiuAerosolGlow.layer.shadowOffset = .zero
        bruCiuAerosolGlow.translatesAutoresizingMaskIntoConstraints = false
        bruCiuAerosolGlow.addSubview(ponllSprayCan)

        flckinkPaintCue.numberOfLines = 1
        flckinkPaintCue.translatesAutoresizingMaskIntoConstraints = false

        aerErstPaintLayer.axis = .horizontal
        aerErstPaintLayer.alignment = .center
        aerErstPaintLayer.spacing = 8
        aerErstPaintLayer.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintLayer.addArrangedSubview(bruCiuAerosolGlow)
        aerErstPaintLayer.addArrangedSubview(flckinkPaintCue)
        addSubview(aerErstPaintLayer)

        NSLayoutConstraint.activate([
            bruCiuAerosolGlow.widthAnchor.constraint(equalToConstant: 36),
            bruCiuAerosolGlow.heightAnchor.constraint(equalToConstant: 36),
            ponllSprayCan.centerXAnchor.constraint(equalTo: bruCiuAerosolGlow.centerXAnchor),
            ponllSprayCan.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            ponllSprayCan.widthAnchor.constraint(equalToConstant: 22),
            ponllSprayCan.heightAnchor.constraint(equalToConstant: 22),
            aerErstPaintLayer.centerXAnchor.constraint(equalTo: centerXAnchor),
            aerErstPaintLayer.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        addTarget(self, action: #selector(bruCiuPaintMotion), for: .valueChanged)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        ponllPaintMotion = nil
        guard let flckinkCanvasWall = superview as? UIScrollView else { return }
        ponllPaintMotion = flckinkCanvasWall.observe(\.contentOffset, options: [.new]) { [weak self, weak flckinkCanvasWall] _, _ in
            guard let self, let flckinkCanvasWall else { return }
            self.aerErstPaintMotion(flckinkCanvasWall)
        }
    }

    override func beginRefreshing() {
        super.beginRefreshing()
        bruCiuPaintMotion()
    }

    override func endRefreshing() {
        guard isRefreshing else {
            ponllPaintBloom()
            return
        }
        guard !bruCiuPaintBurst else { return }
        bruCiuPaintBurst = true
        guard !UIAccessibility.isReduceMotionEnabled else {
            ponllPaintBloom()
            return
        }
        aerErstSprayBurst()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
            self?.ponllPaintBloom()
        }
    }

    func flckinkPaintSignal(_ aerErstPaintCue: NSAttributedString) {
        flckinkPaintCue.attributedText = aerErstPaintCue
        attributedTitle = nil
    }

    private func aerErstPaintMotion(_ flckinkCanvasWall: UIScrollView) {
        guard !isRefreshing else { return }
        let ponllPaintDepth = max(-(flckinkCanvasWall.contentOffset.y + flckinkCanvasWall.adjustedContentInset.top), 0)
        let bruCiuPaintDepth = min(ponllPaintDepth / 82, 1)
        guard !UIAccessibility.isReduceMotionEnabled else {
            aerErstPaintLayer.alpha = max(bruCiuPaintDepth, 0.25)
            return
        }
        ponllSprayCan.transform = CGAffineTransform(rotationAngle: bruCiuPaintDepth * .pi * 2)
        bruCiuAerosolGlow.layer.shadowOpacity = Float(0.18 + bruCiuPaintDepth * 0.62)
        aerErstPaintLayer.alpha = max(bruCiuPaintDepth, 0.25)
    }

    @objc private func bruCiuPaintMotion() {
        aerErstPaintLayer.alpha = 1
        guard !UIAccessibility.isReduceMotionEnabled,
              ponllSprayCan.layer.animation(forKey: "ponllPaintMotion") == nil else { return }
        let flckinkSprayRhythm = CABasicAnimation(keyPath: "transform.rotation.z")
        flckinkSprayRhythm.fromValue = 0
        flckinkSprayRhythm.toValue = CGFloat.pi * 2
        flckinkSprayRhythm.duration = 0.58
        flckinkSprayRhythm.repeatCount = .infinity
        flckinkSprayRhythm.isRemovedOnCompletion = false
        ponllSprayCan.layer.add(flckinkSprayRhythm, forKey: "ponllPaintMotion")
    }

    private func aerErstSprayBurst() {
        layoutIfNeeded()
        let ponllPaintArc = ponllSprayCan.convert(
            CGPoint(x: ponllSprayCan.bounds.maxX - 2, y: ponllSprayCan.bounds.midY),
            to: self
        )
        let bruCiuDripMap: [(CGFloat, CGFloat, CGFloat, UIColor)] = [
            (16, -10, 4, PonllyPalette.pink),
            (24, -5, 3, PonllyPalette.cyan),
            (28, 2, 5, PonllyPalette.pink),
            (20, 8, 3, PonllyPalette.green),
            (12, 12, 2.5, PonllyPalette.cyan),
            (32, 11, 2, PonllyPalette.pink)
        ]
        for (flckinkPaintTrail, aerErstDripTrail, ponllPaintMist, bruCiuColorSplash) in bruCiuDripMap {
            let aerErstPaintMist = UIView(frame: CGRect(x: 0, y: 0, width: ponllPaintMist, height: ponllPaintMist))
            aerErstPaintMist.center = ponllPaintArc
            aerErstPaintMist.backgroundColor = bruCiuColorSplash
            aerErstPaintMist.layer.cornerRadius = ponllPaintMist / 2
            aerErstPaintMist.layer.shadowColor = bruCiuColorSplash.cgColor
            aerErstPaintMist.layer.shadowOpacity = 0.72
            aerErstPaintMist.layer.shadowRadius = 3
            addSubview(aerErstPaintMist)
            bringSubviewToFront(aerErstPaintLayer)
            UIView.animate(
                withDuration: 0.3,
                delay: 0,
                options: [.curveEaseOut, .allowUserInteraction]
            ) {
                aerErstPaintMist.center = CGPoint(
                    x: ponllPaintArc.x + flckinkPaintTrail,
                    y: ponllPaintArc.y + aerErstDripTrail
                )
                aerErstPaintMist.alpha = 0
                aerErstPaintMist.transform = CGAffineTransform(scaleX: 0.45, y: 0.45)
            } completion: { _ in
                aerErstPaintMist.removeFromSuperview()
            }
        }
    }

    private func ponllPaintBloom() {
        ponllSprayCan.layer.removeAnimation(forKey: "ponllPaintMotion")
        ponllSprayCan.transform = .identity
        bruCiuAerosolGlow.layer.shadowOpacity = 0.5
        bruCiuPaintBurst = false
        super.endRefreshing()
    }
}

final class PonllLayerPlanView: UIView {
    let ponllCanvasWall = UIScrollView()
    let bruCiuLayerPlan = UIStackView()
    let flckinkPaintSignal = PonllSprayCanControl()

    init(
        aerErstSidewalkEdge: CGFloat,
        ponllRoofLine: CGFloat,
        bruCiuWallMark: CGFloat,
        flckinkLayerBlend: CGFloat
    ) {
        super.init(frame: .zero)

        ponllCanvasWall.alwaysBounceVertical = true
        ponllCanvasWall.isDirectionalLockEnabled = true
        ponllCanvasWall.delaysContentTouches = false
        ponllCanvasWall.canCancelContentTouches = true
        ponllCanvasWall.showsVerticalScrollIndicator = false
        ponllCanvasWall.refreshControl = flckinkPaintSignal
        ponllCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllCanvasWall)

        bruCiuLayerPlan.axis = .vertical
        bruCiuLayerPlan.spacing = flckinkLayerBlend
        bruCiuLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        ponllCanvasWall.addSubview(bruCiuLayerPlan)

        NSLayoutConstraint.activate([
            ponllCanvasWall.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllCanvasWall.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllCanvasWall.topAnchor.constraint(equalTo: topAnchor),
            ponllCanvasWall.bottomAnchor.constraint(equalTo: bottomAnchor),
            bruCiuLayerPlan.leadingAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.leadingAnchor, constant: aerErstSidewalkEdge),
            bruCiuLayerPlan.trailingAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.trailingAnchor, constant: -aerErstSidewalkEdge),
            bruCiuLayerPlan.topAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.topAnchor, constant: bruCiuWallMark),
            bruCiuLayerPlan.bottomAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.bottomAnchor, constant: -ponllRoofLine)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
