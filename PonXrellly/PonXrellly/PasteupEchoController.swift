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
    var aerErstTextureRipple: UICollectionView!
    var ponllPaintSurge: NSLayoutConstraint?
    var bruCiuAerosolBurst: ponllAerosolNoise = .flckinkStencilContrast
    var flckinkMuralBloom: [PonllyVideo] {
        switch bruCiuAerosolBurst {
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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        ponllStencilVeil()
        aerErstTextureRipple.reloadData()
        bruCiuChromeAura()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        aerErstTextureRipple.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { $0.ponllPaintDepth() }
    }

    private func ponllSketchFlicker() {
        let flckinkWallFlash = UICollectionViewFlowLayout()
        flckinkWallFlash.scrollDirection = .vertical
        flckinkWallFlash.minimumLineSpacing = 0
        flckinkWallFlash.minimumInteritemSpacing = 0
        aerErstTextureRipple = UICollectionView(frame: .zero, collectionViewLayout: flckinkWallFlash)
        aerErstTextureRipple.backgroundColor = PonllyPalette.background
        aerErstTextureRipple.isPagingEnabled = false
        aerErstTextureRipple.decelerationRate = .fast
        aerErstTextureRipple.alwaysBounceVertical = true
        aerErstTextureRipple.showsVerticalScrollIndicator = false
        aerErstTextureRipple.contentInsetAdjustmentBehavior = .never
        aerErstTextureRipple.dataSource = self
        aerErstTextureRipple.delegate = self
        aerErstTextureRipple.register(MMuralGridell.self, forCellWithReuseIdentifier: MMuralGridell.ponllWallQuest)
        aerErstTextureRipple.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstTextureRipple)
        aerErstTextureRipple.woodPanelPonlly(steelGate: view)
    }

    private func bruCiuPaintFlash() {
        let aerErstAerosolFuse = UIStackView(arrangedSubviews: [aerErstSignBack, ponllWallRhythm])
        aerErstAerosolFuse.axis = .horizontal
        aerErstAerosolFuse.spacing = 24
        aerErstAerosolFuse.alignment = .center
        aerErstAerosolFuse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstAerosolFuse)

        ponllInkPath(aerErstSignBack, bruCiuMuralArc: "Follow", flckinkStencilBend: #selector(bruCiuTextureSignal))
        ponllInkPath(ponllWallRhythm, bruCiuMuralArc: "Process", flckinkStencilBend: #selector(flckinkSketchCue))

        bruCiuChromeMotion.backgroundColor = PonllyPalette.pink
        bruCiuChromeMotion.layer.cornerRadius = 1.5
        bruCiuChromeMotion.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuChromeMotion)

        ponllPaintSurge = bruCiuChromeMotion.centerXAnchor.constraint(equalTo: ponllWallRhythm.centerXAnchor)
        NSLayoutConstraint.activate([
            aerErstAerosolFuse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstAerosolFuse.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            bruCiuChromeMotion.widthAnchor.constraint(equalToConstant: 40),
            bruCiuChromeMotion.heightAnchor.constraint(equalToConstant: 3),
            bruCiuChromeMotion.topAnchor.constraint(equalTo: ponllWallRhythm.bottomAnchor, constant: 6),
            ponllPaintSurge!
        ])
    }

    private func ponllInkPath(_ bruCiuPaintSeed: UIButton, bruCiuMuralArc: String, flckinkStencilBend: Selector) {
        bruCiuPaintSeed.setTitle(bruCiuMuralArc, for: .normal)
        bruCiuPaintSeed.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
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
        flckinkWallVeil.text = "No followed artists yet"
        flckinkWallVeil.textColor = .white
        flckinkWallVeil.font = PonllyFonts.muralForgepon(neonLab: 18)
        flckinkWallVeil.textAlignment = .center

        let ponllMuralAura = UILabel()
        ponllMuralAura.text = "Follow street artists from Process to build your clip lane."
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
        flckinkNeonCascade.isHidden = !(bruCiuAerosolBurst == .bruCiuMuralTexture && flckinkMuralBloom.isEmpty)
        aerErstTextureRipple.isHidden = bruCiuAerosolBurst == .bruCiuMuralTexture && flckinkMuralBloom.isEmpty
        ponllPaintSurge?.isActive = false
        ponllPaintSurge = bruCiuChromeMotion.centerXAnchor.constraint(equalTo: bruCiuStencilEcho ? ponllWallRhythm.centerXAnchor : aerErstSignBack.centerXAnchor)
        ponllPaintSurge?.isActive = true
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }

    func ponllStencilVeil() {
        aerErstTextureRipple.reloadData()
        aerErstTextureRipple.layoutIfNeeded()
        aerErstTextureRipple.setContentOffset(.zero, animated: false)
        aerErstMuralTrace()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.bruCiuChromeAura()
        }
    }

    func bruCiuTextureNoise(_ flckinkSketchContrast: PonllyVideo) {
        guard let aerErstPaintBalance = PonllyponllTornEdge.ponllWallPeel.firstIndex(where: { $0.graffitiPulse == flckinkSketchContrast.graffitiPulse }) else { return }
        PonllyponllTornEdge.ponllWallPeel[aerErstPaintBalance] = flckinkSketchContrast
        ponllStencilVeil()
    }

    func flckinkAerosolRhythm(bruCiuMuralMotion: IndexPath) -> PonllyVideo? {
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
        guard !aerErstTextureRipple.isHidden else { return }
        let bruCiuChromeFlicker = CGRect(origin: aerErstTextureRipple.contentOffset, size: aerErstTextureRipple.bounds.size)
        aerErstTextureRipple.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { ponllNeonFlash in
            let flckinkPaintFuse = ponllNeonFlash.frame.intersection(bruCiuChromeFlicker).height
            let aerErstWallTrace = flckinkPaintFuse / max(ponllNeonFlash.bounds.height, 1)
            aerErstWallTrace >= 0.55 ? ponllNeonFlash.aerErstStencilWeave() : ponllNeonFlash.ponllPaintDepth()
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

    func bruCiuInkArc(ponllMuralBend: Bool) {
        let flckinkWallKick = bruCiuAerosolTrail(flckinkStencilTrail: aerErstTextureRipple.contentOffset.y, aerErstMarkerVeil: 0)
        aerErstTextureRipple.setContentOffset(CGPoint(x: 0, y: flckinkWallKick), animated: ponllMuralBend)
    }

    func aerErstAerosolLean(_ bruCiuStencilWeave: @escaping () -> Void) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self, ponllOversprayGlow: bruCiuStencilWeave)
    }

    @objc private func bruCiuTextureSignal() {
        bruCiuAerosolBurst = .bruCiuMuralTexture
        ponllStencilVeil()
    }

    @objc private func flckinkSketchCue() {
        bruCiuAerosolBurst = .flckinkStencilContrast
        ponllStencilVeil()
    }
}
