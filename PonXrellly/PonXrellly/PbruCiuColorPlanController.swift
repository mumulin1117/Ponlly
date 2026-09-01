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
    
    private let ponllPaintSignal = UIRefreshControl()
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
            flckinkChromeVeil()
        }
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

        ponllInkBloom.alwaysBounceVertical = true
        ponllInkBloom.delaysContentTouches = false
        ponllInkBloom.canCancelContentTouches = true
        flckinkChromeSignal()
        view.addSubview(ponllInkBloom)
        ponllInkBloom.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ponllInkBloom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:0),
            ponllInkBloom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:0),
            ponllInkBloom.topAnchor.constraint(equalTo: aerErstInkSignal.bottomAnchor, constant: 0),
            ponllInkBloom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])

        bruCiuWallFlicker.axis = .vertical
        bruCiuWallFlicker.spacing = 16
        bruCiuWallFlicker.translatesAutoresizingMaskIntoConstraints = false
        ponllInkBloom.addSubview(bruCiuWallFlicker)
        
        NSLayoutConstraint.activate([
            aerErstInkSignal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            aerErstInkSignal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            aerErstInkSignal.heightAnchor.constraint(equalToConstant: 116),
            aerErstInkSignal.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            bruCiuWallFlicker.leadingAnchor.constraint(equalTo: ponllInkBloom.frameLayoutGuide.leadingAnchor, constant: 16),
            bruCiuWallFlicker.trailingAnchor.constraint(equalTo: ponllInkBloom.frameLayoutGuide.trailingAnchor, constant: -16),
            bruCiuWallFlicker.topAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.topAnchor, constant: 18),
            bruCiuWallFlicker.bottomAnchor.constraint(equalTo: ponllInkBloom.contentLayoutGuide.bottomAnchor, constant: -30),
            
            ponllAerosolQuest.leadingAnchor.constraint(equalTo: aerErstInkSignal.leadingAnchor, constant: 4),
            ponllAerosolQuest.centerYAnchor.constraint(equalTo: bruCiuMuralCue.centerYAnchor),
            bruCiuMuralCue.trailingAnchor.constraint(equalTo: aerErstInkSignal.trailingAnchor, constant: -4),
            bruCiuMuralCue.topAnchor.constraint(equalTo: aerErstInkSignal.topAnchor, constant: 2),
            bruCiuMuralCue.widthAnchor.constraint(equalToConstant: 52),
            bruCiuMuralCue.heightAnchor.constraint(equalToConstant: 52),
            flckinkStencilSeed.leadingAnchor.constraint(equalTo: aerErstInkSignal.leadingAnchor, constant: 4),
            flckinkStencilSeed.trailingAnchor.constraint(lessThanOrEqualTo: aerErstInkSignal.trailingAnchor, constant: -4),
            flckinkStencilSeed.topAnchor.constraint(equalTo: ponllAerosolQuest.bottomAnchor, constant: 18),
            flckinkAerosolFlash.heightAnchor.constraint(equalToConstant: 32),
            aerErstMuralFuse.heightAnchor.constraint(equalToConstant: 32)
        ])
    }

    private func flckinkChromeSignal() {
        ponllPaintSignal.tintColor = PonllyPalette.cyan
        ponllPaintSignal.attributedTitle = NSAttributedString(
            string: "Rpeofnrlelsbhriuncgi abeartetrlset falrceknian.k.p.o".ponllPaintaerErstHours,
            attributes: [
                .foregroundColor: PonllyPalette.muted,
                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
            ]
        )
        ponllPaintSignal.addTarget(self, action: #selector(aerErstPaintSignal), for: .valueChanged)
        ponllInkBloom.refreshControl = ponllPaintSignal
    }

    private func bruCiuPaintSignal() {
        guard !flckinkWallSignal else { return }
        ponllPaintSignal.beginRefreshing()
        let aerErstAerosolSignal = CGPoint(x: 0, y: -max(ponllPaintSignal.bounds.height, 52))
        ponllInkBloom.setContentOffset(aerErstAerosolSignal, animated: true)
        aerErstPaintSignal()
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

    private func flckinkChromeVeil() {
        while !bruCiuWallFlicker.arrangedSubviews.isEmpty {
            bruCiuWallFlicker.arrangedSubviews.last?.removeFromSuperview()
        }
        ponllWallDepth()
//        bruCiuWallFlicker.addArrangedSubview(aerErstPaintGlow())
        let ponllInkGrit = PonllyponllTornEdge.flckinkPaintRun(aerErstDripTrail: ponllStencilTrace)
        for bruCiuAerosolNoise in ponllInkGrit {
            if ponllStencilTrace == .flckinkWallTexturepoj {
                let flckinkMuralTexture = PonllyWaitingBattleCardView(fencePiece: bruCiuAerosolNoise)
                flckinkMuralTexture.paintQuest = { [weak self] in self?.bruCiuChromeBalance(bruCiuAerosolNoise) }
                flckinkMuralTexture.zMotion = { [weak self] aerErstStencilMotion in self?.flckinkNeonCascade(aerErstStencilMotion) }
                flckinkMuralTexture.styleNoise = { [weak self] in self?.ponllTextureRipple(bruCiuAerosolNoise) }
                bruCiuWallFlicker.addArrangedSubview(flckinkMuralTexture)
            } else {
                let aerErstSketchContrast = CkinkMuralLabView(flckinkWallPaste: bruCiuAerosolNoise)
                aerErstSketchContrast.bruCiuSilverSheen = { [weak self] in self?.bruCiuChromeBalance(bruCiuAerosolNoise) }
                aerErstSketchContrast.flckinkPrimerCoat = { [weak self] in self?.bruCiuPaintSurge(for: bruCiuAerosolNoise) }
                aerErstSketchContrast.aerErstPaintBase = { [weak self] ponllWallBurst in self?.flckinkNeonCascade(ponllWallBurst) }
                bruCiuWallFlicker.addArrangedSubview(aerErstSketchContrast)
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

    private func bruCiuChromeBalance(_ aerErstInkMotion: PonllyBattle) {
        let ponllPaintCascade = PonllyponllTornEdge.flckinkPaintRun().first { $0.graffitiPulse == aerErstInkMotion.graffitiPulse } ?? aerErstInkMotion
        let bruCiuMuralFlicker = PbruCiuStencilLabController(flckinkPaintVeil: ponllPaintCascade)
        bruCiuMuralFlicker.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(bruCiuMuralFlicker, animated: true)
    }

    private func flckinkNeonCascade(_ flckinkStencilFlash: PonllyaerErstTwoToneFillr) {
        let aerErstChromeFuse = FlckinkPrimerCoatController(user: flckinkStencilFlash)
        aerErstChromeFuse.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(aerErstChromeFuse, animated: true)
    }

    private func ponllTextureRipple(_ ponllNeonTrace: PonllyBattle) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let bruCiuPaintTrail = BruCiuSilverSheenController(ponllPrimerCoat: ponllNeonTrace)
            bruCiuPaintTrail.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(bruCiuPaintTrail, animated: true)
        }
    }

    private func bruCiuPaintSurge(for flckinkInkVeil: PonllyBattle) {
        let aerErstWallAura = UIAlertController(title: "BxaytztAlBeC DOEpFtGiHoInJsK".ponllPaintaerErstHours, message: flckinkInkVeil.nozzleCraft, preferredStyle: .actionSheet)
        aerErstWallAura.addAction(UIAlertAction(title: "RLeMpNoOrPtQ RCShTaUlVlWeXnYgZe0".ponllPaintaerErstHours, style: .destructive) { _ in
            FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
                let ponllAerosolEcho = PonllyroughFillController(blackOutline: flckinkInkVeil)
                ponllAerosolEcho.fadeSpray = { [weak self] in
                    self?.aerErstSketchRush("R1e2p3o4r5t6 7s8u9bambictdteefdg".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
                }
                ponllAerosolEcho.modalPresentationStyle = .overFullScreen
                ponllAerosolEcho.modalTransitionStyle = .crossDissolve
                self.present(ponllAerosolEcho, animated: true)
            }
        })
        aerErstWallAura.addAction(UIAlertAction(title: "Nhoitj kIlnmtneorpeqsrtsetdu".ponllPaintaerErstHours, style: .default) { _ in
            self.flckinkPrimerCoatponlu("UvpwdxaytzeAdB".ponllPaintaerErstHours)
        })
        aerErstWallAura.addAction(UIAlertAction(title: "CCaDnEcFeGlH".ponllPaintaerErstHours, style: .cancel))
        if let bruCiuMarkerSignal = aerErstWallAura.popoverPresentationController {
            bruCiuMarkerSignal.sourceView = view
            bruCiuMarkerSignal.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.maxY - 80, width: 1, height: 1)
        }
        present(aerErstWallAura, animated: true)
    }

    @objc private func bruCiuSketchWeave(_ aerErstPaintPath: UIButton) {
        ponllStencilTrace = aerErstPaintPath.tag == 0 ? .bruCiuSprayBloomponll : .flckinkWallTexturepoj
        flckinkChromeVeil()
    }

    @objc private func ponllTexturePath() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let flckinkAerosolArc = PonllyDirectInboxViewController(keepsTabBarVisible: false)
            flckinkAerosolArc.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(flckinkAerosolArc, animated: true)
        }
    }

    @objc private func aerErstNeonAura() {
        ponllStencilTrace = .bruCiuSprayBloomponll
        flckinkChromeVeil()
    }

    @objc private func aerErstPaintSignal() {
        guard !bruCiuInkSignal else { return }
        bruCiuInkSignal = true
        aerErstSketchRush("Rpeofnrlelsbhriuncgi abeartetrlset falrceknian".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.72)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.82) { [weak self] in
            guard let self else { return }
            self.flckinkChromeVeil()
            self.ponllPaintSignal.endRefreshing()
            self.bruCiuInkSignal = false
            let ponllWasInitial = !self.flckinkWallSignal
            self.flckinkWallSignal = true
            if ponllWasInitial {
                UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
                    self.ponllInkBloom.alpha = 1
                    self.ponllInkBloom.setContentOffset(.zero, animated: false)
                }
            }
            self.aerErstSketchRush("Bpaotntllleb raurceinaae rueprdsattfeldc".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill, flckinkFillPattern: 1.1)
        }
    }
}
