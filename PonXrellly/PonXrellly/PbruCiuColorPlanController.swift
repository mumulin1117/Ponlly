import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PbruCiuColorPlanController: UIViewController {
 
    private let flckinkAerosolFlash = UIButton(type: .system)
    private let aerErstMuralFuse = UIButton(type: .system)
    private let ponllInkBloom = UIScrollView()
    private let bruCiuWallFlicker = UIStackView()
    private var aerErstLayerPlans: [PonllLayerPlanView] = []
    private var aerErstCanvasWall: CGFloat = 0
    private var bruCiuInkSignal = false
    private var flckinkWallSignal = false
    private var ponllStencilTrace: PonllyBattleStatus = .bruCiuSprayBloomponll

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        navigationController?.navigationBar.isHidden = true
        bruCiuMarkerTrail()
        ponllInkBloom.alpha = 0
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstNeonAura), name: .ponllyBattlesponllNozzleSet, object: nil)
        DispatchQueue.main.async { [weak self] in
            self?.bruCiuPaintSignal()
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        if flckinkWallSignal {
            flckinkChromeVeil(.bruCiuSprayBloomponll)
            flckinkChromeVeil(.flckinkWallTexturepoj)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let bruCiuCanvasWall = ponllInkBloom.bounds.width
        guard bruCiuCanvasWall > 0, abs(bruCiuCanvasWall - aerErstCanvasWall) > 0.5 else { return }
        aerErstCanvasWall = bruCiuCanvasWall
        let aerErstLayerMap = ponllStencilTrace == .bruCiuSprayBloomponll ? 0 : 1
        ponllInkBloom.setContentOffset(CGPoint(x: CGFloat(aerErstLayerMap) * bruCiuCanvasWall, y: 0), animated: false)
    }

    private func bruCiuMarkerTrail() {
        let flckinkPaintEcho = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 13/255, green: 16/255, blue: 22/255, alpha: 1)])
        view.addSubview(flckinkPaintEcho)
        flckinkPaintEcho.woodPanelPonlly(steelGate: view)

      

        let aerErstInkSignal = UIView()
        aerErstInkSignal.translatesAutoresizingMaskIntoConstraints = false
        let ponllAerosolQuest = UILabel()
        ponllAerosolQuest.text = "Ppoqnrlsltyu".ponllPaintaerErstHours
        ponllAerosolQuest.font = PonllyFonts.muralForgepon(neonLab: 22)
        ponllAerosolQuest.textColor = .white
        ponllAerosolQuest.layer.shadowColor = PonllyPalette.pink.cgColor
        ponllAerosolQuest.layer.shadowOpacity = 0.35
        ponllAerosolQuest.layer.shadowRadius = 10
        ponllAerosolQuest.translatesAutoresizingMaskIntoConstraints = false
        aerErstInkSignal.addSubview(ponllAerosolQuest)

        let bruCiuMuralCue = UIButton(type: .system)
        bruCiuMuralCue.setImage(UIImage(named: "stencilBloom")?.withRenderingMode(.alwaysOriginal), for: .normal)
        bruCiuMuralCue.imageView?.contentMode = .scaleAspectFit
        bruCiuMuralCue.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMuralCue.addTarget(self, action: #selector(ponllTexturePath), for: .touchUpInside)
        aerErstInkSignal.addSubview(bruCiuMuralCue)

        let flckinkStencilSeed = UIStackView(arrangedSubviews: [flckinkAerosolFlash, aerErstMuralFuse])
        flckinkAerosolFlash.setTitleColor(.white, for: .normal)
        aerErstMuralFuse.setTitleColor(.white, for: .normal)
        flckinkStencilSeed.axis = .horizontal
        flckinkStencilSeed.spacing = 10
        flckinkStencilSeed.translatesAutoresizingMaskIntoConstraints = false
        aerErstInkSignal.addSubview(flckinkStencilSeed)

        view.addSubview(aerErstInkSignal)
        
        aerErstChromeArc(flckinkAerosolFlash, ponllNeonBend: "Hvowtx yBzaAtBtClDeEsF".ponllPaintaerErstHours, bruCiuTextureKick: .bruCiuSprayBloomponll)
        aerErstChromeArc(aerErstMuralFuse, ponllNeonBend: "WGaHiItJiKnLgM NfOoPrQ RCShTaUlVlWeXnYgZe0".ponllPaintaerErstHours, bruCiuTextureKick: .flckinkWallTexturepoj)
//        bruCiuWallFlicker.addArrangedSubview(aerErstInkSignal)

        ponllInkBloom.isPagingEnabled = true
        ponllInkBloom.alwaysBounceHorizontal = true
        ponllInkBloom.showsHorizontalScrollIndicator = false
        ponllInkBloom.isDirectionalLockEnabled = true
        ponllInkBloom.isScrollEnabled = false
        ponllInkBloom.delegate = self
        let aerErstLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        aerErstLayerMap.direction = .left
        aerErstLayerMap.cancelsTouchesInView = false
        aerErstLayerMap.delegate = self
        ponllInkBloom.addGestureRecognizer(aerErstLayerMap)
        let flckinkLayerMap = UISwipeGestureRecognizer(target: self, action: #selector(bruCiuPaintFlow(_:)))
        flckinkLayerMap.direction = .right
        flckinkLayerMap.cancelsTouchesInView = false
        flckinkLayerMap.delegate = self
        ponllInkBloom.addGestureRecognizer(flckinkLayerMap)
        view.addSubview(ponllInkBloom)
        ponllInkBloom.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ponllInkBloom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:0),
            ponllInkBloom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:0),
            ponllInkBloom.topAnchor.constraint(equalTo: flckinkStencilSeed.bottomAnchor, constant: 28),
            ponllInkBloom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])

        bruCiuWallFlicker.axis = .horizontal
        bruCiuWallFlicker.spacing = 0
        bruCiuWallFlicker.translatesAutoresizingMaskIntoConstraints = false
        ponllInkBloom.addSubview(bruCiuWallFlicker)

        for aerErstPaintPlan in 0..<2 {
            let ponllLayerPlan = PonllLayerPlanView(
                aerErstSidewalkEdge: 16,
                ponllRoofLine: 30,
                bruCiuWallMark: 0,
                flckinkLayerBlend: 16
            )
            ponllLayerPlan.translatesAutoresizingMaskIntoConstraints = false
            ponllLayerPlan.flckinkPaintSignal.tag = aerErstPaintPlan
            ponllLayerPlan.ponllCanvasWall.delegate = self
            flckinkChromeSignal(ponllLayerPlan)
            bruCiuWallFlicker.addArrangedSubview(ponllLayerPlan)
            aerErstLayerPlans.append(ponllLayerPlan)
            NSLayoutConstraint.activate([
                ponllLayerPlan.widthAnchor.constraint(equalTo: ponllInkBloom.frameLayoutGuide.widthAnchor),
                ponllLayerPlan.heightAnchor.constraint(equalTo: ponllInkBloom.frameLayoutGuide.heightAnchor)
            ])
        }
        
        NSLayoutConstraint.activate([
            aerErstInkSignal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            aerErstInkSignal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            aerErstInkSignal.heightAnchor.constraint(equalToConstant: 116),
            aerErstInkSignal.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            bruCiuWallFlicker.leadingAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.leadingAnchor),
            bruCiuWallFlicker.trailingAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.trailingAnchor),
            bruCiuWallFlicker.topAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.topAnchor),
            bruCiuWallFlicker.bottomAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.bottomAnchor),
            bruCiuWallFlicker.heightAnchor.constraint(equalTo: ponllInkBloom.frameLayoutGuide.heightAnchor),
            
            ponllAerosolQuest.leadingAnchor.constraint(equalTo: aerErstInkSignal.leadingAnchor, constant: 20),
            ponllAerosolQuest.centerYAnchor.constraint(equalTo: bruCiuMuralCue.centerYAnchor),
            bruCiuMuralCue.trailingAnchor.constraint(equalTo: aerErstInkSignal.trailingAnchor, constant: -24),
            bruCiuMuralCue.topAnchor.constraint(equalTo: aerErstInkSignal.topAnchor, constant: 2),
            bruCiuMuralCue.widthAnchor.constraint(equalToConstant: 52),
            bruCiuMuralCue.heightAnchor.constraint(equalToConstant: 52),
            flckinkStencilSeed.leadingAnchor.constraint(equalTo: aerErstInkSignal.leadingAnchor, constant: 20),
            flckinkStencilSeed.trailingAnchor.constraint(lessThanOrEqualTo: aerErstInkSignal.trailingAnchor, constant: -20),
            flckinkStencilSeed.topAnchor.constraint(equalTo: ponllAerosolQuest.bottomAnchor, constant: 18),
            flckinkAerosolFlash.heightAnchor.constraint(equalToConstant: 32),
            aerErstMuralFuse.heightAnchor.constraint(equalToConstant: 32)
        ])

        flckinkChromeVeil(.bruCiuSprayBloomponll)
        flckinkChromeVeil(.flckinkWallTexturepoj)
        ponllWallDepth()
    }

    private func flckinkChromeSignal(_ ponllLayerPlan: PonllLayerPlanView) {
        ponllLayerPlan.flckinkPaintSignal.flckinkPaintSignal(NSAttributedString(
            string: "Rpeofnrlelsbhriuncgi abeartetrlset falrceknian.k.p.o".ponllPaintaerErstHours,
            attributes: [
                .foregroundColor: PonllyPalette.muted,
                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
            ]
        ))
        ponllLayerPlan.flckinkPaintSignal.addTarget(self, action: #selector(aerErstPaintSignal(_:)), for: .valueChanged)
    }

    private func bruCiuPaintSignal() {
        guard !flckinkWallSignal else { return }
        bruCiuPaintSignal(.bruCiuSprayBloomponll)
    }

    private func bruCiuPaintSignal(_ aerErstPaintPlan: PonllyBattleStatus) {
        let ponllLayerMap = aerErstPaintPlan == .bruCiuSprayBloomponll ? 0 : 1
        guard aerErstLayerPlans.indices.contains(ponllLayerMap) else { return }
        let ponllLayerPlan = aerErstLayerPlans[ponllLayerMap]
        guard !ponllLayerPlan.flckinkPaintSignal.isRefreshing else { return }
        ponllLayerPlan.flckinkPaintSignal.beginRefreshing()
        let aerErstAerosolSignal = CGPoint(x: 0, y: -max(ponllLayerPlan.flckinkPaintSignal.bounds.height, 52))
        ponllLayerPlan.ponllCanvasWall.setContentOffset(aerErstAerosolSignal, animated: true)
        aerErstPaintSignal(ponllLayerPlan.flckinkPaintSignal)
    }

    private func aerErstChromeArc(_ flckinkPaintSpark: UIButton, ponllNeonBend: String, bruCiuTextureKick: PonllyBattleStatus) {
        flckinkPaintSpark.setTitle(ponllNeonBend, for: .normal)
        flckinkPaintSpark.titleLabel?.font = bruCiuTextureKick == .bruCiuSprayBloomponll ? PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium) : PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        flckinkPaintSpark.titleLabel?.adjustsFontSizeToFitWidth = true
        flckinkPaintSpark.titleLabel?.minimumScaleFactor = 0.86
        flckinkPaintSpark.layer.cornerRadius = 16
        flckinkPaintSpark.layer.borderWidth = 1.5
        flckinkPaintSpark.tag = bruCiuTextureKick == .bruCiuSprayBloomponll ? 0 : 1
        flckinkPaintSpark.addTarget(self, action: #selector(bruCiuSketchWeave(_:)), for: .touchUpInside)
        flckinkPaintSpark.widthAnchor.constraint(equalToConstant: bruCiuTextureKick == .bruCiuSprayBloomponll ? 106 : 174).isActive = true
    }

    private func flckinkChromeVeil(_ aerErstPaintPlan: PonllyBattleStatus) {
        let ponllLayerMap = aerErstPaintPlan == .bruCiuSprayBloomponll ? 0 : 1
        guard aerErstLayerPlans.indices.contains(ponllLayerMap) else { return }
        let bruCiuLayerPlan = aerErstLayerPlans[ponllLayerMap].bruCiuLayerPlan
        while !bruCiuLayerPlan.arrangedSubviews.isEmpty {
            bruCiuLayerPlan.arrangedSubviews.last?.removeFromSuperview()
        }
        let ponllInkGrit = PonllyponllTornEdge.flckinkPaintRun(aerErstDripTrail: aerErstPaintPlan)
        for bruCiuAerosolNoise in ponllInkGrit {
            if aerErstPaintPlan == .flckinkWallTexturepoj {
                let flckinkMuralTexture = PonllyWaitingBattleCardView(fencePiece: bruCiuAerosolNoise)
                flckinkMuralTexture.paintQuest = { [weak self] in
                    self?.bruCiuaerosolHazece(bruCiuAerosolNoise)
                }
                flckinkMuralTexture.zMotion = { [weak self, weak flckinkMuralTexture] aerErstStencilMotion in
                    self?.flckinkNeonCascade(aerErstStencilMotion, ponllPaintFlow: flckinkMuralTexture?.flckinkPaintFlow)
                }
                flckinkMuralTexture.styleNoise = { [weak self] in
                    self?.bruCiuaerosolHazece(bruCiuAerosolNoise)
                }
                flckinkMuralTexture.bruCiuMuralForge = { [weak self] in self?.bruCiuPaintSurge(for: bruCiuAerosolNoise) }
                flckinkMuralTexture.ponllMuralWall = { [weak self] ponllPaintMap, bruCiuStyleMap in
                    self?.aerErstMuralWall(ponllPaintMap, bruCiuStyleMap)
                }
                bruCiuLayerPlan.addArrangedSubview(flckinkMuralTexture)
            } else {
                let aerErstSketchContrast = CkinkMuralLabView(
                    flckinkWallPaste: bruCiuAerosolNoise,
                    aerErstPaintBloom: false
                )
                aerErstSketchContrast.bruCiuSilverSheen = { [weak self] in
                    self?.bruCiuaerosolHazece(bruCiuAerosolNoise)
                }
                aerErstSketchContrast.flckinkPrimerCoat = { [weak self] in self?.bruCiuPaintSurge(for: bruCiuAerosolNoise) }
                aerErstSketchContrast.aerErstPaintBase = { [weak self, weak aerErstSketchContrast] ponllWallBurst in
                    self?.flckinkNeonCascade(
                        ponllWallBurst,
                        ponllPaintFlow: aerErstSketchContrast?.flckinkPaintFlow(ponllWallBurst.graffitiPulse)
                    )
                }
                aerErstSketchContrast.ponllMuralWall = { [weak self] ponllPaintMap, bruCiuStyleMap in
                    self?.aerErstMuralWall(ponllPaintMap, bruCiuStyleMap)
                }
                bruCiuLayerPlan.addArrangedSubview(aerErstSketchContrast)
            }
        }
    }

//    private func aerErstPaintGlow() -> UIView {
//        let bruCiuInkRipple = UILabel()
//        bruCiuInkRipple.text = ponllStencilTrace == .bruCiuSprayBloomponll ? "H1o2t3 4B5a6t7t8l9easb".ponllPaintaerErstHours : "Wcadietfignhgi jFkolrm nCohpaqlrlsetnugvew".ponllPaintaerErstHours
//        bruCiuInkRipple.textColor = .white
//        bruCiuInkRipple.font = PonllyFonts.muralForgepon(neonLab: 12)
//        return bruCiuInkRipple
//    }

    private func ponllWallDepth() {
        let flckinkMuralSurge = ponllStencilTrace == .bruCiuSprayBloomponll
        flckinkAerosolFlash.backgroundColor = flckinkMuralSurge ? PonllyPalette.pink : .clear
        flckinkAerosolFlash.setTitleColor(.white, for: .normal)
        flckinkAerosolFlash.layer.borderColor = flckinkMuralSurge ? PonllyPalette.pink.cgColor : UIColor.white.withAlphaComponent(0.35).cgColor
        flckinkAerosolFlash.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        
        aerErstMuralFuse.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        aerErstMuralFuse.backgroundColor = flckinkMuralSurge ? .clear : PonllyPalette.pink
        aerErstMuralFuse.setTitleColor(.white, for: .normal)
        aerErstMuralFuse.layer.borderColor = flckinkMuralSurge ? UIColor.white.withAlphaComponent(0.35).cgColor : PonllyPalette.pink.cgColor
    }

    private func ponllLayerMap(_ aerErstLayerMap: Int, bruCiuMuralBend: Bool) {
        guard (0..<2).contains(aerErstLayerMap) else { return }
        ponllStencilTrace = aerErstLayerMap == 0 ? .bruCiuSprayBloomponll : .flckinkWallTexturepoj
        ponllWallDepth()
        flckinkChromeVeil(ponllStencilTrace)
        guard ponllInkBloom.bounds.width > 0 else { return }
        ponllInkBloom.setContentOffset(
            CGPoint(x: CGFloat(aerErstLayerMap) * ponllInkBloom.bounds.width, y: 0),
            animated: bruCiuMuralBend
        )
    }

    private func bruCiuLayerBlend() {
        guard ponllInkBloom.bounds.width > 0 else { return }
        let flckinkLayerMap = Int(round(ponllInkBloom.contentOffset.x / ponllInkBloom.bounds.width))
        ponllLayerMap(flckinkLayerMap, bruCiuMuralBend: false)
    }

    private func bruCiuaerosolHazece(_ aerErstInkMotion: PonllyBattle) {
        let ponllPaintCascade = PonllyponllTornEdge.flckinkPaintRun().first { $0.graffitiPulse == aerErstInkMotion.graffitiPulse } ?? aerErstInkMotion
        let bruCiuMuralFlicker = PbruCiuStencilLabController(flckinkPaintVeil: ponllPaintCascade)
        bruCiuMuralFlicker.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(bruCiuMuralFlicker, animated: true)
    }

    private func flckinkNeonCascade(_ flckinkStencilFlash: PonllyaerErstTwoToneFillr, ponllPaintFlow: UIView?) {
        let aerErstChromeFuse = FlckinkPrimerCoatController(flckinkStencilFlash)
        aerErstChromeFuse.hidesBottomBarWhenPushed = true
        ponllPaintFlowPush(
            aerErstChromeFuse,
            bruCiuPaintFlow: ponllPaintFlow,
            aerErstGraffitiPulse: flckinkStencilFlash.graffitiPulse
        )
    }

    private func ponllTextureRipple(_ ponllNeonTrace: PonllyBattle) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let bruCiuPaintTrail = BruCiuSilverSheenController(ponllPrimerCoat: ponllNeonTrace)
            bruCiuPaintTrail.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(bruCiuPaintTrail, animated: true)
        }
    }

    private func bruCiuPaintSurge(for flckinkInkVeil: PonllyBattle) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let ponllAerosolEcho = PonllyroughFillController(blackOutline: flckinkInkVeil)
            ponllAerosolEcho.fadeSpray = { [weak self] in
                self?.aerErstSketchRush("R1e2p3o4r5t6 7s8u9bambictdteefdg".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
            }
            ponllAerosolEcho.modalPresentationStyle = .overFullScreen
            ponllAerosolEcho.modalTransitionStyle = .crossDissolve
            self.present(ponllAerosolEcho, animated: true)
        }
    }

    private func aerErstMuralWall(
        _ ponllPaintMap: PonllyaerErstSolidMarkerk,
        _ bruCiuStyleMap: PonllyaerErstTwoToneFillr
    ) {
        let flckinkMuralWall = PonllMuralWallController(
            ponllPaintMap: ponllPaintMap,
            bruCiuStyleMap: bruCiuStyleMap
        )
        flckinkMuralWall.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(flckinkMuralWall, animated: true)
    }

    @objc private func bruCiuSketchWeave(_ aerErstPaintPath: UIButton) {
        let aerErstPaintPlan: PonllyBattleStatus = aerErstPaintPath.tag == 0 ? .bruCiuSprayBloomponll : .flckinkWallTexturepoj
        guard aerErstPaintPlan != ponllStencilTrace else { return }
        ponllLayerMap(aerErstPaintPath.tag, bruCiuMuralBend: true)
        bruCiuPaintSignal(aerErstPaintPlan)
    }

    @objc private func bruCiuPaintFlow(_ aerErstLayerMap: UISwipeGestureRecognizer) {
        let flckinkLayerMap = ponllStencilTrace == .bruCiuSprayBloomponll ? 0 : 1
        let ponllLayerMap = aerErstLayerMap.direction == .left ? min(flckinkLayerMap + 1, 1) : max(flckinkLayerMap - 1, 0)
        guard ponllLayerMap != flckinkLayerMap else { return }
        self.ponllLayerMap(ponllLayerMap, bruCiuMuralBend: true)
        bruCiuPaintSignal(ponllStencilTrace)
    }

    @objc private func ponllTexturePath() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let flckinkAerosolArc = PonllyDirectInboxViewController(keepsTabBarVisible: false)
            flckinkAerosolArc.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(flckinkAerosolArc, animated: true)
        }
    }

    @objc private func aerErstNeonAura() {
        ponllLayerMap(0, bruCiuMuralBend: false)
        flckinkChromeVeil(.bruCiuSprayBloomponll)
        flckinkChromeVeil(.flckinkWallTexturepoj)
    }

    @objc private func aerErstPaintSignal(_ ponllPaintSignal: UIRefreshControl) {
        guard !bruCiuInkSignal else {
            ponllPaintSignal.endRefreshing()
            return
        }
        bruCiuInkSignal = true
//        aerErstSketchRush("Rpeofnrlelsbhriuncgi abeartetrlset falrceknian".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.72)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.82) { [weak self] in
            guard let self else { return }
            let aerErstPaintPlan: PonllyBattleStatus = ponllPaintSignal.tag == 0 ? .bruCiuSprayBloomponll : .flckinkWallTexturepoj
            self.flckinkChromeVeil(aerErstPaintPlan)
            ponllPaintSignal.endRefreshing()
            self.bruCiuInkSignal = false
            let ponllWasInitial = !self.flckinkWallSignal
            self.flckinkWallSignal = true
            if ponllWasInitial {
                UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
                    self.ponllInkBloom.alpha = 1
                    self.ponllInkBloom.setContentOffset(.zero, animated: false)
                }
            }
            if self.aerErstLayerPlans.indices.contains(ponllPaintSignal.tag) {
                self.flckinkAerosolBloom(self.aerErstLayerPlans[ponllPaintSignal.tag].bruCiuLayerPlan)
            }
//            self.aerErstSketchRush("Bpaotntllleb raurceinaae rueprdsattfeldc".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill, flckinkFillPattern: 1.1)
        }
    }

    private func flckinkAerosolBloom(_ ponllWallMap: UIView) {
        if let bruCiuPaintBloom = ponllWallMap as? PbruCiuClearCoatView {
            bruCiuPaintBloom.aerErstAerosolBloom()
        }
        if let aerErstPaintFlowline = ponllWallMap as? PonllybruCiuUtilityBoxView {
            aerErstPaintFlowline.aerErstPaintMotion()
        }
        for aerErstPaintLayer in ponllWallMap.subviews {
            flckinkAerosolBloom(aerErstPaintLayer)
        }
    }
}

extension PbruCiuColorPlanController: UIScrollViewDelegate, UIGestureRecognizerDelegate {
    func gestureRecognizer(
        _ aerErstPaintFlow: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith bruCiuPaintFlow: UIGestureRecognizer
    ) -> Bool {
        aerErstPaintFlow is UISwipeGestureRecognizer || bruCiuPaintFlow is UISwipeGestureRecognizer
    }

    func scrollViewDidEndDecelerating(_ aerErstCanvasWall: UIScrollView) {
        guard aerErstCanvasWall === ponllInkBloom else { return }
        bruCiuLayerBlend()
    }

    func scrollViewDidEndDragging(_ bruCiuCanvasWall: UIScrollView, willDecelerate flckinkPaintFlow: Bool) {
        guard bruCiuCanvasWall === ponllInkBloom, !flckinkPaintFlow else { return }
        bruCiuLayerBlend()
    }

    func scrollViewDidEndScrollingAnimation(_ ponllCanvasWall: UIScrollView) {
        guard ponllCanvasWall === ponllInkBloom else { return }
        bruCiuLayerBlend()
    }
}
