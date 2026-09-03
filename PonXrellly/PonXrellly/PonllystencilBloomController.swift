import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystencilBloomController: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate {
    private enum PonllAerosolSignal: Int, CaseIterable {
        case graffitiPulse
        case aerosolDream
        case streetMural
        case wallCraft
        case paintFlow
        case sprayRhythm

        var chromeShine: String {
            switch self {
            case .graffitiPulse:
                return "Pqowpeurltayru".ponllPaintaerErstHours
            case .aerosolDream:
                return "Fqowlelrotwyiunigo".ponllPaintaerErstHours
            case .streetMural:
                return "Nqewwe rRtoyoumiso".ponllPaintaerErstHours
            case .wallCraft:
                return "Gqrwaefrftiytuii oTpaqlwke".ponllPaintaerErstHours
            case .paintFlow:
                return "Mquwseirct".ponllPaintaerErstHours
            case .sprayRhythm:
                return "Bqawtetrltey uDiiospcquwsesritoynu".ponllPaintaerErstHours
            }
        }
    }

    private let ponllScrollCanvas = UIScrollView()
    private let bruCiuStackPath = UIStackView()
    private var flckinkLayerPlans: [PonllLayerPlanView] = []
    private weak var flckinkStyleMap: UIScrollView?
    private var aerErstCanvasWall: CGFloat = 0
    private var bruCiuPaintMap: Set<Int> = []
    private var ponllPaintMotion = false
    private var aerErstSelectedCategory: PonllAerosolSignal = .graffitiPulse
    private var ponllCategoryButtons: [UIButton] = []
    private var ponllWallMap: Set<String> = []

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        bruCiuSetup()
        PonllAerosolSignal.allCases.forEach { flckinkReloadutilityBox($0) }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = false
        PonllAerosolSignal.allCases.forEach { flckinkReloadutilityBox($0) }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard !ponllPaintMotion else { return }
        ponllPaintMotion = true
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            self.aerErstPaintSignal(self.aerErstSelectedCategory, flckinkPaintVeil: true)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let bruCiuCanvasWall = ponllScrollCanvas.bounds.width
        guard bruCiuCanvasWall > 0, abs(bruCiuCanvasWall - aerErstCanvasWall) > 0.5 else { return }
        aerErstCanvasWall = bruCiuCanvasWall
        ponllScrollCanvas.setContentOffset(
            CGPoint(x: CGFloat(aerErstSelectedCategory.rawValue) * bruCiuCanvasWall, y: 0),
            animated: false
        )
    }

    private func bruCiuSetup() {
        let ponllBackgroundWash = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 10/255, green: 12/255, blue: 17/255, alpha: 1)])
        view.addSubview(ponllBackgroundWash)
        ponllBackgroundWash.woodPanelPonlly(steelGate: view)

        let ponllHeaderCanvas = UIView()
        ponllHeaderCanvas.backgroundColor = PonllyPalette.background.withAlphaComponent(0.98)
        ponllHeaderCanvas.layer.zPosition = 20
        ponllHeaderCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllHeaderCanvas)

        ponllScrollCanvas.isPagingEnabled = true
        ponllScrollCanvas.alwaysBounceHorizontal = true
        ponllScrollCanvas.showsHorizontalScrollIndicator = false
        ponllScrollCanvas.isDirectionalLockEnabled = true
        ponllScrollCanvas.isScrollEnabled = false
        ponllScrollCanvas.delegate = self
        let aerErstLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        aerErstLayerMap.direction = .left
        aerErstLayerMap.cancelsTouchesInView = false
        aerErstLayerMap.delegate = self
        ponllScrollCanvas.addGestureRecognizer(aerErstLayerMap)
        let flckinkLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        flckinkLayerMap.direction = .right
        flckinkLayerMap.cancelsTouchesInView = false
        flckinkLayerMap.delegate = self
        ponllScrollCanvas.addGestureRecognizer(flckinkLayerMap)
        ponllScrollCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllScrollCanvas)

        bruCiuStackPath.axis = .horizontal
        bruCiuStackPath.spacing = 0
        bruCiuStackPath.translatesAutoresizingMaskIntoConstraints = false
        ponllScrollCanvas.addSubview(bruCiuStackPath)

        let aerErstTitleMark = UILabel()
        aerErstTitleMark.text = "Vqowiecret yRuoioompsq".ponllPaintaerErstHours
        aerErstTitleMark.textColor = .white
        aerErstTitleMark.font = PonllyFonts.muralForgepon(neonLab: 22)
        aerErstTitleMark.translatesAutoresizingMaskIntoConstraints = false
        ponllHeaderCanvas.addSubview(aerErstTitleMark)

        let bruCiuStyleMap = ponllCategoryRow()
        flckinkStyleMap = bruCiuStyleMap
        ponllHeaderCanvas.addSubview(bruCiuStyleMap)

        let flckinkOutlineGlow = UIView()
        flckinkOutlineGlow.backgroundColor = PonllyPalette.line.withAlphaComponent(0.66)
        flckinkOutlineGlow.translatesAutoresizingMaskIntoConstraints = false
        ponllHeaderCanvas.addSubview(flckinkOutlineGlow)

        for aerErstCategory in PonllAerosolSignal.allCases {
            let ponllLayerPlan = PonllLayerPlanView(
                aerErstSidewalkEdge: 14,
                ponllRoofLine: 96,
                bruCiuWallMark: 15,
                flckinkLayerBlend: 16
            )
            ponllLayerPlan.translatesAutoresizingMaskIntoConstraints = false
            ponllLayerPlan.flckinkPaintSignal.tag = aerErstCategory.rawValue
            aerErstChromeSignal(ponllLayerPlan)
            if aerErstCategory == aerErstSelectedCategory {
                ponllLayerPlan.bruCiuLayerPlan.alpha = 0
            }
            bruCiuStackPath.addArrangedSubview(ponllLayerPlan)
            flckinkLayerPlans.append(ponllLayerPlan)
            NSLayoutConstraint.activate([
                ponllLayerPlan.widthAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.widthAnchor),
                ponllLayerPlan.heightAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.heightAnchor)
            ])
        }

        NSLayoutConstraint.activate([
            ponllHeaderCanvas.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ponllHeaderCanvas.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ponllHeaderCanvas.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            aerErstTitleMark.leadingAnchor.constraint(equalTo: ponllHeaderCanvas.leadingAnchor, constant: 16),
            aerErstTitleMark.topAnchor.constraint(equalTo: ponllHeaderCanvas.topAnchor, constant: 14),
            bruCiuStyleMap.leadingAnchor.constraint(equalTo: ponllHeaderCanvas.leadingAnchor),
            bruCiuStyleMap.trailingAnchor.constraint(equalTo: ponllHeaderCanvas.trailingAnchor),
            bruCiuStyleMap.topAnchor.constraint(equalTo: aerErstTitleMark.bottomAnchor, constant: 25),
            bruCiuStyleMap.heightAnchor.constraint(equalToConstant: 32),
            flckinkOutlineGlow.leadingAnchor.constraint(equalTo: ponllHeaderCanvas.leadingAnchor),
            flckinkOutlineGlow.trailingAnchor.constraint(equalTo: ponllHeaderCanvas.trailingAnchor),
            flckinkOutlineGlow.topAnchor.constraint(equalTo: bruCiuStyleMap.bottomAnchor, constant: 17),
            flckinkOutlineGlow.bottomAnchor.constraint(equalTo: ponllHeaderCanvas.bottomAnchor),
            flckinkOutlineGlow.heightAnchor.constraint(equalToConstant: 1),
            ponllScrollCanvas.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllScrollCanvas.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllScrollCanvas.topAnchor.constraint(equalTo: ponllHeaderCanvas.bottomAnchor),
            ponllScrollCanvas.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuStackPath.leadingAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.leadingAnchor),
            bruCiuStackPath.trailingAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.trailingAnchor),
            bruCiuStackPath.topAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.topAnchor),
            bruCiuStackPath.bottomAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.bottomAnchor),
            bruCiuStackPath.heightAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.heightAnchor)
        ])
    }

    private func aerErstChromeSignal(_ ponllLayerPlan: PonllLayerPlanView) {
//        ponllLayerPlan.flckinkPaintSignal.flckinkPaintSignal(NSAttributedString(
//            string: "Rpeofnrlelsbhriuncgi areoroemrss.t.f.l".ponllPaintaerErstHours,
//            attributes: [
//                .foregroundColor: PonllyPalette.muted,
//                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
//            ]
//        ))
        ponllLayerPlan.flckinkPaintSignal.addTarget(self, action: #selector(flckinkNeonSignal(_:)), for: .valueChanged)
    }

    private func ponllCategoryRow() -> UIScrollView {
        let aerErstStylePath = UIScrollView()
        aerErstStylePath.showsHorizontalScrollIndicator = false
        aerErstStylePath.alwaysBounceHorizontal = true
        aerErstStylePath.translatesAutoresizingMaskIntoConstraints = false

        let bruCiuCategoryRow = UIStackView()
        bruCiuCategoryRow.axis = .horizontal
        bruCiuCategoryRow.spacing = 8
        bruCiuCategoryRow.translatesAutoresizingMaskIntoConstraints = false
        aerErstStylePath.addSubview(bruCiuCategoryRow)

        ponllCategoryButtons = PonllAerosolSignal.allCases.enumerated().map { flckinkIndex, aerErstCategory in
            let ponllCategoryButton = UIButton(type: .system)
            ponllCategoryButton.tag = flckinkIndex
            ponllCategoryButton.setTitle(aerErstCategory.chromeShine, for: .normal)
            ponllCategoryButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 11)
            ponllCategoryButton.layer.cornerRadius = 12
            ponllCategoryButton.layer.borderWidth = 1
            ponllCategoryButton.heightAnchor.constraint(equalToConstant: 26).isActive = true
            let flckinkStyleWeight = (aerErstCategory.chromeShine as NSString).size(
                withAttributes: [.font: PonllyFonts.muralForgepon(neonLab: 11)]
            ).width
            ponllCategoryButton.widthAnchor.constraint(equalToConstant: ceil(flckinkStyleWeight) + 28).isActive = true
            ponllCategoryButton.addTarget(self, action: #selector(bruCiuCategoryTapped(_:)), for: .touchUpInside)
            bruCiuCategoryRow.addArrangedSubview(ponllCategoryButton)
            return ponllCategoryButton
        }
        NSLayoutConstraint.activate([
            bruCiuCategoryRow.leadingAnchor.constraint(equalTo: aerErstStylePath.contentLayoutGuide.leadingAnchor, constant: 16),
            bruCiuCategoryRow.trailingAnchor.constraint(equalTo: aerErstStylePath.contentLayoutGuide.trailingAnchor, constant: -16),
            bruCiuCategoryRow.centerYAnchor.constraint(equalTo: aerErstStylePath.frameLayoutGuide.centerYAnchor),
            bruCiuCategoryRow.heightAnchor.constraint(equalToConstant: 26)
        ])
        aerErstglossFinishCategories()
        return aerErstStylePath
    }

    private func aerErstglossFinishCategories() {
        for (flckinkIndex, ponllCategoryButton) in ponllCategoryButtons.enumerated() {
            let bruCiuCategory = PonllAerosolSignal.allCases[flckinkIndex]
            let aerErstSelected = bruCiuCategory == aerErstSelectedCategory
            ponllCategoryButton.backgroundColor = aerErstSelected ? UIColor(red: 5/255, green: 26/255, blue: 30/255, alpha: 1) : PonllyPalette.panel
            ponllCategoryButton.setTitleColor(aerErstSelected ? PonllyPalette.cyan : PonllyPalette.muted, for: .normal)
            ponllCategoryButton.layer.borderColor = (aerErstSelected ? PonllyPalette.cyan : PonllyPalette.line).cgColor
            ponllCategoryButton.layer.shadowColor = PonllyPalette.cyan.cgColor
            ponllCategoryButton.layer.shadowOpacity = aerErstSelected ? 0.42 : 0
            ponllCategoryButton.layer.shadowRadius = aerErstSelected ? 7 : 0
            ponllCategoryButton.layer.shadowOffset = .zero
        }
    }

    private func ponllLayerMap(_ aerErstLayerMap: Int, bruCiuMuralBend: Bool) {
        guard PonllAerosolSignal.allCases.indices.contains(aerErstLayerMap) else { return }
        aerErstSelectedCategory = PonllAerosolSignal.allCases[aerErstLayerMap]
        aerErstglossFinishCategories()
        flckinkReloadutilityBox(aerErstSelectedCategory)
        if let flckinkStyleMap, ponllCategoryButtons.indices.contains(aerErstLayerMap) {
            flckinkStyleMap.layoutIfNeeded()
            let bruCiuStylePath = ponllCategoryButtons[aerErstLayerMap].convert(
                ponllCategoryButtons[aerErstLayerMap].bounds,
                to: flckinkStyleMap
            )
            let aerErstStylePath = CGRect(
                x: flckinkStyleMap.contentOffset.x + 12,
                y: flckinkStyleMap.contentOffset.y,
                width: max(flckinkStyleMap.bounds.width - 24, 0),
                height: flckinkStyleMap.bounds.height
            )
            if !aerErstStylePath.contains(bruCiuStylePath) {
                let ponllPaintPath = bruCiuStylePath.midX - flckinkStyleMap.bounds.width * 0.5
                let flckinkPaintPath = max(flckinkStyleMap.contentSize.width - flckinkStyleMap.bounds.width, 0)
                let aerErstPaintPath = min(max(ponllPaintPath, 0), flckinkPaintPath)
                flckinkStyleMap.setContentOffset(CGPoint(x: aerErstPaintPath, y: 0), animated: bruCiuMuralBend)
            }
        }
        guard ponllScrollCanvas.bounds.width > 0 else { return }
        ponllScrollCanvas.setContentOffset(
            CGPoint(x: CGFloat(aerErstLayerMap) * ponllScrollCanvas.bounds.width, y: 0),
            animated: bruCiuMuralBend
        )
    }

    private func bruCiuLayerBlend() {
        guard ponllScrollCanvas.bounds.width > 0 else { return }
        let flckinkLayerMap = Int(round(ponllScrollCanvas.contentOffset.x / ponllScrollCanvas.bounds.width))
        ponllLayerMap(flckinkLayerMap, bruCiuMuralBend: false)
    }

    private func flckinkReloadutilityBox(_ aerErstCategory: PonllAerosolSignal) {
        guard flckinkLayerPlans.indices.contains(aerErstCategory.rawValue) else { return }
        let bruCiuLayerPlan = flckinkLayerPlans[aerErstCategory.rawValue].bruCiuLayerPlan
        bruCiuLayerPlan.arrangedSubviews.forEach {
            bruCiuLayerPlan.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let ponllmatteFinish = bruCiuPaintSignal(aerErstCategory)
        guard !ponllmatteFinish.isEmpty else {
            bruCiuLayerPlan.addArrangedSubview(bruCiuEmptyState())
            return
        }
        ponllmatteFinish.forEach { bruCiuLayerPlan.addArrangedSubview(flckinkutilityBoxCard($0)) }
    }

    private func bruCiuPaintSignal(_ aerErstCategory: PonllAerosolSignal) -> [PonllyaerErstWeatheredPaperm] {
        let flckinkWallSignal = PonllyponllTornEdge.aerErstAdhesiveLayer.filter {
            !PonllyponllTornEdge.aerErstRustStreak($0.gradientFill)
        }
        switch aerErstCategory {
        case .graffitiPulse:
            return PonllyponllTornEdge.aerErstSoftCap(ponllCleanOutline: .bruCiuSolidFill)
        case .aerosolDream:
            return PonllyponllTornEdge.aerErstSoftCap(ponllCleanOutline: .ponllGritSurface)
        case .streetMural:
            return Array(flckinkWallSignal.reversed())
        case .wallCraft:
            return flckinkWallSignal.filter { $0.chromeShine == .bruCiuSolidFill }
        case .paintFlow:
            return PonllyponllTornEdge.aerErstSoftCap(ponllCleanOutline: .lateWall)
        case .sprayRhythm:
            return PonllyponllTornEdge.aerErstSoftCap(ponllCleanOutline: .critique)
        }
    }

    private func flckinkutilityBoxCard(_ ponllutilityBox: PonllyaerErstWeatheredPaperm) -> UIControl {
        let bruCiublackOutline = UIControl()
        bruCiublackOutline.backgroundColor = PonllyPalette.panel
        bruCiublackOutline.layer.cornerRadius = 14
        bruCiublackOutline.layer.borderWidth = 1
        bruCiublackOutline.layer.borderColor = PonllyPalette.line.cgColor
        bruCiublackOutline.clipsToBounds = true

        let flckinklimeStroke = PonllSprayBloomView(image: ponllutilityBox.graffitiPiece ?? UIImage(named: ponllutilityBox.aerosolHaze))
        flckinklimeStroke.accessibilityIdentifier = ponllutilityBox.graffitiPulse
        flckinklimeStroke.contentMode = .scaleAspectFill
        flckinklimeStroke.clipsToBounds = true
        flckinklimeStroke.layer.cornerRadius = 10
        flckinklimeStroke.isUserInteractionEnabled = false
        flckinklimeStroke.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(flckinklimeStroke)
        bruCiublackOutline.addAction(UIAction { [weak self] _ in
            self?.aerErstOpen(ponllutilityBox)
        }, for: .touchUpInside)

        let bruCiuMoreButton = UIButton(type: .system)
        bruCiuMoreButton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        bruCiuMoreButton.tintColor = .white
        bruCiuMoreButton.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        bruCiuMoreButton.layer.cornerRadius = 18
        bruCiuMoreButton.layer.borderWidth = 1
        bruCiuMoreButton.layer.borderColor = UIColor.white.withAlphaComponent(0.14).cgColor
        bruCiuMoreButton.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMoreButton.addAction(UIAction { [weak self] _ in
            self?.ponllmuralGrid(pasteupEcho: ponllutilityBox)
        }, for: .touchUpInside)
        bruCiublackOutline.addSubview(bruCiuMoreButton)

        let bruCiuHost = PonllyponllTornEdge.flckinkChippedPaint(ponllutilityBox.gradientFill)
        let flckinkAvatarButton = UIControl()
        flckinkAvatarButton.backgroundColor = UIColor.black.withAlphaComponent(0.18)
        flckinkAvatarButton.layer.cornerRadius = 12
        flckinkAvatarButton.layer.borderWidth = 1
        flckinkAvatarButton.layer.borderColor = PonllyPalette.line.cgColor
        flckinkAvatarButton.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(flckinkAvatarButton)
        let aerErstcolorFade = ErErstPaintLabView(bruCiuHost, 22, 0)
        aerErstcolorFade.accessibilityIdentifier = bruCiuHost.graffitiPulse
        aerErstcolorFade.isUserInteractionEnabled = false
        flckinkAvatarButton.addSubview(aerErstcolorFade)
        flckinkAvatarButton.addAction(UIAction { [weak self, weak aerErstcolorFade] _ in
            self?.bruCiuOpenArtist(bruCiuHost, ponllPaintFlow: aerErstcolorFade)
        }, for: .touchUpInside)
        let ponllWallMark = UILabel()
        ponllWallMark.text = bruCiuHost.aerosolDream
        ponllWallMark.textColor = .white
        ponllWallMark.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        ponllWallMark.isUserInteractionEnabled = false
        ponllWallMark.translatesAutoresizingMaskIntoConstraints = false
        flckinkAvatarButton.addSubview(ponllWallMark)

        let ponllroughFill = UILabel()
        ponllroughFill.text = ponllutilityBox.nozzleCraft
        ponllroughFill.textColor = .white
        ponllroughFill.font = PonllyFonts.muralForgepon(neonLab: 15)
        ponllroughFill.numberOfLines = 1
        ponllroughFill.isUserInteractionEnabled = false
        ponllroughFill.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(ponllroughFill)

        let bruCiuutilityBoxTopic = UILabel()
        bruCiuutilityBoxTopic.text = aerErstStyleCue(ponllutilityBox.chromeShine)
        bruCiuutilityBoxTopic.textColor = ponllutilityBox.whitePop
        bruCiuutilityBoxTopic.font = PonllyFonts.muralForgepon(neonLab: 10)
        bruCiuutilityBoxTopic.textAlignment = .center
        bruCiuutilityBoxTopic.backgroundColor = ponllutilityBox.whitePop.withAlphaComponent(0.10)
        bruCiuutilityBoxTopic.layer.cornerRadius = 9
        bruCiuutilityBoxTopic.layer.borderWidth = 1
        bruCiuutilityBoxTopic.layer.borderColor = ponllutilityBox.whitePop.withAlphaComponent(0.74).cgColor
        bruCiuutilityBoxTopic.clipsToBounds = true
        bruCiuutilityBoxTopic.isUserInteractionEnabled = false
        bruCiuutilityBoxTopic.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(bruCiuutilityBoxTopic)

        let flckinkMuralPath = UIStackView()
        flckinkMuralPath.axis = .horizontal
        flckinkMuralPath.spacing = -6
        flckinkMuralPath.isUserInteractionEnabled = false
        flckinkMuralPath.translatesAutoresizingMaskIntoConstraints = false
        ponllutilityBox.muralfanSpray.forEach { ponllWallMark in
            let aerErstStreetMuse = PonllyponllTornEdge.flckinkChippedPaint(ponllWallMark)
            flckinkMuralPath.addArrangedSubview(ErErstPaintLabView(aerErstStreetMuse, 22, 1))
        }
        bruCiublackOutline.addSubview(flckinkMuralPath)

        let aerErstNeonGlow = UIView()
        aerErstNeonGlow.backgroundColor = UIColor(red: 57/255, green: 1, blue: 20/255, alpha: 1)
        aerErstNeonGlow.layer.cornerRadius = 4
        aerErstNeonGlow.isUserInteractionEnabled = false
        aerErstNeonGlow.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(aerErstNeonGlow)

        let flckinklayerBlend = UILabel()
        flckinklayerBlend.text = "\(aerErstPaintwoToneFillce(ponllutilityBox)) \("oqnwleirntey".ponllPaintaerErstHours)"
        flckinklayerBlend.textColor = PonllyPalette.muted
        flckinklayerBlend.font = PonllyFonts.steelGate(rollingShutter: 11)
        flckinklayerBlend.isUserInteractionEnabled = false
        flckinklayerBlend.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(flckinklayerBlend)

        let ponllmagentaBurst = UIButton(type: .system)
        let aerErstWallMark = ponllWallMap.contains(ponllutilityBox.graffitiPulse)
        ponllmagentaBurst.setImage(UIImage(systemName: aerErstWallMark ? "heart.fill" : "heart"), for: .normal)
        ponllmagentaBurst.tintColor = aerErstWallMark ? PonllyPalette.pink : .white
        ponllmagentaBurst.backgroundColor = UIColor.black.withAlphaComponent(0.18)
        ponllmagentaBurst.layer.cornerRadius = 17
        ponllmagentaBurst.layer.borderWidth = 1
        ponllmagentaBurst.layer.borderColor = PonllyPalette.line.cgColor
        ponllmagentaBurst.translatesAutoresizingMaskIntoConstraints = false
        ponllmagentaBurst.addAction(UIAction { [weak self, weak ponllmagentaBurst] _ in
            guard let self, let ponllmagentaBurst else { return }
            self.ponllNeonSignal(ponllmagentaBurst, wallMark: ponllutilityBox.graffitiPulse)
        }, for: .touchUpInside)
        bruCiublackOutline.addSubview(ponllmagentaBurst)

        NSLayoutConstraint.activate([
            bruCiublackOutline.heightAnchor.constraint(equalToConstant: 292),
            flckinklimeStroke.leadingAnchor.constraint(equalTo: bruCiublackOutline.leadingAnchor, constant: 14),
            flckinklimeStroke.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -14),
            flckinklimeStroke.topAnchor.constraint(equalTo: bruCiublackOutline.topAnchor, constant: 14),
            flckinklimeStroke.heightAnchor.constraint(equalToConstant: 136),
            bruCiuMoreButton.trailingAnchor.constraint(equalTo: flckinklimeStroke.trailingAnchor, constant: -10),
            bruCiuMoreButton.topAnchor.constraint(equalTo: flckinklimeStroke.topAnchor, constant: 10),
            bruCiuMoreButton.widthAnchor.constraint(equalToConstant: 36),
            bruCiuMoreButton.heightAnchor.constraint(equalToConstant: 36),
            ponllroughFill.leadingAnchor.constraint(equalTo: bruCiublackOutline.leadingAnchor, constant: 14),
            ponllroughFill.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -14),
            ponllroughFill.topAnchor.constraint(equalTo: flckinklimeStroke.bottomAnchor, constant: 12),
            flckinkAvatarButton.leadingAnchor.constraint(equalTo: ponllroughFill.leadingAnchor),
            flckinkAvatarButton.topAnchor.constraint(equalTo: ponllroughFill.bottomAnchor, constant: 8),
            flckinkAvatarButton.heightAnchor.constraint(equalToConstant: 24),
            aerErstcolorFade.leadingAnchor.constraint(equalTo: flckinkAvatarButton.leadingAnchor, constant: 1),
            aerErstcolorFade.centerYAnchor.constraint(equalTo: flckinkAvatarButton.centerYAnchor),
            ponllWallMark.leadingAnchor.constraint(equalTo: aerErstcolorFade.trailingAnchor, constant: 7),
            ponllWallMark.trailingAnchor.constraint(equalTo: flckinkAvatarButton.trailingAnchor, constant: -9),
            ponllWallMark.centerYAnchor.constraint(equalTo: flckinkAvatarButton.centerYAnchor),
            flckinkMuralPath.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -16),
            flckinkMuralPath.centerYAnchor.constraint(equalTo: flckinkAvatarButton.centerYAnchor),
            flckinkMuralPath.leadingAnchor.constraint(greaterThanOrEqualTo: flckinkAvatarButton.trailingAnchor, constant: 12),
            bruCiuutilityBoxTopic.leadingAnchor.constraint(equalTo: ponllroughFill.leadingAnchor),
            bruCiuutilityBoxTopic.topAnchor.constraint(equalTo: flckinkAvatarButton.bottomAnchor, constant: 8),
            bruCiuutilityBoxTopic.heightAnchor.constraint(equalToConstant: 19),
            bruCiuutilityBoxTopic.widthAnchor.constraint(greaterThanOrEqualToConstant: 58),
            aerErstNeonGlow.leadingAnchor.constraint(equalTo: ponllroughFill.leadingAnchor),
            aerErstNeonGlow.bottomAnchor.constraint(equalTo: bruCiublackOutline.bottomAnchor, constant: -14),
            aerErstNeonGlow.widthAnchor.constraint(equalToConstant: 8),
            aerErstNeonGlow.heightAnchor.constraint(equalToConstant: 8),
            flckinklayerBlend.leadingAnchor.constraint(equalTo: aerErstNeonGlow.trailingAnchor, constant: 6),
            flckinklayerBlend.centerYAnchor.constraint(equalTo: aerErstNeonGlow.centerYAnchor),
            ponllmagentaBurst.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -14),
            ponllmagentaBurst.bottomAnchor.constraint(equalTo: bruCiublackOutline.bottomAnchor, constant: -10),
            ponllmagentaBurst.widthAnchor.constraint(equalToConstant: 34),
            ponllmagentaBurst.heightAnchor.constraint(equalToConstant: 34)
        ])
        return bruCiublackOutline
    }

    private func aerErstStyleCue(_ ponllStyleMap: PonllyVoLobbyCategory) -> String {
        switch ponllStyleMap {
        case .bruCiuSolidFill, .ponllGritSurface:
            return "Gqrwaefrftiytuii".ponllPaintaerErstHours
        case .critique:
            return "Bqawtetrltey".ponllPaintaerErstHours
        case .lateWall:
            return "Hqiwpe-rhtoypu".ponllPaintaerErstHours
        }
    }

    private func aerErstPaintwoToneFillce(_ ponllMuralPiece: PonllyaerErstWeatheredPaperm) -> Int {
        ponllMuralPiece.muralfanSpray.count
    }

    private func aerErstSprayBloom(_ ponllPaintLayer: UIView) -> [PonllSprayBloomView] {
        var bruCiuSprayBloom: [PonllSprayBloomView] = []
        if let flckinkPaintBloom = ponllPaintLayer as? PonllSprayBloomView {
            bruCiuSprayBloom.append(flckinkPaintBloom)
        }
        ponllPaintLayer.subviews.forEach {
            bruCiuSprayBloom.append(contentsOf: aerErstSprayBloom($0))
        }
        return bruCiuSprayBloom
    }

    private func bruCiuSprayBloom(_ ponllPaintLayer: UIView) {
        guard let flckinkCanvasWall = view.window else { return }
        let aerErstPaintBloom = aerErstSprayBloom(ponllPaintLayer)
            .filter {
                flckinkCanvasWall.bounds.intersects($0.convert($0.bounds, to: flckinkCanvasWall))
            }
            .sorted {
                $0.convert($0.bounds, to: flckinkCanvasWall).minY
                    < $1.convert($1.bounds, to: flckinkCanvasWall).minY
            }
        aerErstPaintBloom.enumerated().forEach { ponllPaintDepth, flckinkPaintBloom in
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(ponllPaintDepth) * 0.06) {
                flckinkPaintBloom.aerErstAerosolBloom()
            }
        }
    }

    private func ponllNeonSignal(_ bruCiuNeonGlow: UIButton, wallMark flckinkWallMark: String) {
        if ponllWallMap.contains(flckinkWallMark) {
            ponllWallMap.remove(flckinkWallMark)
        } else {
            ponllWallMap.insert(flckinkWallMark)
        }
        let aerErstWallMark = ponllWallMap.contains(flckinkWallMark)
        bruCiuNeonGlow.setImage(UIImage(systemName: aerErstWallMark ? "heart.fill" : "heart"), for: .normal)
        bruCiuNeonGlow.tintColor = aerErstWallMark ? PonllyPalette.pink : .white
        bruCiuNeonGlow.ponllPaintBurst(aerErstWallMark)
    }

    private func bruCiuEmptyState() -> UIView {
        let aerErstEmptyPanel = UIStackView()
        aerErstEmptyPanel.axis = .vertical
        aerErstEmptyPanel.alignment = .center
        aerErstEmptyPanel.spacing = 12
        aerErstEmptyPanel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        aerErstEmptyPanel.layer.cornerRadius = 22
        aerErstEmptyPanel.layer.borderWidth = 1
        aerErstEmptyPanel.layer.borderColor = PonllyPalette.line.cgColor
        aerErstEmptyPanel.layoutMargins = UIEdgeInsets(top: 36, left: 20, bottom: 36, right: 20)
        aerErstEmptyPanel.isLayoutMarginsRelativeArrangement = true
        let ponllfatCap = UIImageView(image: UIImage(systemName: "mic.slash"))
        ponllfatCap.tintColor = PonllyPalette.cyan
        ponllfatCap.widthAnchor.constraint(equalToConstant: 38).isActive = true
        ponllfatCap.heightAnchor.constraint(equalToConstant: 38).isActive = true
        let bruCiuEmptyTitle = UILabel()
        bruCiuEmptyTitle.text = "NOoP QrRoSoTmUsV WfXrYoZm0 1f2o3l4l5o6w7e8d9 aabrctdiesftgsh".ponllPaintaerErstHours
        bruCiuEmptyTitle.textColor = .white
        bruCiuEmptyTitle.textAlignment = .center
        bruCiuEmptyTitle.font = PonllyFonts.muralForgepon(neonLab: 16)
        let flckinkpaintRun = UILabel()
        flckinkpaintRun.text = "Fiojlkllomwn ompoqrres twuavlwlx ywzrAiBtCeDrEsF GtHoI JsKeLeM NtOhPeQiRrS TlUiVvWeX YvZo0i1c2e3 4s5p6a7c8e9sa bhcedreef.g".ponllPaintaerErstHours
        flckinkpaintRun.textColor = PonllyPalette.muted
        flckinkpaintRun.textAlignment = .center
        flckinkpaintRun.numberOfLines = 0
        flckinkpaintRun.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        [ponllfatCap, bruCiuEmptyTitle, flckinkpaintRun].forEach(aerErstEmptyPanel.addArrangedSubview)
        return aerErstEmptyPanel
    }

    private func aerErstOpen(_ letterForm: PonllyaerErstWeatheredPaperm) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) { [weak self] in
            guard let self else { return }
            self.flckinkPrimerCoatponlu("Ehnitjekrlimnngo prqorosmt.u.v.w".ponllPaintaerErstHours)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) { [weak self] in
                guard let self else { return }
                let bruCiuconcreteMuse = PwheatpasteLayerController(aerErstConcreteMuse: letterForm)
                bruCiuconcreteMuse.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(bruCiuconcreteMuse, animated: true)
            }
        }
    }

    private func bruCiuOpenArtist(_ neonDrip: PonllyaerErstTwoToneFillr, ponllPaintFlow: UIView?) {
        guard neonDrip.graffitiPulse != PonllyponllTornEdge.cnowpaintokwinId else { return }
        let flckinkcolorSplash = FlckinkPrimerCoatController(neonDrip)
        flckinkcolorSplash.hidesBottomBarWhenPushed = true
        ponllPaintFlowPush(
            flckinkcolorSplash,
            bruCiuPaintFlow: ponllPaintFlow,
            aerErstGraffitiPulse: neonDrip.graffitiPulse
        )
    }

    private func ponllmuralGrid(pasteupEcho bruCiuutilityBox: PonllyaerErstWeatheredPaperm) {
        let capControl = PonllyroughFillController(lineSpray: bruCiuutilityBox)
        capControl.fadeSpray = { [weak self] in
                self?.aerErstSketchRush("RxeypzoArBtC DsEuFbGmHiItJtKeLdM".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
        }
        capControl.modalPresentationStyle = .overFullScreen
        capControl.modalTransitionStyle = .crossDissolve
        present(capControl, animated: true)
    }

    @objc private func bruCiuCategoryTapped(_ flckinkSender: UIButton) {
        ponllLayerMap(flckinkSender.tag, bruCiuMuralBend: true)
        guard PonllAerosolSignal.allCases.indices.contains(flckinkSender.tag) else { return }
        aerErstPaintSignal(PonllAerosolSignal.allCases[flckinkSender.tag], flckinkPaintVeil: true)
    }

    @objc private func bruCiuPaintFlow(_ aerErstLayerMap: UISwipeGestureRecognizer) {
        let flckinkLayerMap = aerErstSelectedCategory.rawValue
        let ponllLayerMap: Int
        if aerErstLayerMap.direction == .left {
            ponllLayerMap = min(flckinkLayerMap + 1, PonllAerosolSignal.allCases.count - 1)
        } else {
            ponllLayerMap = max(flckinkLayerMap - 1, 0)
        }
        guard ponllLayerMap != flckinkLayerMap else { return }
        self.ponllLayerMap(ponllLayerMap, bruCiuMuralBend: true)
        aerErstPaintSignal(PonllAerosolSignal.allCases[ponllLayerMap], flckinkPaintVeil: true)
    }

    @objc private func flckinkNeonSignal(_ ponllPaintSignal: UIRefreshControl) {
        bruCiuPaintMotion(ponllPaintSignal, flckinkPaintVeil: false)
    }

    private func aerErstPaintSignal(_ ponllAerosolSignal: PonllAerosolSignal, flckinkPaintVeil: Bool) {
        guard flckinkLayerPlans.indices.contains(ponllAerosolSignal.rawValue) else { return }
        let bruCiuLayerPlan = flckinkLayerPlans[ponllAerosolSignal.rawValue]
        let ponllPaintSignal = bruCiuLayerPlan.flckinkPaintSignal
        guard !bruCiuPaintMap.contains(ponllAerosolSignal.rawValue) else { return }
        ponllPaintSignal.tag = ponllAerosolSignal.rawValue
        ponllPaintSignal.beginRefreshing()
        bruCiuLayerPlan.ponllCanvasWall.layoutIfNeeded()
        let aerErstPaintDepth = bruCiuLayerPlan.ponllCanvasWall.adjustedContentInset.top + 68
        bruCiuLayerPlan.ponllCanvasWall.setContentOffset(
            CGPoint(x: 0, y: -aerErstPaintDepth),
            animated: true
        )
        bruCiuPaintMotion(ponllPaintSignal, flckinkPaintVeil: flckinkPaintVeil)
    }

    private func bruCiuPaintMotion(_ ponllPaintSignal: UIRefreshControl, flckinkPaintVeil: Bool) {
        guard PonllAerosolSignal.allCases.indices.contains(ponllPaintSignal.tag),
              !bruCiuPaintMap.contains(ponllPaintSignal.tag) else { return }
        let aerErstPaintSignal = PonllAerosolSignal.allCases[ponllPaintSignal.tag]
        let flckinkLayerPlan = flckinkLayerPlans[ponllPaintSignal.tag].bruCiuLayerPlan
        bruCiuPaintMap.insert(ponllPaintSignal.tag)
        if flckinkPaintVeil {
            flckinkLayerPlan.alpha = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.88) { [weak self] in
            guard let self else { return }
            self.flckinkReloadutilityBox(aerErstPaintSignal)
            if flckinkPaintVeil, aerErstPaintSignal == self.aerErstSelectedCategory {
                self.view.layoutIfNeeded()
                self.bruCiuSprayBloom(flckinkLayerPlan)
            }
            UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut, .allowUserInteraction]) {
                flckinkLayerPlan.alpha = 1
            }
            ponllPaintSignal.endRefreshing()
            self.bruCiuPaintMap.remove(ponllPaintSignal.tag)
        }
    }

    func scrollViewDidEndDecelerating(_ aerErstCanvasWall: UIScrollView) {
        guard aerErstCanvasWall === ponllScrollCanvas else { return }
        bruCiuLayerBlend()
    }

    func scrollViewDidEndDragging(_ bruCiuCanvasWall: UIScrollView, willDecelerate flckinkPaintFlow: Bool) {
        guard bruCiuCanvasWall === ponllScrollCanvas, !flckinkPaintFlow else { return }
        bruCiuLayerBlend()
    }

    func scrollViewDidEndScrollingAnimation(_ ponllCanvasWall: UIScrollView) {
        guard ponllCanvasWall === ponllScrollCanvas else { return }
        bruCiuLayerBlend()
    }

    func gestureRecognizer(
        _ aerErstPaintFlow: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith bruCiuPaintFlow: UIGestureRecognizer
    ) -> Bool {
        aerErstPaintFlow is UISwipeGestureRecognizer || bruCiuPaintFlow is UISwipeGestureRecognizer
    }
}

private final class PonllSprayBloomView: UIImageView {
    private let flckinkSprayShield = CALayer()
    private var bruCiuSprayBloom = false

    func aerErstAerosolBloom() {
        guard !bruCiuSprayBloom else { return }
        layoutIfNeeded()
        guard bounds.width > 0, bounds.height > 0 else { return }
        bruCiuSprayBloom = true
        ponllSprayBloom(layer, bruCiuSprayShield: flckinkSprayShield)
    }
}
