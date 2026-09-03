import UIKit

extension UIView {
    func ponllPaintFlow(_ aerErstGraffitiPulse: String) -> UIView? {
        if accessibilityIdentifier == aerErstGraffitiPulse { return self }
        for bruCiuPaintLayer in subviews.reversed() {
            if let flckinkPaintFlow = bruCiuPaintLayer.ponllPaintFlow(aerErstGraffitiPulse) {
                return flckinkPaintFlow
            }
        }
        return nil
    }
}

extension UIViewController {
    func ponllPaintFlowPush(
        _ flckinkPaintFlow: FlckinkPrimerCoatController,
        bruCiuPaintFlow: UIView?,
        aerErstGraffitiPulse: String
    ) {
        guard let ponllPaintFlow = navigationController as? PonllPaintFlowController,
              bruCiuPaintFlow != nil else {
            navigationController?.pushViewController(flckinkPaintFlow, animated: true)
            return
        }
        ponllPaintFlow.ponllPaintFlowPush(
            flckinkPaintFlow,
            bruCiuPaintFlow: PonllPaintFlowPlan(
                ponllPaintFlow: { [weak self, weak bruCiuPaintFlow] in
                    bruCiuPaintFlow?.window == nil ? self?.view.ponllPaintFlow(aerErstGraffitiPulse) : bruCiuPaintFlow
                },
                bruCiuPaintFlow: { [weak flckinkPaintFlow] in flckinkPaintFlow?.bruCiuPaintFlow },
                ponllStyleMotion: true
            )
        )
    }
}

@MainActor
final class PonllPaintFlowPlan {
    let ponllPaintFlow: () -> UIView?
    let bruCiuPaintFlow: () -> UIView?
    let aerErstPaintBloom: (() -> Void)?
    let flckinkPaintBloom: (() -> Void)?
    let ponllStyleMotion: Bool

    init(
        ponllPaintFlow: @escaping () -> UIView?,
        bruCiuPaintFlow: @escaping () -> UIView?,
        aerErstPaintBloom: (() -> Void)? = nil,
        flckinkPaintBloom: (() -> Void)? = nil,
        ponllStyleMotion: Bool = false
    ) {
        self.ponllPaintFlow = ponllPaintFlow
        self.bruCiuPaintFlow = bruCiuPaintFlow
        self.aerErstPaintBloom = aerErstPaintBloom
        self.flckinkPaintBloom = flckinkPaintBloom
        self.ponllStyleMotion = ponllStyleMotion
    }
}

@MainActor
final class PonllPaintFlowController: UINavigationController, UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    enum PonllPaintFlowStyle {
        case paintFlow
        case neonGlow
    }

    private let ponllPaintFlowStyle: PonllPaintFlowStyle
    private var bruCiuLayerMap: [ObjectIdentifier: PonllPaintFlowPlan] = [:]
    private var aerErstPaintMotion: UIPercentDrivenInteractiveTransition?
    private lazy var flckinkEdgeSnap = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(ponllEdgeSnap(_:)))

    init(rootViewController ponllPaintFlow: UIViewController, ponllPaintFlowStyle: PonllPaintFlowStyle = .paintFlow) {
        self.ponllPaintFlowStyle = ponllPaintFlowStyle
        super.init(rootViewController: ponllPaintFlow)
        bruCiuPaintFlow()
    }

    required init?(coder: NSCoder) {
        self.ponllPaintFlowStyle = .paintFlow
        super.init(coder: coder)
        bruCiuPaintFlow()
    }

    func ponllPaintFlowPush(_ aerErstPaintFlow: UIViewController, bruCiuPaintFlow: PonllPaintFlowPlan) {
        bruCiuLayerMap[ObjectIdentifier(aerErstPaintFlow)] = bruCiuPaintFlow
        pushViewController(aerErstPaintFlow, animated: true)
    }

    private func bruCiuPaintFlow() {
        delegate = self
        interactivePopGestureRecognizer?.isEnabled = false
        flckinkEdgeSnap.edges = .left
        flckinkEdgeSnap.delegate = self
        view.addGestureRecognizer(flckinkEdgeSnap)
    }

    func navigationController(
        _ ponllPaintFlow: UINavigationController,
        animationControllerFor bruCiuStyleMotion: UINavigationController.Operation,
        from aerErstPaintFlow: UIViewController,
        to flckinkPaintFlow: UIViewController
    ) -> UIViewControllerAnimatedTransitioning? {
        let ponllLayerMap = bruCiuStyleMotion == .push ? ObjectIdentifier(flckinkPaintFlow) : ObjectIdentifier(aerErstPaintFlow)
        let bruCiuPaintFlow = bruCiuLayerMap[ponllLayerMap]
        return PonllPaintFlowAnimator(
            ponllStyleMotion: bruCiuStyleMotion,
            bruCiuPaintFlow: bruCiuPaintFlow,
            aerErstNeonGlow: ponllPaintFlowStyle == .neonGlow
        )
    }

    func navigationController(
        _ ponllPaintFlow: UINavigationController,
        interactionControllerFor bruCiuPaintMotion: UIViewControllerAnimatedTransitioning
    ) -> UIViewControllerInteractiveTransitioning? {
        aerErstPaintMotion
    }

    func navigationController(
        _ ponllPaintFlow: UINavigationController,
        didShow bruCiuPaintFlow: UIViewController,
        animated aerErstPaintMotion: Bool
    ) {
        let flckinkLayerMap = Set(viewControllers.map(ObjectIdentifier.init))
        bruCiuLayerMap = bruCiuLayerMap.filter { flckinkLayerMap.contains($0.key) }
    }

    func gestureRecognizerShouldBegin(_ ponllEdgeSnap: UIGestureRecognizer) -> Bool {
        guard viewControllers.count > 1, transitionCoordinator == nil,
              let bruCiuEdgeSnap = ponllEdgeSnap as? UIScreenEdgePanGestureRecognizer else { return false }
        let aerErstPaintMotion = bruCiuEdgeSnap.velocity(in: view)
        return aerErstPaintMotion.x > abs(aerErstPaintMotion.y)
    }

    @objc private func ponllEdgeSnap(_ bruCiuEdgeSnap: UIScreenEdgePanGestureRecognizer) {
        let ponllPaintMotion = max(0, min(1, bruCiuEdgeSnap.translation(in: view).x / max(view.bounds.width, 1)))
        switch bruCiuEdgeSnap.state {
        case .began:
            let flckinkPaintMotion = UIPercentDrivenInteractiveTransition()
            flckinkPaintMotion.completionCurve = .easeOut
            flckinkPaintMotion.completionSpeed = 0.9
            aerErstPaintMotion = flckinkPaintMotion
            view.endEditing(true)
            popViewController(animated: true)
        case .changed:
            aerErstPaintMotion?.update(ponllPaintMotion)
        case .ended:
            let flckinkPaintMotion = bruCiuEdgeSnap.velocity(in: view).x
            if ponllPaintMotion > 0.34 || flckinkPaintMotion > 620 {
                aerErstPaintMotion?.finish()
            } else {
                aerErstPaintMotion?.cancel()
            }
            aerErstPaintMotion = nil
        case .cancelled, .failed:
            aerErstPaintMotion?.cancel()
            aerErstPaintMotion = nil
        default:
            break
        }
    }
}

@MainActor
private final class PonllSprayHalo: UIView {
    private let ponllColorFlow = CAGradientLayer()
    private let bruCiuOutlineGlow = CAShapeLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        isUserInteractionEnabled = false
        ponllColorFlow.type = .conic
        ponllColorFlow.startPoint = CGPoint(x: 0.5, y: 0.5)
        ponllColorFlow.endPoint = CGPoint(x: 0.5, y: 0)
        ponllColorFlow.colors = [
            PonllyPalette.pink.cgColor,
            PonllyPalette.cyan.cgColor,
            UIColor(red: 119/255, green: 1, blue: 52/255, alpha: 1).cgColor,
            PonllyPalette.pink.cgColor
        ]
        bruCiuOutlineGlow.fillColor = UIColor.clear.cgColor
        bruCiuOutlineGlow.strokeColor = UIColor.white.cgColor
        bruCiuOutlineGlow.lineWidth = 3
        ponllColorFlow.mask = bruCiuOutlineGlow
        layer.addSublayer(ponllColorFlow)
        layer.shadowColor = PonllyPalette.cyan.cgColor
        layer.shadowOpacity = 0.58
        layer.shadowRadius = 12
        layer.shadowOffset = .zero
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllColorFlow.frame = bounds
        bruCiuOutlineGlow.frame = bounds
        bruCiuOutlineGlow.path = UIBezierPath(ovalIn: bounds.insetBy(dx: 1.5, dy: 1.5)).cgPath
        layer.shadowPath = UIBezierPath(ovalIn: bounds).cgPath
    }
}

@MainActor
private final class PonllPaintFlowAnimator: NSObject, UIViewControllerAnimatedTransitioning {
    private let ponllStyleMotion: UINavigationController.Operation
    private let bruCiuPaintFlow: PonllPaintFlowPlan?
    private let aerErstNeonGlow: Bool

    init(
        ponllStyleMotion: UINavigationController.Operation,
        bruCiuPaintFlow: PonllPaintFlowPlan?,
        aerErstNeonGlow: Bool
    ) {
        self.ponllStyleMotion = ponllStyleMotion
        self.bruCiuPaintFlow = bruCiuPaintFlow
        self.aerErstNeonGlow = aerErstNeonGlow
    }

    func transitionDuration(using ponllPaintMotion: UIViewControllerContextTransitioning?) -> TimeInterval {
        bruCiuPaintFlow == nil ? 0.4 : 0.68
    }

    func animateTransition(using ponllPaintMotion: UIViewControllerContextTransitioning) {
        if let bruCiuPaintFlow {
            aerErstPaintFlow(ponllPaintMotion, bruCiuPaintFlow: bruCiuPaintFlow)
        } else {
            flckinkStyleMotion(ponllPaintMotion)
        }
    }

    private func flckinkStyleMotion(_ ponllPaintMotion: UIViewControllerContextTransitioning) {
        guard let bruCiuPaintFlow = ponllPaintMotion.view(forKey: .from),
              let aerErstPaintFlow = ponllPaintMotion.view(forKey: .to) else {
            ponllPaintMotion.completeTransition(false)
            return
        }
        let flckinkPaintFlow = ponllPaintMotion.containerView
        let ponllPaintBloom = ponllStyleMotion == .push
        let bruCiuPaintBloom = flckinkPaintFlow.bounds.width
        if ponllPaintBloom {
            aerErstPaintFlow.frame = flckinkPaintFlow.bounds.offsetBy(dx: bruCiuPaintBloom, dy: 0)
            flckinkPaintFlow.addSubview(aerErstPaintFlow)
        } else {
            aerErstPaintFlow.frame = flckinkPaintFlow.bounds.offsetBy(dx: -bruCiuPaintBloom * 0.28, dy: 0)
            flckinkPaintFlow.insertSubview(aerErstPaintFlow, belowSubview: bruCiuPaintFlow)
        }

        let aerErstNeonArc = UIView(frame: CGRect(x: 0, y: 0, width: 2, height: flckinkPaintFlow.bounds.height))
        aerErstNeonArc.backgroundColor = aerErstNeonGlow ? PonllyPalette.cyan.withAlphaComponent(0.30) : .clear
        aerErstNeonArc.layer.shadowColor = PonllyPalette.cyan.cgColor
        aerErstNeonArc.layer.shadowOpacity = aerErstNeonGlow ? 0.24 : 0
        aerErstNeonArc.layer.shadowRadius = 9
        aerErstNeonArc.alpha = 0
        aerErstPaintFlow.addSubview(aerErstNeonArc)

        UIView.animate(
            withDuration: transitionDuration(using: ponllPaintMotion),
            delay: 0,
            options: [.curveEaseOut, .allowUserInteraction]
        ) {
            bruCiuPaintFlow.frame = flckinkPaintFlow.bounds.offsetBy(dx: ponllPaintBloom ? -bruCiuPaintBloom * 0.28 : bruCiuPaintBloom, dy: 0)
            aerErstPaintFlow.frame = flckinkPaintFlow.bounds
            aerErstNeonArc.alpha = self.aerErstNeonGlow ? 0.42 : 0
        } completion: { _ in
            let flckinkPaintBloom = !ponllPaintMotion.transitionWasCancelled
            bruCiuPaintFlow.frame = flckinkPaintFlow.bounds
            aerErstPaintFlow.frame = flckinkPaintFlow.bounds
            aerErstNeonArc.removeFromSuperview()
            ponllPaintMotion.completeTransition(flckinkPaintBloom)
        }
    }

    private func aerErstPaintFlow(_ ponllPaintMotion: UIViewControllerContextTransitioning, bruCiuPaintFlow: PonllPaintFlowPlan) {
        guard let aerErstPaintFlow = ponllPaintMotion.view(forKey: .from),
              let flckinkPaintFlow = ponllPaintMotion.view(forKey: .to) else {
            ponllPaintMotion.completeTransition(false)
            return
        }
        let ponllPaintLayer = ponllPaintMotion.containerView
        let bruCiuPaintBloom = ponllStyleMotion == .push
        if bruCiuPaintBloom {
            flckinkPaintFlow.frame = ponllPaintLayer.bounds
            ponllPaintLayer.addSubview(flckinkPaintFlow)
        } else {
            flckinkPaintFlow.frame = ponllPaintLayer.bounds
            ponllPaintLayer.insertSubview(flckinkPaintFlow, belowSubview: aerErstPaintFlow)
        }
        flckinkPaintFlow.layoutIfNeeded()

        let ponllPaintFlow = bruCiuPaintBloom ? bruCiuPaintFlow.ponllPaintFlow() : bruCiuPaintFlow.bruCiuPaintFlow()
        let aerErstPaintBloom = bruCiuPaintBloom ? bruCiuPaintFlow.bruCiuPaintFlow() : bruCiuPaintFlow.ponllPaintFlow()
        guard let ponllPaintFlow, let aerErstPaintBloom,
              let flckinkPaintBloom = ponllPaintFlow.snapshotView(afterScreenUpdates: true) else {
            flckinkStyleMotion(ponllPaintMotion)
            return
        }
        if bruCiuPaintBloom {
            bruCiuPaintFlow.aerErstPaintBloom?()
        }

        let ponllPaintMap = ponllPaintFlow.convert(ponllPaintFlow.bounds, to: ponllPaintLayer)
        let bruCiuPaintMap = aerErstPaintBloom.convert(aerErstPaintBloom.bounds, to: ponllPaintLayer)
        flckinkPaintBloom.frame = ponllPaintMap
        flckinkPaintBloom.layer.cornerRadius = ponllPaintFlow.layer.cornerRadius
        flckinkPaintBloom.layer.masksToBounds = true
        ponllPaintLayer.addSubview(flckinkPaintBloom)

        let aerErstSprayHalo = PonllSprayHalo(frame: ponllPaintMap.insetBy(dx: -3, dy: -3))
        aerErstSprayHalo.alpha = bruCiuPaintFlow.ponllStyleMotion ? 1 : 0
        ponllPaintLayer.insertSubview(aerErstSprayHalo, belowSubview: flckinkPaintBloom)

        ponllPaintFlow.isHidden = true
        aerErstPaintBloom.isHidden = true
        flckinkPaintFlow.alpha = bruCiuPaintBloom ? 0 : 0.7
        flckinkPaintFlow.transform = bruCiuPaintBloom ? CGAffineTransform(scaleX: 1.015, y: 1.015) : CGAffineTransform(scaleX: 0.985, y: 0.985)

        UIView.animateKeyframes(
            withDuration: transitionDuration(using: ponllPaintMotion),
            delay: 0,
            options: [.calculationModeCubic, .allowUserInteraction]
        ) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.82) {
                flckinkPaintBloom.frame = bruCiuPaintMap
                flckinkPaintBloom.layer.cornerRadius = aerErstPaintBloom.layer.cornerRadius
                aerErstSprayHalo.frame = bruCiuPaintMap.insetBy(dx: -5, dy: -5)
                aerErstSprayHalo.layoutIfNeeded()
            }
            UIView.addKeyframe(withRelativeStartTime: 0.08, relativeDuration: 0.62) {
                aerErstPaintFlow.alpha = bruCiuPaintBloom ? 0.16 : 0
                flckinkPaintFlow.alpha = 1
                flckinkPaintFlow.transform = .identity
            }
            UIView.addKeyframe(withRelativeStartTime: 0.76, relativeDuration: 0.24) {
                flckinkPaintBloom.alpha = 0
                aerErstSprayHalo.alpha = 0
            }
        } completion: { _ in
            let ponllPaintBloom = !ponllPaintMotion.transitionWasCancelled
            ponllPaintFlow.isHidden = false
            aerErstPaintBloom.isHidden = false
            aerErstPaintFlow.alpha = 1
            flckinkPaintFlow.alpha = 1
            aerErstPaintFlow.transform = .identity
            flckinkPaintFlow.transform = .identity
            flckinkPaintBloom.removeFromSuperview()
            aerErstSprayHalo.removeFromSuperview()
            if ponllPaintBloom, bruCiuPaintBloom {
                bruCiuPaintFlow.flckinkPaintBloom?()
            }
            ponllPaintMotion.completeTransition(ponllPaintBloom)
        }
    }
}
