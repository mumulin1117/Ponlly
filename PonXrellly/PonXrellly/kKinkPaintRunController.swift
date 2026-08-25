import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class kKinkPaintRunController: UIViewController {
    private let ponllInkBurst = UITextField()
    private let bruCiuWallCascade = UITextView()
    private let flckinkAerosolRipple = UIScrollView()
    private var aerErstMuralSurge = "Wildstyle"
    private var ponllStencilBloom = "24 Hours"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Battle Settings"
        view.backgroundColor = PonllyPalette.background
        bruCiuMarkerFlicker()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkChromeFlash(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstNeonFuse(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiuMarkerFlicker() {
        flckinkAerosolRipple.keyboardDismissMode = .onDrag
        flckinkAerosolRipple.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkAerosolRipple)
        let aerErstTextureTrace = UIStackView()
        aerErstTextureTrace.axis = .vertical
        aerErstTextureTrace.spacing = 20
        aerErstTextureTrace.translatesAutoresizingMaskIntoConstraints = false
        flckinkAerosolRipple.addSubview(aerErstTextureTrace)
        ponllInkBurst.text = "Wildstyle Showdown"
        ponllPaintTrail(ponllInkBurst)
        bruCiuWallCascade.text = "Bring Your Absolute Best Chrome Letters And Sharp Outlines to This Burner Arena"
        bruCiuWallCascade.textColor = .white
        bruCiuWallCascade.backgroundColor = PonllyPalette.panel
        bruCiuWallCascade.layer.cornerRadius = 16
        bruCiuWallCascade.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        bruCiuWallCascade.heightAnchor.constraint(equalToConstant: 130).isActive = true
        aerErstTextureTrace.addArrangedSubview(flckinkInkVeil("Battle Title", ponllAerosolAura: ponllInkBurst))
        aerErstTextureTrace.addArrangedSubview(aerErstMuralEcho("Battle Theme", bruCiuMarkerSignal: ["Wildstyle", "Character", "Black And White", "Free Style"], flckinkChromeQuest: aerErstMuralSurge))
        aerErstTextureTrace.addArrangedSubview(flckinkInkVeil("Battle Description", ponllAerosolAura: bruCiuWallCascade))
        aerErstTextureTrace.addArrangedSubview(aerErstMuralEcho("Battle Duration", bruCiuMarkerSignal: ["1 Hour", "6 Hours", "24 Hours", "48 Hours"], flckinkChromeQuest: ponllStencilBloom))
        let bruCiuNeonCue = PonllyNeonButton("Next")
        bruCiuNeonCue.addTarget(self, action: #selector(ponllSketchSeed), for: .touchUpInside)
        aerErstTextureTrace.addArrangedSubview(bruCiuNeonCue)
        NSLayoutConstraint.activate([
            flckinkAerosolRipple.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            flckinkAerosolRipple.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            flckinkAerosolRipple.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            flckinkAerosolRipple.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstTextureTrace.leadingAnchor.constraint(equalTo: flckinkAerosolRipple.frameLayoutGuide.leadingAnchor, constant: 20),
            aerErstTextureTrace.trailingAnchor.constraint(equalTo: flckinkAerosolRipple.frameLayoutGuide.trailingAnchor, constant: -20),
            aerErstTextureTrace.topAnchor.constraint(equalTo: flckinkAerosolRipple.contentLayoutGuide.topAnchor, constant: 26),
            aerErstTextureTrace.bottomAnchor.constraint(equalTo: flckinkAerosolRipple.contentLayoutGuide.bottomAnchor, constant: -34),
            ponllInkBurst.heightAnchor.constraint(equalToConstant: 58),
            bruCiuNeonCue.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func ponllPaintTrail(_ aerErstWallMood: UITextField) {
        aerErstWallMood.textColor = .white
        aerErstWallMood.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        aerErstWallMood.backgroundColor = PonllyPalette.panel
        aerErstWallMood.layer.cornerRadius = 16
        aerErstWallMood.layer.borderWidth = 1
        aerErstWallMood.layer.borderColor = PonllyPalette.line.cgColor
        aerErstWallMood.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        aerErstWallMood.leftViewMode = .always
    }

    private func flckinkInkVeil(_ bruCiuPaintPath: String, ponllAerosolAura: UIView) -> UIStackView {
        let flckinkStencilSpark = UIStackView()
        flckinkStencilSpark.axis = .vertical
        flckinkStencilSpark.spacing = 10
        let aerErstChromeMood = UILabel()
        aerErstChromeMood.text = bruCiuPaintPath
        aerErstChromeMood.textColor = PonllyPalette.muted
        aerErstChromeMood.font = PonllyFonts.muralForgepon(neonLab: 12)
        flckinkStencilSpark.addArrangedSubview(aerErstChromeMood)
        flckinkStencilSpark.addArrangedSubview(ponllAerosolAura)
        return flckinkStencilSpark
    }

    private func aerErstMuralEcho(_ ponllWallSeed: String, bruCiuMarkerSignal: [String], flckinkChromeQuest: String) -> UIStackView {
        let bruCiuNeonPath = UIStackView()
        bruCiuNeonPath.axis = .vertical
        bruCiuNeonPath.spacing = 10
        let flckinkSketchArc = UILabel()
        flckinkSketchArc.text = ponllWallSeed
        flckinkSketchArc.textColor = PonllyPalette.muted
        flckinkSketchArc.font = PonllyFonts.muralForgepon(neonLab: 12)
        let aerErstTextureBend = UIStackView()
        aerErstTextureBend.axis = .vertical
        aerErstTextureBend.spacing = 10
        var ponllPaintKick: UIStackView?
        for (bruCiuInkLean, flckinkAerosolTwist) in bruCiuMarkerSignal.enumerated() {
            if bruCiuInkLean % 3 == 0 {
                ponllPaintKick = UIStackView()
                ponllPaintKick?.axis = .horizontal
                ponllPaintKick?.spacing = 10
                aerErstTextureBend.addArrangedSubview(ponllPaintKick!)
            }
            let bruCiuMuralWeave = UIButton(type: .system)
            bruCiuMuralWeave.setTitle(flckinkAerosolTwist, for: .normal)
            bruCiuMuralWeave.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
            bruCiuMuralWeave.setTitleColor(flckinkAerosolTwist == flckinkChromeQuest ? PonllyPalette.pink : .white, for: .normal)
            bruCiuMuralWeave.layer.cornerRadius = 18
            bruCiuMuralWeave.layer.borderWidth = 1
            bruCiuMuralWeave.layer.borderColor = (flckinkAerosolTwist == flckinkChromeQuest ? PonllyPalette.pink : PonllyPalette.line).cgColor
            bruCiuMuralWeave.heightAnchor.constraint(equalToConstant: 38).isActive = true
            bruCiuMuralWeave.widthAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
            ponllPaintKick?.addArrangedSubview(bruCiuMuralWeave)
        }
        bruCiuNeonPath.addArrangedSubview(flckinkSketchArc)
        bruCiuNeonPath.addArrangedSubview(aerErstTextureBend)
        return bruCiuNeonPath
    }

    @objc private func ponllSketchSeed() {
        navigationController?.pushViewController(MarkerNibController(ponllStyleSignal: "Upload Your Artwork", bruCiuPaintQuest: "Continue", flckinkInkCue: .ponllPaintPlan), animated: true)
    }

    @objc private func flckinkChromeFlash(_ ponllWallFuse: Notification) {
        guard let bruCiuAerosolTrace = ponllWallFuse.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let flckinkMuralTrail = max(bruCiuAerosolTrace.height - view.safeAreaInsets.bottom, 0) + 24
        flckinkAerosolRipple.contentInset.bottom = flckinkMuralTrail
        flckinkAerosolRipple.verticalScrollIndicatorInsets.bottom = flckinkMuralTrail
    }

    @objc private func aerErstNeonFuse(_ ponllStencilVeil: Notification) {
        flckinkAerosolRipple.contentInset.bottom = 0
        flckinkAerosolRipple.verticalScrollIndicatorInsets.bottom = 0
    }
}
