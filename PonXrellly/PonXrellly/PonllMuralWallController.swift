import UIKit

@MainActor
final class PonllMuralWallController: UIViewController, UIGestureRecognizerDelegate {
    private let ponllPaintMap: PonllyaerErstSolidMarkerk
    private let bruCiuStyleMap: PonllyaerErstTwoToneFillr
    private let flckinkMuralWall = UIView()
    private let aerErstCanvasWall = UIView()
    private var ponllWallArc: CGFloat = 0
    private var bruCiuWallBend: CGFloat = 0
    private var flckinkWallDepth: CGFloat = 1
    private var aerErstWallTrace = CGPoint.zero
    private var ponllPaintFlow = false
    private var bruCiuPaintMotion = 0
    private weak var aerErstMuralFlowline: UIView?

    init(ponllPaintMap: PonllyaerErstSolidMarkerk, bruCiuStyleMap: PonllyaerErstTwoToneFillr) {
        self.ponllPaintMap = ponllPaintMap
        self.bruCiuStyleMap = bruCiuStyleMap
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        flckinkLayerPlan()
        bruCiuPaintFlow()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard !ponllPaintFlow else { return }
        ponllPaintFlow = true
        var aerErstPaintArc = CATransform3DIdentity
        aerErstPaintArc.m34 = -1 / 760
        aerErstPaintArc = CATransform3DScale(aerErstPaintArc, 0.92, 0.92, 1)
        aerErstPaintArc = CATransform3DRotate(aerErstPaintArc, 0.18, 0, 1, 0)
        flckinkMuralWall.layer.transform = aerErstPaintArc
        flckinkMuralWall.alpha = 0.54
        UIView.animate(
            withDuration: 0.72,
            delay: 0.04,
            usingSpringWithDamping: 0.74,
            initialSpringVelocity: 0.7,
            options: [.curveEaseOut]
        ) {
            self.flckinkMuralWall.layer.transform = CATransform3DIdentity
            self.flckinkMuralWall.alpha = 1
        }
    }

    private func flckinkLayerPlan() {
        let ponllCanvasWall = PonllyponllCyanGlowView(
            bruCiuDripMarker: [
                PonllyPalette.background,
                UIColor(red: 8 / 255, green: 15 / 255, blue: 22 / 255, alpha: 1),
                PonllyPalette.background
            ]
        )
        ponllCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllCanvasWall)
        ponllCanvasWall.woodPanelPonlly(steelGate: view)

        let bruCiuLayerPlan = UIView()
        bruCiuLayerPlan.backgroundColor = PonllyPalette.background.withAlphaComponent(0.96)
        bruCiuLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuLayerPlan)

        let aerErstPaintPath = UIButton(type: .system)
        aerErstPaintPath.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        aerErstPaintPath.tintColor = .white
        aerErstPaintPath.backgroundColor = PonllyPalette.panel
        aerErstPaintPath.layer.cornerRadius = 18
        aerErstPaintPath.layer.borderWidth = 1
        aerErstPaintPath.layer.borderColor = PonllyPalette.line.cgColor
        aerErstPaintPath.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintPath.addTarget(self, action: #selector(ponllWallPath), for: .touchUpInside)
        bruCiuLayerPlan.addSubview(aerErstPaintPath)

        let flckinkPaintPath = UILabel()
        flckinkPaintPath.text = ponllPaintMap.nozzleCraft
        flckinkPaintPath.textColor = .white
        flckinkPaintPath.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .bold)
        flckinkPaintPath.textAlignment = .center
        flckinkPaintPath.adjustsFontSizeToFitWidth = true
        flckinkPaintPath.minimumScaleFactor = 0.76

        let ponllStylePath = UILabel()
        ponllStylePath.text = bruCiuStyleMap.aerosolDream
        ponllStylePath.textColor = PonllyPalette.muted
        ponllStylePath.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .semibold)
        ponllStylePath.textAlignment = .center

        let bruCiuPaintPath = UIStackView(arrangedSubviews: [flckinkPaintPath, ponllStylePath])
        bruCiuPaintPath.axis = .vertical
        bruCiuPaintPath.alignment = .center
        bruCiuPaintPath.spacing = 2
        bruCiuPaintPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuLayerPlan.addSubview(bruCiuPaintPath)

        let flckinkStyleMap = ErErstPaintLabView(bruCiuStyleMap, 36, 2)
        flckinkStyleMap.accessibilityIdentifier = bruCiuStyleMap.graffitiPulse
        flckinkStyleMap.isUserInteractionEnabled = true
        flckinkStyleMap.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flckinkStylePath)))
        aerErstMuralFlowline = flckinkStyleMap
        bruCiuLayerPlan.addSubview(flckinkStyleMap)

        flckinkMuralWall.backgroundColor = UIColor.black.withAlphaComponent(0.76)
        flckinkMuralWall.layer.cornerRadius = 18
        flckinkMuralWall.layer.borderWidth = 1
        flckinkMuralWall.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.48).cgColor
        flckinkMuralWall.layer.shadowColor = PonllyPalette.cyan.cgColor
        flckinkMuralWall.layer.shadowOpacity = 0.26
        flckinkMuralWall.layer.shadowRadius = 22
        flckinkMuralWall.layer.shadowOffset = .zero
        flckinkMuralWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkMuralWall)

        aerErstCanvasWall.clipsToBounds = true
        aerErstCanvasWall.layer.cornerRadius = 17
        aerErstCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        flckinkMuralWall.addSubview(aerErstCanvasWall)

        if let ponllWallMap = PbruCiuClearCoatView.ponllPaintMap(for: ponllPaintMap) {
            let bruCiuWallMap = UIImageView(image: ponllWallMap)
            bruCiuWallMap.contentMode = .scaleAspectFit
            bruCiuWallMap.translatesAutoresizingMaskIntoConstraints = false
            aerErstCanvasWall.addSubview(bruCiuWallMap)
            NSLayoutConstraint.activate([
                bruCiuWallMap.leadingAnchor.constraint(equalTo: aerErstCanvasWall.leadingAnchor),
                bruCiuWallMap.trailingAnchor.constraint(equalTo: aerErstCanvasWall.trailingAnchor),
                bruCiuWallMap.topAnchor.constraint(equalTo: aerErstCanvasWall.topAnchor),
                bruCiuWallMap.bottomAnchor.constraint(equalTo: aerErstCanvasWall.bottomAnchor)
            ])
        } else {
            let bruCiuWallMap = PbruCiuClearCoatView(ponllPaintTrace: ponllPaintMap)
            bruCiuWallMap.layer.borderWidth = 0
            aerErstCanvasWall.addSubview(bruCiuWallMap)
            NSLayoutConstraint.activate([
                bruCiuWallMap.leadingAnchor.constraint(equalTo: aerErstCanvasWall.leadingAnchor),
                bruCiuWallMap.trailingAnchor.constraint(equalTo: aerErstCanvasWall.trailingAnchor),
                bruCiuWallMap.topAnchor.constraint(equalTo: aerErstCanvasWall.topAnchor),
                bruCiuWallMap.bottomAnchor.constraint(equalTo: aerErstCanvasWall.bottomAnchor)
            ])
        }

        let bruCiuCanvasWall = UILabel()
        bruCiuCanvasWall.text = """
        SawEirpSet Gtroa frfoittaitPeu l|s ePMiunrcahl Itnok FzlooowmC
        aDnovuabslaeE-rtSatpG rtaof fziotoimP uilns eoMru roaultI
        """.ponllPaintaerErstHours
        bruCiuCanvasWall.textColor = UIColor.white.withAlphaComponent(0.72)
        bruCiuCanvasWall.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        bruCiuCanvasWall.textAlignment = .center
        bruCiuCanvasWall.numberOfLines = 2
        bruCiuCanvasWall.lineBreakMode = .byWordWrapping
        bruCiuCanvasWall.adjustsFontSizeToFitWidth = true
        bruCiuCanvasWall.minimumScaleFactor = 0.78
        bruCiuCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuCanvasWall)

        NSLayoutConstraint.activate([
            bruCiuLayerPlan.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuLayerPlan.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuLayerPlan.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiuLayerPlan.heightAnchor.constraint(equalToConstant: 56),
            aerErstPaintPath.leadingAnchor.constraint(equalTo: bruCiuLayerPlan.leadingAnchor, constant: 16),
            aerErstPaintPath.centerYAnchor.constraint(equalTo: bruCiuLayerPlan.centerYAnchor),
            aerErstPaintPath.widthAnchor.constraint(equalToConstant: 36),
            aerErstPaintPath.heightAnchor.constraint(equalToConstant: 36),
            flckinkStyleMap.trailingAnchor.constraint(equalTo: bruCiuLayerPlan.trailingAnchor, constant: -16),
            flckinkStyleMap.centerYAnchor.constraint(equalTo: bruCiuLayerPlan.centerYAnchor),
            bruCiuPaintPath.centerXAnchor.constraint(equalTo: bruCiuLayerPlan.centerXAnchor),
            bruCiuPaintPath.centerYAnchor.constraint(equalTo: bruCiuLayerPlan.centerYAnchor),
            bruCiuPaintPath.leadingAnchor.constraint(greaterThanOrEqualTo: aerErstPaintPath.trailingAnchor, constant: 8),
            bruCiuPaintPath.trailingAnchor.constraint(lessThanOrEqualTo: flckinkStyleMap.leadingAnchor, constant: -8),
            bruCiuCanvasWall.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bruCiuCanvasWall.leadingAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            bruCiuCanvasWall.trailingAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            bruCiuCanvasWall.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -14),
            bruCiuCanvasWall.heightAnchor.constraint(equalToConstant: 40),
            flckinkMuralWall.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            flckinkMuralWall.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            flckinkMuralWall.topAnchor.constraint(equalTo: bruCiuLayerPlan.bottomAnchor, constant: 14),
            flckinkMuralWall.bottomAnchor.constraint(equalTo: bruCiuCanvasWall.topAnchor, constant: -16),
            aerErstCanvasWall.leadingAnchor.constraint(equalTo: flckinkMuralWall.leadingAnchor),
            aerErstCanvasWall.trailingAnchor.constraint(equalTo: flckinkMuralWall.trailingAnchor),
            aerErstCanvasWall.topAnchor.constraint(equalTo: flckinkMuralWall.topAnchor),
            aerErstCanvasWall.bottomAnchor.constraint(equalTo: flckinkMuralWall.bottomAnchor)
        ])
    }

    private func bruCiuPaintFlow() {
        let ponllWallFlow = UIPanGestureRecognizer(target: self, action: #selector(aerErstWallFlow(_:)))
        let bruCiuWallDepth = UIPinchGestureRecognizer(target: self, action: #selector(flckinkWallDepth(_:)))
        let aerErstWallDepth = UITapGestureRecognizer(target: self, action: #selector(ponllWallDepth(_:)))
        aerErstWallDepth.numberOfTapsRequired = 2
        ponllWallFlow.delegate = self
        bruCiuWallDepth.delegate = self
        aerErstWallDepth.delegate = self
        flckinkMuralWall.addGestureRecognizer(ponllWallFlow)
        flckinkMuralWall.addGestureRecognizer(bruCiuWallDepth)
        flckinkMuralWall.addGestureRecognizer(aerErstWallDepth)
    }

    private func aerErstLayerPlan(_ bruCiuMuralBend: Bool, flckinkPaintMotion: TimeInterval = 0.2) {
        var ponllLayerPlan = CATransform3DIdentity
        ponllLayerPlan.m34 = -1 / 760
        ponllLayerPlan = CATransform3DTranslate(ponllLayerPlan, aerErstWallTrace.x, aerErstWallTrace.y, 0)
        ponllLayerPlan = CATransform3DScale(ponllLayerPlan, flckinkWallDepth, flckinkWallDepth, 1)
        ponllLayerPlan = CATransform3DRotate(ponllLayerPlan, bruCiuWallBend, 1, 0, 0)
        ponllLayerPlan = CATransform3DRotate(ponllLayerPlan, ponllWallArc, 0, 1, 0)
        guard bruCiuMuralBend else {
            flckinkMuralWall.layer.transform = ponllLayerPlan
            return
        }
        UIView.animate(
            withDuration: flckinkPaintMotion,
            delay: 0,
            usingSpringWithDamping: 0.76,
            initialSpringVelocity: 0.58,
            options: [.curveEaseOut, .beginFromCurrentState]
        ) {
            self.flckinkMuralWall.layer.transform = ponllLayerPlan
        }
    }

    private func ponllPaintTrace() {
        let bruCiuPaintTrace = max((flckinkWallDepth - 1) * flckinkMuralWall.bounds.width * 0.42, 0)
        let flckinkPaintTrace = max((flckinkWallDepth - 1) * flckinkMuralWall.bounds.height * 0.42, 0)
        aerErstWallTrace.x = min(max(aerErstWallTrace.x, -bruCiuPaintTrace), bruCiuPaintTrace)
        aerErstWallTrace.y = min(max(aerErstWallTrace.y, -flckinkPaintTrace), flckinkPaintTrace)
    }

    @objc private func aerErstWallFlow(_ ponllWallFlow: UIPanGestureRecognizer) {
        let bruCiuWallFlow = ponllWallFlow.translation(in: flckinkMuralWall)
        let flckinkWallFlow = max(flckinkMuralWall.bounds.width, 1)
        let aerErstWallFlow = max(flckinkMuralWall.bounds.height, 1)
        switch ponllWallFlow.state {
        case .changed:
            bruCiuPaintMotion += 1
            ponllWallArc = min(max(ponllWallArc + bruCiuWallFlow.x / flckinkWallFlow * 0.52, -0.34), 0.34)
            bruCiuWallBend = min(max(bruCiuWallBend - bruCiuWallFlow.y / aerErstWallFlow * 0.34, -0.18), 0.18)
            if flckinkWallDepth > 1 {
                aerErstWallTrace.x += bruCiuWallFlow.x * 0.74
                aerErstWallTrace.y += bruCiuWallFlow.y * 0.74
                ponllPaintTrace()
            }
            ponllWallFlow.setTranslation(.zero, in: flckinkMuralWall)
            aerErstLayerPlan(false)
        case .ended, .cancelled, .failed:
            bruCiuPaintMotion += 1
            let aerErstPaintMotion = bruCiuPaintMotion
            let ponllWallMotion = ponllWallFlow.velocity(in: flckinkMuralWall)
            ponllWallArc = min(max(ponllWallArc + ponllWallMotion.x / flckinkWallFlow * 0.08, -0.38), 0.38)
            bruCiuWallBend = min(max(bruCiuWallBend - ponllWallMotion.y / aerErstWallFlow * 0.05, -0.2), 0.2)
            aerErstLayerPlan(true, flckinkPaintMotion: 0.18)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.14) { [weak self] in
                guard let self, self.bruCiuPaintMotion == aerErstPaintMotion else { return }
                self.ponllWallArc = 0
                self.bruCiuWallBend = 0
                if self.flckinkWallDepth == 1 {
                    self.aerErstWallTrace = .zero
                }
                self.aerErstLayerPlan(true, flckinkPaintMotion: 0.62)
            }
        default:
            break
        }
    }

    @objc private func flckinkWallDepth(_ bruCiuWallDepth: UIPinchGestureRecognizer) {
        guard bruCiuWallDepth.state == .changed || bruCiuWallDepth.state == .ended else { return }
        bruCiuPaintMotion += 1
        flckinkWallDepth = min(max(flckinkWallDepth * bruCiuWallDepth.scale, 1), 3)
        bruCiuWallDepth.scale = 1
        if flckinkWallDepth == 1 {
            aerErstWallTrace = .zero
        }
        ponllPaintTrace()
        aerErstLayerPlan(bruCiuWallDepth.state == .ended, flckinkPaintMotion: 0.32)
    }

    @objc private func ponllWallDepth(_ aerErstWallDepth: UITapGestureRecognizer) {
        bruCiuPaintMotion += 1
        flckinkWallDepth = flckinkWallDepth > 1.05 ? 1 : 2.15
        ponllWallArc = 0
        bruCiuWallBend = 0
        aerErstWallTrace = .zero
        aerErstLayerPlan(true, flckinkPaintMotion: 0.48)
    }

    @objc private func ponllWallPath() {
        if let bruCiuWallPath = navigationController, bruCiuWallPath.viewControllers.first !== self {
            bruCiuWallPath.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }

    @objc private func flckinkStylePath() {
        guard bruCiuStyleMap.graffitiPulse != PonllyponllTornEdge.cnowpaintokwinId else { return }
        let ponllStylePath = FlckinkPrimerCoatController(bruCiuStyleMap)
        ponllStylePath.hidesBottomBarWhenPushed = true
        ponllPaintFlowPush(
            ponllStylePath,
            bruCiuPaintFlow: aerErstMuralFlowline,
            aerErstGraffitiPulse: bruCiuStyleMap.graffitiPulse
        )
    }

    func gestureRecognizer(
        _ ponllPaintFlow: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith bruCiuPaintFlow: UIGestureRecognizer
    ) -> Bool {
        (ponllPaintFlow is UIPanGestureRecognizer && bruCiuPaintFlow is UIPinchGestureRecognizer)
            || (ponllPaintFlow is UIPinchGestureRecognizer && bruCiuPaintFlow is UIPanGestureRecognizer)
    }
}
