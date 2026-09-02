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
    let bruCiuChromeMotion = UIView()
    let flckinkNeonCascade = UIStackView()
    let ponllCanvasWall = UIScrollView()
    let bruCiuLayerPlan = UIStackView()
    var flckinkTextureRipples: [UICollectionView] = []
    var aerErstTextureRipple: UICollectionView!
    var ponllPaintSurge: NSLayoutConstraint?
    var bruCiuAerosolBurst: ponllAerosolNoise = .flckinkStencilContrast
    private var flckinkInkSignal = false
    private var aerErststencilPlanSignal = false
    private var aerErstCanvasWall: CGFloat = 0
    var flckinkMuralBloom: [PonllystencilLab] {
        ponllPaintMap(bruCiuAerosolBurst)
    }

    func bruCiuPaintMap(_ aerErstTextureRipple: UICollectionView) -> [PonllystencilLab] {
        let flckinkLayerMap = flckinkTextureRipples.firstIndex { $0 === aerErstTextureRipple } ?? 1
        return ponllPaintMap(flckinkLayerMap == 0 ? .bruCiuMuralTexture : .flckinkStencilContrast)
    }

    private func ponllPaintMap(_ aerErstPaintPlan: ponllAerosolNoise) -> [PonllystencilLab] {
        switch aerErstPaintPlan {
        case .bruCiuMuralTexture:
            return PonllyponllTornEdge.ponllPaintMap().filter { PonllyponllTornEdge.aerErstCrackedWall($0.letterForm) }
        case .flckinkStencilContrast:
            return PonllyponllTornEdge.ponllPaintMap()
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
        let bruCiuPaintSignal = UIRefreshControl()
        bruCiuPaintSignal.tag = aerErstLayerMap
        bruCiuPaintSignal.tintColor = PonllyPalette.cyan
        bruCiuPaintSignal.attributedTitle = NSAttributedString(
            string: "Rpeofnrlelsbhriuncgi aveirdeerosst.f.l.c".ponllPaintaerErstHours,
            attributes: [
                .foregroundColor: PonllyPalette.muted,
                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
            ]
        )
        bruCiuPaintSignal.addTarget(self, action: #selector(bruCiuAerosolSignal(_:)), for: .valueChanged)
        aerErstTextureRipple.refreshControl = bruCiuPaintSignal
    }

    private func flckinkstencilPlanl() {
        guard !aerErststencilPlanSignal else { return }
        guard let bruCiuPaintSignal = aerErstTextureRipple.refreshControl else { return }
        bruCiuPaintSignal.beginRefreshing()
        let ponllAerosolSignal = CGPoint(x: 0, y: -max(bruCiuPaintSignal.bounds.height, 52))
        aerErstTextureRipple.setContentOffset(ponllAerosolSignal, animated: true)
        bruCiuAerosolSignal(bruCiuPaintSignal)
    }

    private func bruCiuPaintFlash() {
        let aerErstAerosolFuse = UIStackView(arrangedSubviews: [aerErstSignBack, ponllWallRhythm])
        aerErstAerosolFuse.axis = .horizontal
        aerErstAerosolFuse.spacing = 12
        aerErstAerosolFuse.alignment = .center
        aerErstAerosolFuse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstAerosolFuse)

        ponllInkPath(aerErstSignBack, bruCiuMuralArc: "FxoylzlAoBwCiDnEg".ponllPaintaerErstHours, flckinkStencilBend: #selector(bruCiuTextureSignal))
        ponllInkPath(ponllWallRhythm, bruCiuMuralArc: "PYrZo0c1e2s3s4".ponllPaintaerErstHours, flckinkStencilBend: #selector(flckinkSketchCue))

        bruCiuChromeMotion.backgroundColor = PonllyPalette.pink
        bruCiuChromeMotion.layer.cornerRadius = 1.5
        aerErstAerosolFuse.layer.zPosition = 30
        bruCiuChromeMotion.layer.zPosition = 31
        bruCiuChromeMotion.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuChromeMotion)

        ponllPaintSurge = bruCiuChromeMotion.centerXAnchor.constraint(equalTo: ponllWallRhythm.centerXAnchor)
        NSLayoutConstraint.activate([
            aerErstAerosolFuse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstAerosolFuse.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            bruCiuChromeMotion.widthAnchor.constraint(equalToConstant: 20),
            bruCiuChromeMotion.heightAnchor.constraint(equalToConstant: 3),
            bruCiuChromeMotion.topAnchor.constraint(equalTo: ponllWallRhythm.bottomAnchor, constant: 6),
            ponllPaintSurge!
        ])
        view.bringSubviewToFront(aerErstAerosolFuse)
        view.bringSubviewToFront(bruCiuChromeMotion)
    }

    private func ponllInkPath(_ bruCiuPaintSeed: UIButton, bruCiuMuralArc: String, flckinkStencilBend: Selector) {
        bruCiuPaintSeed.setTitle(bruCiuMuralArc, for: .normal)
        bruCiuPaintSeed.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        bruCiuPaintSeed.titleLabel?.adjustsFontSizeToFitWidth = true
        bruCiuPaintSeed.titleLabel?.minimumScaleFactor = 0.9
        bruCiuPaintSeed.addTarget(self, action: flckinkStencilBend, for: .touchUpInside)
    }

    private func flckinkInkFuse() {
        flckinkNeonCascade.axis = .vertical
        flckinkNeonCascade.alignment = .center
        flckinkNeonCascade.spacing = 14
        flckinkNeonCascade.isHidden = true
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

        let ponllMuralAura = UILabel()
        ponllMuralAura.text = "Fsotlulvowwx ysztArBeCeDtE FaGrHtIiJsKtLsM NfOrPoQmR SPTrUoVcWeXsYsZ 0t1o2 3b4u5i6l7d8 9yaobucrd ecflgihpi jlkalnmen.o".ponllPaintaerErstHours
        ponllMuralAura.textColor = PonllyPalette.muted
        ponllMuralAura.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        ponllMuralAura.numberOfLines = 0
        ponllMuralAura.textAlignment = .center

        [aerErstAerosolTrail, flckinkWallVeil, ponllMuralAura].forEach(flckinkNeonCascade.addArrangedSubview)
        NSLayoutConstraint.activate([
            flckinkNeonCascade.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flckinkNeonCascade.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            flckinkNeonCascade.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 34),
            flckinkNeonCascade.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -34)
        ])
    }

    func aerErstMuralTrace() {
        let bruCiuStencilEcho = bruCiuAerosolBurst == .flckinkStencilContrast
        aerErstSignBack.setTitleColor(bruCiuStencilEcho ? PonllyPalette.muted : PonllyPalette.pink, for: .normal)
        ponllWallRhythm.setTitleColor(bruCiuStencilEcho ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
        aerErstSignBack.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        ponllWallRhythm.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        flckinkTextureRipples.forEach { $0.isHidden = false }
        flckinkNeonCascade.isHidden = !flckinkMuralBloom.isEmpty
        aerErstTextureRipple.isHidden = flckinkMuralBloom.isEmpty
        ponllPaintSurge?.isActive = false
        ponllPaintSurge = bruCiuChromeMotion.centerXAnchor.constraint(equalTo: bruCiuStencilEcho ? ponllWallRhythm.centerXAnchor : aerErstSignBack.centerXAnchor)
        ponllPaintSurge?.isActive = true
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
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
        guard let aerErstsprayHaloe = PonllyponllTornEdge.ponllWallPeel.firstIndex(where: { $0.graffitiPulse == flckinkSketchContrast.graffitiPulse }) else { return }
        PonllyponllTornEdge.ponllWallPeel[aerErstsprayHaloe] = flckinkSketchContrast
        ponllStencilVeil()
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
        ponllLayerMap(0, bruCiuMuralBend: true)
    }

    @objc private func flckinkSketchCue() {
        ponllLayerMap(1, bruCiuMuralBend: true)
    }

    @objc private func bruCiuPaintFlow(_ aerErstLayerMap: UISwipeGestureRecognizer) {
        let flckinkLayerMap = bruCiuAerosolBurst == .bruCiuMuralTexture ? 0 : 1
        let ponllLayerMap = aerErstLayerMap.direction == .left ? min(flckinkLayerMap + 1, 1) : max(flckinkLayerMap - 1, 0)
        guard ponllLayerMap != flckinkLayerMap else { return }
        self.ponllLayerMap(ponllLayerMap, bruCiuMuralBend: true)
    }

    @objc private func bruCiuAerosolSignal(_ ponllPaintSignal: UIRefreshControl) {
        guard !flckinkInkSignal else {
            ponllPaintSignal.endRefreshing()
            return
        }
        flckinkInkSignal = true
        ponllStencilDepth()
        aerErstSketchRush("Rpeofnrlelsbhriuncgi aveirdeerosst".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.72)
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
            self.aerErststencilPlanSignal = true
            if ponllInitialSignal {
                UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
                    self.ponllCanvasWall.alpha = 1
                    self.aerErstTextureRipple.setContentOffset(.zero, animated: false)
                }
            }
            self.bruCiuChromeAura()
            self.aerErstSketchRush("Vpiodnelolsb ruupcdiaateerde".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill, flckinkFillPattern: 1.1)
        }
    }
}
