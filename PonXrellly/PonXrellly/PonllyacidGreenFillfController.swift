import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyacidGreenFillfController: UIViewController {
    private let ponllChromeTrail: PonllyRelationshipKind
    private let bruCiuNeonVeil = UIScrollView()
    private let flckinkTextureAura = UIStackView()

    init(kind ponllChromeTrail: PonllyRelationshipKind) {
        self.ponllChromeTrail = ponllChromeTrail
        super.init(nibName: nil, bundle: nil)
        title = ponllChromeTrail == .aerErstBrickTone ? "Crew Connections" : "Following"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        aerErstSketchEcho()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func aerErstSketchEcho() {
        bruCiuNeonVeil.alwaysBounceVertical = true
        bruCiuNeonVeil.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuNeonVeil)
        flckinkTextureAura.axis = .vertical
        flckinkTextureAura.spacing = 16
        flckinkTextureAura.translatesAutoresizingMaskIntoConstraints = false
        bruCiuNeonVeil.addSubview(flckinkTextureAura)
        let ponllPaintSignal = PonllyponllTornEdge.aerErstRainWall(bruCiuShadowWall: ponllChromeTrail)
        let bruCiuInkQuest = UILabel()
        bruCiuInkQuest.text = "\(ponllPaintSignal.count) \(ponllChromeTrail == .aerErstBrickTone ? "Followers" : "Following")"
        bruCiuInkQuest.textColor = PonllyPalette.muted
        bruCiuInkQuest.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkTextureAura.addArrangedSubview(bruCiuInkQuest)
        ponllPaintSignal.forEach { flckinkTextureAura.addArrangedSubview(flckinkWallCue(for: $0)) }
        NSLayoutConstraint.activate([
            bruCiuNeonVeil.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuNeonVeil.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuNeonVeil.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiuNeonVeil.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkTextureAura.leadingAnchor.constraint(equalTo: bruCiuNeonVeil.frameLayoutGuide.leadingAnchor, constant: 16),
            flckinkTextureAura.trailingAnchor.constraint(equalTo: bruCiuNeonVeil.frameLayoutGuide.trailingAnchor, constant: -16),
            flckinkTextureAura.topAnchor.constraint(equalTo: bruCiuNeonVeil.contentLayoutGuide.topAnchor, constant: 26),
            flckinkTextureAura.bottomAnchor.constraint(equalTo: bruCiuNeonVeil.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func flckinkWallCue(for aerErstAerosolSeed: PonllyaerErstTwoToneFillr) -> UIControl {
        let ponllMuralSpark = UIControl()
        ponllMuralSpark.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        ponllMuralSpark.layer.cornerRadius = 18
        ponllMuralSpark.layer.borderWidth = 1
        ponllMuralSpark.layer.borderColor = PonllyPalette.line.cgColor
        ponllMuralSpark.addAction(UIAction { [weak self] _ in
            let bruCiuStencilMood = FlckinkPrimerCoatController(user: aerErstAerosolSeed)
            bruCiuStencilMood.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(bruCiuStencilMood, animated: true)
        }, for: .touchUpInside)
        let flckinkWallCue = UIStackView()
        flckinkWallCue.axis = .horizontal
        flckinkWallCue.alignment = .center
        flckinkWallCue.spacing = 14
        flckinkWallCue.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralSpark.addSubview(flckinkWallCue)
        flckinkWallCue.addArrangedSubview(ErErstPaintLabView(user: aerErstAerosolSeed, size: 54))
        let flckinkMarkerPath = UIStackView()
        flckinkMarkerPath.axis = .vertical
        flckinkMarkerPath.spacing = 4
        let aerErstChromeArc = UILabel()
        aerErstChromeArc.text = aerErstAerosolSeed.aerosolDream.lowercased()
        aerErstChromeArc.textColor = .white
        aerErstChromeArc.font = PonllyFonts.muralForgepon(neonLab: 16)
        let ponllNeonBend = UILabel()
        ponllNeonBend.text = aerErstAerosolSeed.sprayRhythm
        ponllNeonBend.textColor = PonllyPalette.muted
        ponllNeonBend.font = PonllyFonts.steelGate(rollingShutter: 12)
        flckinkMarkerPath.addArrangedSubview(aerErstChromeArc)
        flckinkMarkerPath.addArrangedSubview(ponllNeonBend)
        flckinkWallCue.addArrangedSubview(flckinkMarkerPath)
        let bruCiuTextureKick = UILabel()
        bruCiuTextureKick.text = PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? "Mutual" : (PonllyponllTornEdge.aerErstCrackedWall(aerErstAerosolSeed.graffitiPulse) ? "Following" : "Follow")
        bruCiuTextureKick.textColor = PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? PonllyPalette.green : .white
        bruCiuTextureKick.font = PonllyFonts.muralForgepon(neonLab: 11)
        bruCiuTextureKick.textAlignment = .center
        bruCiuTextureKick.layer.cornerRadius = 12
        bruCiuTextureKick.layer.borderWidth = 1
        bruCiuTextureKick.layer.borderColor = (PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? PonllyPalette.green : PonllyPalette.pink).cgColor
        bruCiuTextureKick.clipsToBounds = true
        bruCiuTextureKick.widthAnchor.constraint(equalToConstant: 92).isActive = true
        bruCiuTextureKick.heightAnchor.constraint(equalToConstant: 30).isActive = true
        flckinkWallCue.addArrangedSubview(bruCiuTextureKick)
        NSLayoutConstraint.activate([
            ponllMuralSpark.heightAnchor.constraint(equalToConstant: 92),
            flckinkWallCue.leadingAnchor.constraint(equalTo: ponllMuralSpark.leadingAnchor, constant: 18),
            flckinkWallCue.trailingAnchor.constraint(equalTo: ponllMuralSpark.trailingAnchor, constant: -18),
            flckinkWallCue.centerYAnchor.constraint(equalTo: ponllMuralSpark.centerYAnchor)
        ])
        return ponllMuralSpark
    }
}
