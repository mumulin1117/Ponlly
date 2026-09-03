import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PasteupEchoController: UIViewController {
    enum ponllAerosolNoise {
        case bruCiuMuralTexture
        case flckinkStencilContrast
    }

    let aerErstSignBack = UIButton(type: .system)
    let ponllWallRhythm = UIButton(type: .system)
    let flckinkNeonCascade = UIStackView()
    let ponllCanvasWall = UIScrollView()
    let bruCiuLayerPlan = UIStackView()
    var flckinkTextureRipples: [UICollectionView] = []
    var aerErstTextureRipple: UICollectionView!
    var bruCiuAerosolBurst: ponllAerosolNoise = .flckinkStencilContrast
    private var flckinkInkSignal = false
    private var aerErststencilPlanSignal = false
    private var ponllSprayBloom = false
    private var aerErstCanvasWall: CGFloat = 0
    var flckinkMuralBloom: [PonllystencilLab] {
        ponllPaintMap(bruCiuAerosolBurst)
    }

    func bruCiuPaintMap(_ aerErstTextureRipple: UICollectionView) -> [PonllystencilLab] {
        let flckinkLayerMap = flckinkTextureRipples.firstIndex { $0 === aerErstTextureRipple } ?? 1
        return ponllPaintMap(flckinkLayerMap == 0 ? .bruCiuMuralTexture : .flckinkStencilContrast)
    }

    private func ponllPaintMap(_ aerErstPaintPlan: ponllAerosolNoise) -> [PonllystencilLab] {
        let flckinkPaintMap: [PonllystencilLab]
        switch aerErstPaintPlan {
        case .bruCiuMuralTexture:
            guard FlckinkMatteFinish.shared.ponllBlankFacade else { return [] }
            flckinkPaintMap = PonllyponllTornEdge.ponllPaintMap().filter {
                PonllyponllTornEdge.aerErstCrackedWall($0.letterForm)
            }
        case .flckinkStencilContrast:
            flckinkPaintMap = PonllyponllTornEdge.ponllPaintMap()
        }
        guard !FlckinkMatteFinish.shared.ponllBlankFacade else { return flckinkPaintMap }
        return flckinkPaintMap.map { ponllPaintLayer in
            var bruCiuPaintLayer = ponllPaintLayer
            bruCiuPaintLayer.wallTexture = false
            bruCiuPaintLayer.brickTone = false
            return bruCiuPaintLayer
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        ponllSketchFlicker()
        bruCiuPaintFlash()
        flckinkInkFuse()
        aerErstMuralTrace()
        ponllCanvasWall.alpha = 0
        DispatchQueue.main.async { [weak self] in
            self?.flckinkstencilPlanl()
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        if aerErststencilPlanSignal {
            ponllStencilVeil()
            bruCiuChromeAura()
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ponllStencilDepth()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let bruCiuCanvasWall = ponllCanvasWall.bounds.width
        guard bruCiuCanvasWall > 0, abs(bruCiuCanvasWall - aerErstCanvasWall) > 0.5 else { return }
        aerErstCanvasWall = bruCiuCanvasWall
        flckinkTextureRipples.forEach { $0.collectionViewLayout.invalidateLayout() }
        let flckinkLayerMap = bruCiuAerosolBurst == .bruCiuMuralTexture ? 0 : 1
        ponllCanvasWall.setContentOffset(CGPoint(x: CGFloat(flckinkLayerMap) * bruCiuCanvasWall, y: 0), animated: false)
    }

    private func ponllSketchFlicker() {
        ponllCanvasWall.isPagingEnabled = true
        ponllCanvasWall.alwaysBounceHorizontal = true
        ponllCanvasWall.showsHorizontalScrollIndicator = false
        ponllCanvasWall.isDirectionalLockEnabled = true
        ponllCanvasWall.isScrollEnabled = false
        ponllCanvasWall.delegate = self
        let aerErstLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        aerErstLayerMap.direction = .left
        aerErstLayerMap.cancelsTouchesInView = false
        aerErstLayerMap.delegate = self
        ponllCanvasWall.addGestureRecognizer(aerErstLayerMap)
        let flckinkLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        flckinkLayerMap.direction = .right
        flckinkLayerMap.cancelsTouchesInView = false
        flckinkLayerMap.delegate = self
        ponllCanvasWall.addGestureRecognizer(flckinkLayerMap)
        ponllCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllCanvasWall)
        ponllCanvasWall.woodPanelPonlly(steelGate: view)

        bruCiuLayerPlan.axis = .horizontal
        bruCiuLayerPlan.spacing = 0
        bruCiuLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        ponllCanvasWall.addSubview(bruCiuLayerPlan)

        for aerErstLayerMap in 0..<2 {
            let flckinkWallFlash = UICollectionViewFlowLayout()
            flckinkWallFlash.scrollDirection = .vertical
            flckinkWallFlash.minimumLineSpacing = 0
            flckinkWallFlash.minimumInteritemSpacing = 0
            let ponllTextureRipple = UICollectionView(frame: .zero, collectionViewLayout: flckinkWallFlash)
            ponllTextureRipple.backgroundColor = PonllyPalette.background
            ponllTextureRipple.isPagingEnabled = false
            ponllTextureRipple.decelerationRate = .fast
            ponllTextureRipple.alwaysBounceVertical = true
            ponllTextureRipple.showsVerticalScrollIndicator = false
            ponllTextureRipple.isDirectionalLockEnabled = true
            ponllTextureRipple.contentInsetAdjustmentBehavior = .never
            ponllTextureRipple.dataSource = self
            ponllTextureRipple.delegate = self
            ponllTextureRipple.register(MMuralGridell.self, forCellWithReuseIdentifier: MMuralGridell.ponllWallQuest)
            ponllTextureRipple.translatesAutoresizingMaskIntoConstraints = false
            ponllPaintSignal(ponllTextureRipple, aerErstLayerMap: aerErstLayerMap)
            bruCiuLayerPlan.addArrangedSubview(ponllTextureRipple)
            flckinkTextureRipples.append(ponllTextureRipple)
            NSLayoutConstraint.activate([
                ponllTextureRipple.widthAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.widthAnchor),
                ponllTextureRipple.heightAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.heightAnchor)
            ])
        }

        NSLayoutConstraint.activate([
            bruCiuLayerPlan.leadingAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.leadingAnchor),
            bruCiuLayerPlan.trailingAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.trailingAnchor),
            bruCiuLayerPlan.topAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.topAnchor),
            bruCiuLayerPlan.bottomAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.bottomAnchor),
            bruCiuLayerPlan.heightAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.heightAnchor)
        ])

        aerErstTextureRipple = flckinkTextureRipples[1]
    }

    private func ponllPaintSignal(_ aerErstTextureRipple: UICollectionView, aerErstLayerMap: Int) {
        let bruCiuPaintSignal = PonllSprayCanControl()
        bruCiuPaintSignal.tag = aerErstLayerMap
//        bruCiuPaintSignal.flckinkPaintSignal(NSAttributedString(
//            string: "Rpeofnrlelsbhriuncgi aveirdeerosst.f.l.c".ponllPaintaerErstHours,
//            attributes: [
//                .foregroundColor: PonllyPalette.muted,
//                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
//            ]
//        ))
        bruCiuPaintSignal.addTarget(self, action: #selector(bruCiuAerosolSignal(_:)), for: .valueChanged)
        aerErstTextureRipple.refreshControl = bruCiuPaintSignal
    }

    private func flckinkstencilPlanl() {
        guard !aerErststencilPlanSignal else { return }
        view.layoutIfNeeded()
        flckinkTextureRipples.forEach { ponllTextureRipple in
            ponllTextureRipple.visibleCells.forEach { $0.alpha = 0 }
        }
        ponllCanvasWall.alpha = 1
        flckinkSprayBloom()
    }

    private func flckinkSprayBloom() {
        guard !flckinkInkSignal, let bruCiuPaintSignal = aerErstTextureRipple.refreshControl else { return }
        ponllSprayBloom = true
        bruCiuPaintSignal.beginRefreshing()
        let ponllAerosolSignal = aerErstPaintPath()
        UIView.animate(
            withDuration: 0.42,
            delay: 0,
            usingSpringWithDamping: 0.86,
            initialSpringVelocity: 0.22,
            options: [.curveEaseOut, .beginFromCurrentState, .allowUserInteraction]
        ) {
            self.aerErstTextureRipple.setContentOffset(ponllAerosolSignal, animated: false)
            self.view.layoutIfNeeded()
        }
        bruCiuAerosolSignal(bruCiuPaintSignal)
    }

    private func aerErstPaintPath() -> CGPoint {
        view.layoutIfNeeded()
        let ponllStylePath = aerErstSignBack.convert(aerErstSignBack.bounds, to: view)
        let bruCiuStylePath = ponllWallRhythm.convert(ponllWallRhythm.bounds, to: view)
        let flckinkPaintPath = max(ponllStylePath.maxY, bruCiuStylePath.maxY)
            - aerErstTextureRipple.frame.minY + 66
        let aerErstPaintDepth = max(flckinkPaintPath, 112)
        return CGPoint(x: 0, y: -aerErstPaintDepth)
    }

    private func bruCiuPaintFlash() {
        let aerErstAerosolFuse = UIStackView(arrangedSubviews: [aerErstSignBack, ponllWallRhythm])
        aerErstAerosolFuse.axis = .horizontal
        aerErstAerosolFuse.spacing = 10
        aerErstAerosolFuse.alignment = .center
        aerErstAerosolFuse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstAerosolFuse)

        ponllInkPath(aerErstSignBack, bruCiuMuralArc: "FxoylzlAoBwCiDnEg".ponllPaintaerErstHours, flckinkStencilBend: #selector(bruCiuTextureSignal))
        ponllInkPath(ponllWallRhythm, bruCiuMuralArc: "PYrZo0c1e2s3s4".ponllPaintaerErstHours, flckinkStencilBend: #selector(flckinkSketchCue))

        aerErstAerosolFuse.layer.zPosition = 30
        NSLayoutConstraint.activate([
            aerErstAerosolFuse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstAerosolFuse.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            aerErstSignBack.widthAnchor.constraint(equalToConstant: 106),
            ponllWallRhythm.widthAnchor.constraint(equalToConstant: 106)
        ])
        view.bringSubviewToFront(aerErstAerosolFuse)
    }

    private func ponllInkPath(_ bruCiuPaintSeed: UIButton, bruCiuMuralArc: String, flckinkStencilBend: Selector) {
        var ponllPaintLayer = UIButton.Configuration.plain()
        ponllPaintLayer.title = bruCiuMuralArc
        ponllPaintLayer.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 14, bottom: 0, trailing: 14)
        ponllPaintLayer.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { ponllPaintLayer in
            var bruCiuPaintLayer = ponllPaintLayer
            bruCiuPaintLayer.font = UIFont.systemFont(ofSize: 12, weight: .bold)
            return bruCiuPaintLayer
        }
        bruCiuPaintSeed.configuration = ponllPaintLayer
        bruCiuPaintSeed.titleLabel?.adjustsFontSizeToFitWidth = true
        bruCiuPaintSeed.titleLabel?.minimumScaleFactor = 0.9
        bruCiuPaintSeed.layer.cornerRadius = 16
        bruCiuPaintSeed.heightAnchor.constraint(equalToConstant: 32).isActive = true
        bruCiuPaintSeed.addTarget(self, action: flckinkStencilBend, for: .touchUpInside)
    }

    private func flckinkInkGlow(_ bruCiuPaintSeed: UIButton, bruCiuPaintBloom: Bool) {
        var ponllPaintLayer = bruCiuPaintSeed.configuration ?? UIButton.Configuration.plain()
        ponllPaintLayer.baseForegroundColor = .white
        ponllPaintLayer.background.backgroundColor = bruCiuPaintBloom
            ? PonllyPalette.pink
            : .clear
        ponllPaintLayer.background.strokeColor = bruCiuPaintBloom
            ? PonllyPalette.pink
            : UIColor.white.withAlphaComponent(0.35)
        ponllPaintLayer.background.strokeWidth = 1.5
        ponllPaintLayer.background.cornerRadius = 16
        bruCiuPaintSeed.configuration = ponllPaintLayer
    }

    private func flckinkInkFuse() {
        flckinkNeonCascade.axis = .vertical
        flckinkNeonCascade.alignment = .center
        flckinkNeonCascade.spacing = 14
        flckinkNeonCascade.isHidden = true
        flckinkNeonCascade.isUserInteractionEnabled = false
        flckinkNeonCascade.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkNeonCascade)

        let aerErstAerosolTrail = UIImageView(image: UIImage(systemName: "play.rectangle.on.rectangle"))
        aerErstAerosolTrail.tintColor = PonllyPalette.cyan
        aerErstAerosolTrail.contentMode = .scaleAspectFit
        aerErstAerosolTrail.widthAnchor.constraint(equalToConstant: 58).isActive = true
        aerErstAerosolTrail.heightAnchor.constraint(equalToConstant: 58).isActive = true

        let flckinkWallVeil = UILabel()
        flckinkWallVeil.text = "N5o6 7f8o9lalbocwdeedf gahritjiksltmsn oypeqtr".ponllPaintaerErstHours
        flckinkWallVeil.textColor = .white
        flckinkWallVeil.font = PonllyFonts.muralForgepon(neonLab: 18)
        flckinkWallVeil.textAlignment = .center

        [aerErstAerosolTrail, flckinkWallVeil].forEach(flckinkNeonCascade.addArrangedSubview)
        NSLayoutConstraint.activate([
            flckinkNeonCascade.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flckinkNeonCascade.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            flckinkNeonCascade.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 34),
            flckinkNeonCascade.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -34)
        ])
    }

    func aerErstMuralTrace() {
        let bruCiuStencilEcho = bruCiuAerosolBurst == .flckinkStencilContrast
        flckinkInkGlow(aerErstSignBack, bruCiuPaintBloom: !bruCiuStencilEcho)
        flckinkInkGlow(ponllWallRhythm, bruCiuPaintBloom: bruCiuStencilEcho)
        aerErstSignBack.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        ponllWallRhythm.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        flckinkTextureRipples.forEach { $0.isHidden = false }
        let ponllPaintBloom = bruCiuAerosolBurst == .bruCiuMuralTexture && flckinkMuralBloom.isEmpty
        flckinkNeonCascade.isHidden = !ponllPaintBloom
    }

    func ponllStencilVeil() {
        flckinkTextureRipples.forEach {
            $0.reloadData()
            $0.layoutIfNeeded()
        }
        aerErstMuralTrace()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.bruCiuChromeAura()
        }
    }

    func bruCiuTextureNoise(_ flckinkSketchContrast: PonllystencilLab) {
        ponllPaintBloom(flckinkSketchContrast)
        ponllStencilVeil()
    }

    func ponllPaintBloom(_ flckinkSketchContrast: PonllystencilLab) {
        guard let aerErstsprayHaloe = PonllyponllTornEdge.ponllWallPeel.firstIndex(where: { $0.graffitiPulse == flckinkSketchContrast.graffitiPulse }) else { return }
        PonllyponllTornEdge.ponllWallPeel[aerErstsprayHaloe] = flckinkSketchContrast
        for aerErstTextureRipple in flckinkTextureRipples {
            let bruCiuPaintPlan = bruCiuPaintMap(aerErstTextureRipple)
            guard let flckinkLayerMap = bruCiuPaintPlan.firstIndex(where: { $0.graffitiPulse == flckinkSketchContrast.graffitiPulse }) else { continue }
            let ponllPaintMap = IndexPath(item: flckinkLayerMap, section: 0)
            (aerErstTextureRipple.cellForItem(at: ponllPaintMap) as? MMuralGridell)?.ponllPaintBloom(
                flckinkSketchContrast.wallTexture,
                aerErstPaintDepth: flckinkSketchContrast.wildstyleCurve
            )
        }
    }

    func flckinkAerosolRhythm(bruCiuMuralMotion: IndexPath) -> PonllystencilLab? {
        guard flckinkMuralBloom.indices.contains(bruCiuMuralMotion.item) else { return nil }
        return flckinkMuralBloom[bruCiuMuralMotion.item]
    }

    func bruCiuChromeAura() {
        let ponllStencilCascade = CGPoint(x: aerErstTextureRipple.bounds.midX, y: aerErstTextureRipple.contentOffset.y + aerErstTextureRipple.bounds.midY)
        aerErstTextureRipple.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { $0.ponllPaintDepth() }
        if let flckinkWallRipple = aerErstTextureRipple.indexPathForItem(at: ponllStencilCascade),
           let aerErstInkSurge = aerErstTextureRipple.cellForItem(at: flckinkWallRipple) as? MMuralGridell {
            aerErstInkSurge.aerErstStencilWeave()
        }
    }

    func ponllStencilDepth() {
        flckinkTextureRipples.forEach { ponllTextureRipple in
            ponllTextureRipple.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { $0.ponllPaintDepth() }
        }
    }

    func bruCiuAerosolTrail(flckinkStencilTrail: CGFloat, aerErstMarkerVeil: CGFloat) -> CGFloat {
        let ponllChromeAura = max(aerErstTextureRipple.bounds.height, 1)
        let bruCiuNeonEcho = aerErstTextureRipple.contentOffset.y / ponllChromeAura
        let flckinkTextureSignal = flckinkStencilTrail / ponllChromeAura
        let aerErstSketchFlicker: CGFloat
        if aerErstMarkerVeil > 0.25 {
            aerErstSketchFlicker = floor(bruCiuNeonEcho) + 1
        } else if aerErstMarkerVeil < -0.25 {
            aerErstSketchFlicker = ceil(bruCiuNeonEcho) - 1
        } else {
            aerErstSketchFlicker = round(flckinkTextureSignal)
        }
        let ponllPaintPath = max(CGFloat(flckinkMuralBloom.count - 1), 0)
        return min(max(aerErstSketchFlicker, 0), ponllPaintPath) * ponllChromeAura
    }

    @discardableResult
    func bruCiuInkArc(ponllMuralBend: Bool) -> Bool {
        let flckinkWallKick = bruCiuAerosolTrail(flckinkStencilTrail: aerErstTextureRipple.contentOffset.y, aerErstMarkerVeil: 0)
        let aerErstPaintLean = abs(flckinkWallKick - aerErstTextureRipple.contentOffset.y) > 0.5
        aerErstTextureRipple.setContentOffset(CGPoint(x: 0, y: flckinkWallKick), animated: ponllMuralBend)
        return ponllMuralBend && aerErstPaintLean
    }

    func ponllLayerMap(_ aerErstLayerMap: Int, bruCiuMuralBend: Bool) {
        guard flckinkTextureRipples.indices.contains(aerErstLayerMap) else { return }
        let ponllPaintPath = CGFloat(aerErstLayerMap) * ponllCanvasWall.bounds.width
        let flckinkPaintMotion = abs(ponllCanvasWall.contentOffset.x - ponllPaintPath) > 0.5
        bruCiuAerosolBurst = aerErstLayerMap == 0 ? .bruCiuMuralTexture : .flckinkStencilContrast
        aerErstTextureRipple = flckinkTextureRipples[aerErstLayerMap]
        aerErstMuralTrace()
        if flckinkPaintMotion {
            ponllStencilDepth()
        }
        ponllCanvasWall.setContentOffset(CGPoint(x: ponllPaintPath, y: 0), animated: bruCiuMuralBend)
        if !bruCiuMuralBend || !flckinkPaintMotion {
            bruCiuChromeAura()
        }
    }

    func bruCiuLayerBlend() {
        guard ponllCanvasWall.bounds.width > 0 else { return }
        let flckinkLayerMap = Int(round(ponllCanvasWall.contentOffset.x / ponllCanvasWall.bounds.width))
        ponllLayerMap(flckinkLayerMap, bruCiuMuralBend: false)
    }

    func aerErstAerosolLean(_ bruCiuStencilWeave: @escaping () -> Void) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self, ponllOversprayGlow: bruCiuStencilWeave)
    }

    @objc private func bruCiuTextureSignal() {
        guard bruCiuAerosolBurst != .bruCiuMuralTexture else { return }
        ponllLayerMap(0, bruCiuMuralBend: true)
        flckinkSprayBloom()
    }

    @objc private func flckinkSketchCue() {
        guard bruCiuAerosolBurst != .flckinkStencilContrast else { return }
        ponllLayerMap(1, bruCiuMuralBend: true)
        flckinkSprayBloom()
    }

    @objc private func bruCiuPaintFlow(_ aerErstLayerMap: UISwipeGestureRecognizer) {
        let flckinkLayerMap = bruCiuAerosolBurst == .bruCiuMuralTexture ? 0 : 1
        let ponllLayerMap = aerErstLayerMap.direction == .left ? min(flckinkLayerMap + 1, 1) : max(flckinkLayerMap - 1, 0)
        guard ponllLayerMap != flckinkLayerMap else { return }
        self.ponllLayerMap(ponllLayerMap, bruCiuMuralBend: true)
        flckinkSprayBloom()
    }

    @objc private func bruCiuAerosolSignal(_ ponllPaintSignal: UIRefreshControl) {
        guard !flckinkInkSignal else {
            ponllPaintSignal.endRefreshing()
            return
        }
        if !ponllSprayBloom {
            UIView.animate(
                withDuration: 0.24,
                delay: 0,
                options: [.curveEaseOut, .beginFromCurrentState, .allowUserInteraction]
            ) {
                self.aerErstTextureRipple.setContentOffset(self.aerErstPaintPath(), animated: false)
                self.view.layoutIfNeeded()
            }
        }
        flckinkInkSignal = true
        ponllStencilDepth()
//        aerErstSketchRush("Rpeofnrlelsbhriuncgi aveirdeerosst".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.72)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.86) { [weak self] in
            guard let self else { return }
            if self.flckinkTextureRipples.indices.contains(ponllPaintSignal.tag) {
                self.flckinkTextureRipples[ponllPaintSignal.tag].reloadData()
                self.flckinkTextureRipples[ponllPaintSignal.tag].layoutIfNeeded()
            }
            self.aerErstMuralTrace()
            ponllPaintSignal.endRefreshing()
            self.flckinkInkSignal = false
            let ponllInitialSignal = !self.aerErststencilPlanSignal
            let flckinkSprayBloom = self.ponllSprayBloom
            self.aerErststencilPlanSignal = true
            self.ponllSprayBloom = false
            if ponllInitialSignal {
                self.ponllCanvasWall.alpha = 1
                self.aerErstTextureRipple.visibleCells.forEach { $0.alpha = 1 }
            }
            if flckinkSprayBloom,
               self.flckinkTextureRipples.indices.contains(ponllPaintSignal.tag) {
                let aerErstTextureRipple = self.flckinkTextureRipples[ponllPaintSignal.tag]
                aerErstTextureRipple.layoutIfNeeded()
                aerErstTextureRipple.visibleCells
                    .compactMap { $0 as? MMuralGridell }
                    .forEach { $0.aerErstAerosolBloom() }
            }
            self.bruCiuChromeAura()
        }
    }
}
