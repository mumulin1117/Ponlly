import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PaerErstPaintBaseController: UIViewController {
    private let ponllPaintRipple: PonllyaerErstSolidMarkerk
    private let bruCiuInkSurge: PonllyaerErstTwoToneFillr

    init(flckinkWallBurst: PonllyaerErstSolidMarkerk, aerErstAerosolBloom: PonllyaerErstTwoToneFillr) {
        self.ponllPaintRipple = flckinkWallBurst
        self.bruCiuInkSurge = aerErstAerosolBloom
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        ponllMuralFlicker()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func ponllMuralFlicker() {
        let bruCiuStencilFlash = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 11/255, green: 14/255, blue: 19/255, alpha: 1)])
        view.addSubview(bruCiuStencilFlash)
        bruCiuStencilFlash.woodPanelPonlly(steelGate: view)

        let flckinkMarkerFuse = UIScrollView()
        flckinkMarkerFuse.alwaysBounceVertical = true
        flckinkMarkerFuse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkMarkerFuse)

        let aerErstInkTrace = UIStackView()
        aerErstInkTrace.axis = .vertical
        aerErstInkTrace.spacing = 18
        aerErstInkTrace.translatesAutoresizingMaskIntoConstraints = false
        flckinkMarkerFuse.addSubview(aerErstInkTrace)

        let ponllAerosolTrail = bruCiuTextureVeil()
        let flckinkMuralAura = PbruCiuClearCoatView(ponllPaintTrace: ponllPaintRipple)
        flckinkMuralAura.layer.cornerRadius = 24
        flckinkMuralAura.layer.borderColor = PonllyPalette.cyan.withAlphaComponent(0.65).cgColor
        aerErstInkTrace.addArrangedSubview(ponllAerosolTrail)
        aerErstInkTrace.addArrangedSubview(flckinkMuralAura)
        aerErstInkTrace.addArrangedSubview(aerErstChromeEcho())
        aerErstInkTrace.addArrangedSubview(ponllNeonSignal())

        NSLayoutConstraint.activate([
            flckinkMarkerFuse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            flckinkMarkerFuse.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            flckinkMarkerFuse.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkMarkerFuse.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstInkTrace.leadingAnchor.constraint(equalTo: flckinkMarkerFuse.frameLayoutGuide.leadingAnchor, constant: 18),
            aerErstInkTrace.trailingAnchor.constraint(equalTo: flckinkMarkerFuse.frameLayoutGuide.trailingAnchor, constant: -18),
            aerErstInkTrace.topAnchor.constraint(equalTo: flckinkMarkerFuse.contentLayoutGuide.topAnchor, constant: 22),
            aerErstInkTrace.bottomAnchor.constraint(equalTo: flckinkMarkerFuse.contentLayoutGuide.bottomAnchor, constant: -34),
            ponllAerosolTrail.heightAnchor.constraint(equalToConstant: 86),
            flckinkMuralAura.heightAnchor.constraint(equalTo: flckinkMuralAura.widthAnchor, multiplier: 0.88)
        ])
    }

    private func bruCiuTextureVeil() -> UIView {
        let bruCiuSketchCue = UIView()
        let flckinkPaintSeed = UIButton(type: .system)
        flckinkPaintSeed.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkPaintSeed.tintColor = .white
        flckinkPaintSeed.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkPaintSeed.layer.cornerRadius = 28
        flckinkPaintSeed.layer.borderWidth = 1
        flckinkPaintSeed.layer.borderColor = PonllyPalette.line.cgColor
        flckinkPaintSeed.translatesAutoresizingMaskIntoConstraints = false
        flckinkPaintSeed.addTarget(self, action: #selector(aerErstWallPath), for: .touchUpInside)
        bruCiuSketchCue.addSubview(flckinkPaintSeed)

        let ponllInkArc = UILabel()
        ponllInkArc.text = "AMrNtOwPoQrRkS".ponllPaintaerErstHours
        ponllInkArc.textColor = .white
        ponllInkArc.textAlignment = .center
        ponllInkArc.font = PonllyFonts.muralForgepon(neonLab: 24)
        ponllInkArc.translatesAutoresizingMaskIntoConstraints = false
        bruCiuSketchCue.addSubview(ponllInkArc)

        NSLayoutConstraint.activate([
            flckinkPaintSeed.leadingAnchor.constraint(equalTo: bruCiuSketchCue.leadingAnchor),
            flckinkPaintSeed.bottomAnchor.constraint(equalTo: bruCiuSketchCue.bottomAnchor, constant: -8),
            flckinkPaintSeed.widthAnchor.constraint(equalToConstant: 56),
            flckinkPaintSeed.heightAnchor.constraint(equalToConstant: 56),
            ponllInkArc.centerXAnchor.constraint(equalTo: bruCiuSketchCue.centerXAnchor),
            ponllInkArc.centerYAnchor.constraint(equalTo: flckinkPaintSeed.centerYAnchor)
        ])
        return bruCiuSketchCue
    }

    private func aerErstChromeEcho() -> UIView {
        let bruCiuMuralBend = UIView()
        bruCiuMuralBend.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        bruCiuMuralBend.layer.cornerRadius = 18
        bruCiuMuralBend.layer.borderWidth = 1
        bruCiuMuralBend.layer.borderColor = PonllyPalette.line.cgColor

        let flckinkStencilKick = ErErstPaintLabView(user: bruCiuInkSurge, size: 46)
        bruCiuMuralBend.addSubview(flckinkStencilKick)
        let aerErstMarkerLean = UILabel()
        aerErstMarkerLean.text = ponllPaintRipple.nozzleCraft
        aerErstMarkerLean.textColor = .white
        aerErstMarkerLean.font = PonllyFonts.muralForgepon(neonLab: 18)
        aerErstMarkerLean.numberOfLines = 2
        aerErstMarkerLean.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMuralBend.addSubview(aerErstMarkerLean)
        let ponllChromeTwist = UILabel()
        ponllChromeTwist.text = "\(ponllPaintRipple.capControl)  •  \(PonllyponllTornEdge.ponllLineMap(flckinkDripMap: ponllPaintRipple)) notes"
        ponllChromeTwist.textColor = PonllyPalette.cyan
        ponllChromeTwist.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        ponllChromeTwist.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMuralBend.addSubview(ponllChromeTwist)

        NSLayoutConstraint.activate([
            bruCiuMuralBend.heightAnchor.constraint(greaterThanOrEqualToConstant: 92),
            flckinkStencilKick.leadingAnchor.constraint(equalTo: bruCiuMuralBend.leadingAnchor, constant: 16),
            flckinkStencilKick.centerYAnchor.constraint(equalTo: bruCiuMuralBend.centerYAnchor),
            aerErstMarkerLean.leadingAnchor.constraint(equalTo: flckinkStencilKick.trailingAnchor, constant: 14),
            aerErstMarkerLean.trailingAnchor.constraint(equalTo: bruCiuMuralBend.trailingAnchor, constant: -16),
            aerErstMarkerLean.topAnchor.constraint(equalTo: bruCiuMuralBend.topAnchor, constant: 20),
            ponllChromeTwist.leadingAnchor.constraint(equalTo: aerErstMarkerLean.leadingAnchor),
            ponllChromeTwist.trailingAnchor.constraint(equalTo: aerErstMarkerLean.trailingAnchor),
            ponllChromeTwist.topAnchor.constraint(equalTo: aerErstMarkerLean.bottomAnchor, constant: 8),
            ponllChromeTwist.bottomAnchor.constraint(lessThanOrEqualTo: bruCiuMuralBend.bottomAnchor, constant: -18)
        ])
        return bruCiuMuralBend
    }

    private func ponllNeonSignal() -> UIView {
        let bruCiuAerosolWeave = UIView()
        bruCiuAerosolWeave.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        bruCiuAerosolWeave.layer.cornerRadius = 18
        bruCiuAerosolWeave.layer.borderWidth = 1
        bruCiuAerosolWeave.layer.borderColor = PonllyPalette.line.cgColor

        let flckinkWallDepth = UIStackView()
        flckinkWallDepth.axis = .vertical
        flckinkWallDepth.spacing = 10
        flckinkWallDepth.translatesAutoresizingMaskIntoConstraints = false
        bruCiuAerosolWeave.addSubview(flckinkWallDepth)

        let aerErstInkGlow = UILabel()
        aerErstInkGlow.text = "WTaUlVlW XNYoZt0e1s2".ponllPaintaerErstHours
        aerErstInkGlow.textColor = .white
        aerErstInkGlow.font = PonllyFonts.muralForgepon(neonLab: 15)
        let ponllPaintGrit = UILabel()
        ponllPaintGrit.text = "A finished street-art piece from \(bruCiuInkSurge.aerosolDream), built around \(ponllPaintRipple.capControl.lowercased()) rhythm, wall texture, and clean visual presence."
        ponllPaintGrit.textColor = PonllyPalette.muted
        ponllPaintGrit.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        ponllPaintGrit.numberOfLines = 0
        [aerErstInkGlow, ponllPaintGrit].forEach(flckinkWallDepth.addArrangedSubview)

        NSLayoutConstraint.activate([
            flckinkWallDepth.leadingAnchor.constraint(equalTo: bruCiuAerosolWeave.leadingAnchor, constant: 18),
            flckinkWallDepth.trailingAnchor.constraint(equalTo: bruCiuAerosolWeave.trailingAnchor, constant: -18),
            flckinkWallDepth.topAnchor.constraint(equalTo: bruCiuAerosolWeave.topAnchor, constant: 18),
            flckinkWallDepth.bottomAnchor.constraint(equalTo: bruCiuAerosolWeave.bottomAnchor, constant: -18)
        ])
        return bruCiuAerosolWeave
    }

    @objc private func aerErstWallPath() {
        navigationController?.popViewController(animated: true)
    }
}
