import UIKit

final class PonllMarkerLabController: UIViewController {
    private enum bruCiuPaintSignal {
        case ponllWallQuest
        case bruCiuAerosolCue
        case flckinkMuralSeed
    }

    private let aerErstInkSpark: () -> Void
    private let ponllStencilMood = UIScrollView()
    private let bruCiuMarkerPath = UIView()
    private let flckinkChromeArc = UIImageView(image: UIImage(named: "wePPonllaylanding"))
    private let aerErstNeonBend = UIButton(type: .system)
    private let ponllTextureKick = UILabel()
    private let bruCiuSketchLean = UIView()
    private let flckinkPaintTwist = UIButton(type: .system)
    private let aerErstInkWeave = UIButton(type: .system)
    private let ponllWallDepth = UIButton(type: .system)
    private let bruCiuAerosolGlow = UIView()
    private let flckinkMuralGrit = UIStackView()
    private let aerErstStencilNoise = UIStackView()
    private let ponllMarkerTexture = UILabel()
    private let bruCiuChromeContrast = UILabel()
    private let flckinkNeonBalance = UITextField()
    private let aerErstTextureRhythm = UITextField()
    private let ponllSketchMotion = UIButton(type: .system)
    private let bruCiuPaintCascade = UILabel()
    private let flckinkInkRipple = PonllyNeonButton("Login")
    private var aerErstWallSurge: NSLayoutConstraint?
    private var ponllAerosolBurst: bruCiuPaintSignal = .ponllWallQuest
    private var bruCiuMuralBloom = FlckinkMatteFinish.shared.hasConsent {
        didSet {
            FlckinkMatteFinish.shared.hasConsent = bruCiuMuralBloom
            aerErstMarkerFlash()
        }
    }

    init(aerErstInkSpark: @escaping () -> Void) {
        self.aerErstInkSpark = aerErstInkSpark
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        flckinkStencilFlicker()
        aerErstMarkerFlash()
        ponllChromeFuse()
        if !FlckinkMatteFinish.shared.hasConsent {
            bruCiuNeonTrace()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstNeonTexture(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ponllSketchContrast(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func flckinkStencilFlicker() {
        flckinkChromeArc.contentMode = .scaleAspectFill
        flckinkChromeArc.frame = UIScreen.main.bounds
        view.addSubview(flckinkChromeArc)
        
      

        ponllStencilMood.keyboardDismissMode = .onDrag
        ponllStencilMood.alwaysBounceVertical = true
        ponllStencilMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllStencilMood)
        bruCiuMarkerPath.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilMood.addSubview(bruCiuMarkerPath)

        flckinkTextureTrail()
        bruCiuMarkerPath.addSubview(aerErstNeonBend)
        bruCiuMarkerPath.addSubview(ponllTextureKick)

        aerErstSketchVeil()
        bruCiuMarkerPath.addSubview(bruCiuSketchLean)

        bruCiuColorFade(flckinkPaintTwist, nozzleCraft: "Login with Email", symbol: "envelope.fill")
        flckinkPaintTwist.addTarget(self, action: #selector(ponllInkLean), for: .touchUpInside)
        bruCiuMarkerPath.addSubview(flckinkPaintTwist)

        aerErstAerosolQuest()
        aerErstInkWeave.addTarget(self, action: #selector(bruCiuWallTwist), for: .touchUpInside)
        bruCiuMarkerPath.addSubview(aerErstInkWeave)

        ponllMuralCue()
        bruCiuMarkerPath.addSubview(bruCiuAerosolGlow)

        ponllPaintAura()
        bruCiuMarkerPath.addSubview(flckinkMuralGrit)
        bruCiuMarkerPath.addSubview(flckinkInkRipple)
        aerErstWallSurge = flckinkInkRipple.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)

        NSLayoutConstraint.activate([
            ponllStencilMood.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ponllStencilMood.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ponllStencilMood.topAnchor.constraint(equalTo: view.topAnchor),
            ponllStencilMood.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuMarkerPath.leadingAnchor.constraint(equalTo: ponllStencilMood.frameLayoutGuide.leadingAnchor),
            bruCiuMarkerPath.trailingAnchor.constraint(equalTo: ponllStencilMood.frameLayoutGuide.trailingAnchor),
            bruCiuMarkerPath.topAnchor.constraint(equalTo: ponllStencilMood.contentLayoutGuide.topAnchor),
            bruCiuMarkerPath.bottomAnchor.constraint(equalTo: ponllStencilMood.contentLayoutGuide.bottomAnchor),
            bruCiuMarkerPath.heightAnchor.constraint(greaterThanOrEqualTo: ponllStencilMood.frameLayoutGuide.heightAnchor),

            aerErstNeonBend.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstNeonBend.topAnchor.constraint(equalTo: bruCiuMarkerPath.safeAreaLayoutGuide.topAnchor, constant: 16),
            aerErstNeonBend.widthAnchor.constraint(equalToConstant: 40),
            aerErstNeonBend.heightAnchor.constraint(equalToConstant: 40),
            ponllTextureKick.centerXAnchor.constraint(equalTo: bruCiuMarkerPath.centerXAnchor),
            ponllTextureKick.centerYAnchor.constraint(equalTo: aerErstNeonBend.centerYAnchor),

            bruCiuSketchLean.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.leadingAnchor, constant: 24),
            bruCiuSketchLean.trailingAnchor.constraint(equalTo: bruCiuMarkerPath.trailingAnchor, constant: -24),
            bruCiuSketchLean.topAnchor.constraint(equalTo: bruCiuMarkerPath.safeAreaLayoutGuide.topAnchor, constant: 40),
            bruCiuSketchLean.heightAnchor.constraint(equalToConstant: 280),

            flckinkPaintTwist.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.leadingAnchor, constant: 24),
            flckinkPaintTwist.trailingAnchor.constraint(equalTo: bruCiuMarkerPath.trailingAnchor, constant: -24),
            flckinkPaintTwist.bottomAnchor.constraint(equalTo: aerErstInkWeave.topAnchor, constant: -16),
            flckinkPaintTwist.heightAnchor.constraint(equalToConstant: 62),
            aerErstInkWeave.leadingAnchor.constraint(equalTo: flckinkPaintTwist.leadingAnchor),
            aerErstInkWeave.trailingAnchor.constraint(equalTo: flckinkPaintTwist.trailingAnchor),
            aerErstInkWeave.bottomAnchor.constraint(equalTo: bruCiuAerosolGlow.topAnchor, constant: -16),
            aerErstInkWeave.heightAnchor.constraint(equalToConstant: 60),
            bruCiuAerosolGlow.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.leadingAnchor, constant: 30),
            bruCiuAerosolGlow.trailingAnchor.constraint(equalTo: bruCiuMarkerPath.trailingAnchor, constant: -30),
            bruCiuAerosolGlow.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),

            flckinkMuralGrit.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.leadingAnchor, constant: 24),
            flckinkMuralGrit.trailingAnchor.constraint(equalTo: bruCiuMarkerPath.trailingAnchor, constant: -24),
            flckinkMuralGrit.topAnchor.constraint(equalTo: aerErstNeonBend.bottomAnchor, constant: 40),
            flckinkMuralGrit.bottomAnchor.constraint(lessThanOrEqualTo: flckinkInkRipple.topAnchor, constant: -20),
            flckinkInkRipple.leadingAnchor.constraint(equalTo: bruCiuMarkerPath.leadingAnchor, constant: 24),
            flckinkInkRipple.trailingAnchor.constraint(equalTo: bruCiuMarkerPath.trailingAnchor, constant: -24),
            aerErstWallSurge!,
            flckinkInkRipple.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    private func flckinkTextureTrail() {
        aerErstNeonBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        aerErstNeonBend.tintColor = .white
        aerErstNeonBend.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        aerErstNeonBend.layer.cornerRadius = 14
        aerErstNeonBend.layer.borderWidth = 1
        aerErstNeonBend.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        aerErstNeonBend.translatesAutoresizingMaskIntoConstraints = false
        aerErstNeonBend.addTarget(self, action: #selector(flckinkSketchBend), for: .touchUpInside)

        ponllTextureKick.textColor = .white
        ponllTextureKick.font = PonllyFonts.muralForgepon(neonLab: 16)
        ponllTextureKick.translatesAutoresizingMaskIntoConstraints = false
    }

    private func aerErstSketchVeil() {
        bruCiuSketchLean.translatesAutoresizingMaskIntoConstraints = false

        let aerErstCapRack = UIImageView(image: UIImage(named: "brand_hero_group"))
        aerErstCapRack.contentMode = .scaleAspectFit
        aerErstCapRack.translatesAutoresizingMaskIntoConstraints = false
        bruCiuSketchLean.addSubview(aerErstCapRack)

        NSLayoutConstraint.activate([
            aerErstCapRack.leadingAnchor.constraint(equalTo: bruCiuSketchLean.leadingAnchor),
            aerErstCapRack.trailingAnchor.constraint(equalTo: bruCiuSketchLean.trailingAnchor),
            aerErstCapRack.topAnchor.constraint(equalTo: bruCiuSketchLean.topAnchor),
            aerErstCapRack.bottomAnchor.constraint(equalTo: bruCiuSketchLean.bottomAnchor)
        ])
    }

    private func ponllPaintAura() {
        flckinkMuralGrit.axis = .vertical
        flckinkMuralGrit.spacing = 12
        flckinkMuralGrit.translatesAutoresizingMaskIntoConstraints = false
        flckinkMuralGrit.isHidden = true

        bruCiuInkEcho()
        flckinkMuralGrit.addArrangedSubview(aerErstStencilNoise)
        flckinkMuralGrit.setCustomSpacing(8, after: aerErstStencilNoise)

        ponllMarkerTexture.textColor = .white
        ponllMarkerTexture.font = PonllyFonts.muralForgepon(neonLab: 28)
        ponllMarkerTexture.numberOfLines = 0
        flckinkMuralGrit.addArrangedSubview(ponllMarkerTexture)

        bruCiuChromeContrast.textColor = PonllyPalette.muted
        bruCiuChromeContrast.font = PonllyFonts.utilityBox(blankFacade: 14)
        bruCiuChromeContrast.numberOfLines = 0
        flckinkMuralGrit.addArrangedSubview(bruCiuChromeContrast)
        flckinkMuralGrit.setCustomSpacing(28, after: bruCiuChromeContrast)

        flckinkMuralGrit.addArrangedSubview(flckinkWallSignal(nozzleCraft: "Email", ponllTunnelWall: flckinkNeonBalance))
        flckinkMuralGrit.addArrangedSubview(flckinkWallSignal(nozzleCraft: "Password", ponllTunnelWall: aerErstTextureRhythm))

        bruCiuPaintCascade.textColor = PonllyPalette.pink
        bruCiuPaintCascade.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        bruCiuPaintCascade.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.15)
        bruCiuPaintCascade.layer.cornerRadius = 6
        bruCiuPaintCascade.clipsToBounds = true
        bruCiuPaintCascade.isHidden = true
        bruCiuPaintCascade.translatesAutoresizingMaskIntoConstraints = false
        flckinkMuralGrit.addArrangedSubview(bruCiuPaintCascade)

        flckinkInkRipple.addTarget(self, action: #selector(flckinkChromeNoise), for: .touchUpInside)
        flckinkInkRipple.translatesAutoresizingMaskIntoConstraints = false
        flckinkInkRipple.isHidden = true

        flckinkGradientFill(aerErstFreightPanel: flckinkNeonBalance, ponllAlleyDoor: "Enter Email")
        flckinkGradientFill(aerErstFreightPanel: aerErstTextureRhythm, ponllAlleyDoor: "Password")
        aerErstTextureRhythm.isSecureTextEntry = true
        ponllSketchMotion.setImage(UIImage(systemName: "eye"), for: .normal)
        ponllSketchMotion.tintColor = PonllyPalette.muted
        ponllSketchMotion.addTarget(self, action: #selector(ponllStencilGlow), for: .touchUpInside)
        aerErstTextureRhythm.rightView = ponllSketchMotion
        aerErstTextureRhythm.rightViewMode = .always

        NSLayoutConstraint.activate([
            aerErstStencilNoise.heightAnchor.constraint(equalToConstant: 60),
            flckinkNeonBalance.heightAnchor.constraint(equalToConstant: 56),
            aerErstTextureRhythm.heightAnchor.constraint(equalToConstant: 56),
            bruCiuPaintCascade.heightAnchor.constraint(equalToConstant: 26)
        ])
    }

    private func bruCiuInkEcho() {
        aerErstStencilNoise.axis = .horizontal
        aerErstStencilNoise.alignment = .center
        aerErstStencilNoise.spacing = 0
        aerErstStencilNoise.translatesAutoresizingMaskIntoConstraints = false

        let aerErstConcreteColumn = UIImageView(image: UIImage(named: "brand_form_mark"))
        aerErstConcreteColumn.contentMode = .scaleAspectFit
        aerErstConcreteColumn.translatesAutoresizingMaskIntoConstraints = false
        aerErstStencilNoise.addSubview(aerErstConcreteColumn)

        NSLayoutConstraint.activate([
            aerErstConcreteColumn.leadingAnchor.constraint(equalTo: aerErstStencilNoise.leadingAnchor),
            aerErstConcreteColumn.topAnchor.constraint(equalTo: aerErstStencilNoise.topAnchor),
            aerErstConcreteColumn.bottomAnchor.constraint(equalTo: aerErstStencilNoise.bottomAnchor),
            aerErstConcreteColumn.widthAnchor.constraint(equalToConstant: 160),
            aerErstConcreteColumn.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func flckinkWallSignal(nozzleCraft: String, ponllTunnelWall: UITextField) -> UIView {
        let aerErstPaintCloud = UIStackView()
        aerErstPaintCloud.axis = .vertical
        aerErstPaintCloud.spacing = 7
        aerErstPaintCloud.translatesAutoresizingMaskIntoConstraints = false
        let flckinkUnderpassBeam = UILabel()
        flckinkUnderpassBeam.text = title
        flckinkUnderpassBeam.textColor = PonllyPalette.muted
        flckinkUnderpassBeam.font = PonllyFonts.steelGate(rollingShutter: 10)
        aerErstPaintCloud.addArrangedSubview(flckinkUnderpassBeam)
        aerErstPaintCloud.addArrangedSubview(ponllTunnelWall)
        return aerErstPaintCloud
    }

    private func flckinkGradientFill(aerErstFreightPanel: UITextField, ponllAlleyDoor: String) {
        aerErstFreightPanel.attributedPlaceholder = NSAttributedString(string: ponllAlleyDoor, attributes: [.foregroundColor: PonllyPalette.muted])
        aerErstFreightPanel.textColor = .white
        aerErstFreightPanel.font = PonllyFonts.utilityBox(blankFacade: 15)
        aerErstFreightPanel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        aerErstFreightPanel.layer.cornerRadius = 14
        aerErstFreightPanel.layer.borderWidth = 1.5
        aerErstFreightPanel.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        aerErstFreightPanel.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        aerErstFreightPanel.leftViewMode = .always
        aerErstFreightPanel.addTarget(self, action: #selector(bruCiuMarkerGrit), for: .editingChanged)
    }

    private func bruCiuColorFade(_ flckinkShutterPanel: UIButton, nozzleCraft: String, symbol: String) {
        flckinkShutterPanel.setTitle("  \(title)", for: .normal)
        flckinkShutterPanel.setImage(UIImage(systemName: symbol), for: .normal)
        flckinkShutterPanel.tintColor = .white
        flckinkShutterPanel.setTitleColor(.white, for: .normal)
        flckinkShutterPanel.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkShutterPanel.backgroundColor = PonllyPalette.pink
        flckinkShutterPanel.layer.cornerRadius = 18
        flckinkShutterPanel.layer.shadowColor = PonllyPalette.pink.cgColor
        flckinkShutterPanel.layer.shadowOpacity = 0.42
        flckinkShutterPanel.layer.shadowRadius = 18
        flckinkShutterPanel.layer.shadowOffset = CGSize(width: 0, height: 8)
        flckinkShutterPanel.translatesAutoresizingMaskIntoConstraints = false
    }

    private func aerErstAerosolQuest() {
        aerErstInkWeave.setTitle("Create An Account", for: .normal)
        aerErstInkWeave.setImage(UIImage(systemName: "person.crop.circle.badge.plus"), for: .normal)
        aerErstInkWeave.tintColor = .white
        aerErstInkWeave.setTitleColor(.white, for: .normal)
        aerErstInkWeave.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .semibold)
        aerErstInkWeave.backgroundColor = UIColor.black.withAlphaComponent(0.24)
        aerErstInkWeave.layer.cornerRadius = 18
        aerErstInkWeave.layer.borderWidth = 2
        aerErstInkWeave.layer.borderColor = PonllyPalette.cyan.cgColor
        aerErstInkWeave.layer.shadowColor = PonllyPalette.cyan.cgColor
        aerErstInkWeave.layer.shadowOpacity = 0.26
        aerErstInkWeave.layer.shadowRadius = 14
        aerErstInkWeave.translatesAutoresizingMaskIntoConstraints = false
    }

    private func ponllMuralCue() {
        bruCiuAerosolGlow.translatesAutoresizingMaskIntoConstraints = false
        ponllWallDepth.setImage(UIImage(systemName: "square"), for: .normal)
        ponllWallDepth.tintColor = PonllyPalette.cyan
        ponllWallDepth.translatesAutoresizingMaskIntoConstraints = false
        ponllWallDepth.addTarget(self, action: #selector(aerErstPaintKick), for: .touchUpInside)
        bruCiuAerosolGlow.addSubview(ponllWallDepth)

        let ponllMetalPanelPollm = UILabel()
        ponllMetalPanelPollm.text = "I agree to"
        ponllMetalPanelPollm.textColor = PonllyPalette.muted
        ponllMetalPanelPollm.font = PonllyFonts.utilityBox(blankFacade: 12)
        ponllMetalPanelPollm.translatesAutoresizingMaskIntoConstraints = false
        bruCiuAerosolGlow.addSubview(ponllMetalPanelPollm)

        let bruCiuGarageDoorPollm = bruCiuStencilSeed("User Agreement", action: #selector(flckinkAerosolWeave))
        let ponllBlankFacade = UILabel()
        ponllBlankFacade.text = "and"
        ponllBlankFacade.textColor = PonllyPalette.muted
        ponllBlankFacade.font = PonllyFonts.utilityBox(blankFacade: 12)
        ponllBlankFacade.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuNightWall = bruCiuStencilSeed("EULA Agreement", action: #selector(aerErstMuralDepth))
        bruCiuAerosolGlow.addSubview(bruCiuGarageDoorPollm)
        bruCiuAerosolGlow.addSubview(ponllBlankFacade)
        bruCiuAerosolGlow.addSubview(bruCiuNightWall)

        NSLayoutConstraint.activate([
            bruCiuAerosolGlow.heightAnchor.constraint(equalToConstant: 42),
            ponllWallDepth.leadingAnchor.constraint(equalTo: bruCiuAerosolGlow.leadingAnchor),
            ponllWallDepth.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            ponllWallDepth.widthAnchor.constraint(equalToConstant: 30),
            ponllWallDepth.heightAnchor.constraint(equalToConstant: 30),
            ponllMetalPanelPollm.leadingAnchor.constraint(equalTo: ponllWallDepth.trailingAnchor, constant: 12),
            ponllMetalPanelPollm.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            bruCiuGarageDoorPollm.leadingAnchor.constraint(equalTo: ponllMetalPanelPollm.trailingAnchor, constant: 4),
            bruCiuGarageDoorPollm.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            ponllBlankFacade.leadingAnchor.constraint(equalTo: bruCiuGarageDoorPollm.trailingAnchor, constant: 4),
            ponllBlankFacade.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            bruCiuNightWall.leadingAnchor.constraint(equalTo: ponllBlankFacade.trailingAnchor, constant: 4),
            bruCiuNightWall.centerYAnchor.constraint(equalTo: bruCiuAerosolGlow.centerYAnchor),
            bruCiuNightWall.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuAerosolGlow.trailingAnchor)
        ])
    }

    private func bruCiuStencilSeed(_ nozzleCraft: String, action: Selector) -> UIButton {
        let ponllNozzleSet = UIButton(type: .system)
        ponllNozzleSet.setTitle(title, for: .normal)
        ponllNozzleSet.setTitleColor(PonllyPalette.cyan, for: .normal)
        ponllNozzleSet.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        ponllNozzleSet.titleLabel?.adjustsFontSizeToFitWidth = true
        ponllNozzleSet.titleLabel?.minimumScaleFactor = 0.82
        ponllNozzleSet.addTarget(self, action: action, for: .touchUpInside)
        ponllNozzleSet.translatesAutoresizingMaskIntoConstraints = false
        return ponllNozzleSet
    }

    private func ponllChromeFuse() {
        ponllAerosolBurst = .ponllWallQuest
        ponllStencilMood.isScrollEnabled = false
        ponllStencilMood.alwaysBounceVertical = false
        ponllTextureKick.text = ""
        aerErstNeonBend.setImage(UIImage(systemName: "xmark"), for: .normal)
        bruCiuSketchLean.isHidden = false
        flckinkPaintTwist.isHidden = false
        aerErstInkWeave.isHidden = false
        bruCiuAerosolGlow.isHidden = false
        flckinkMuralGrit.isHidden = true
        flckinkInkRipple.isHidden = true
        bruCiuTextureArc()
        view.endEditing(true)
    }

    private func flckinkMarkerSpark(_ nextStep: bruCiuPaintSignal) {
        ponllAerosolBurst = nextStep
        ponllStencilMood.isScrollEnabled = true
        ponllStencilMood.alwaysBounceVertical = true
        aerErstNeonBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        ponllTextureKick.text = nextStep == .bruCiuAerosolCue ? "Login" : "Creat Account"
        bruCiuSketchLean.isHidden = true
        flckinkPaintTwist.isHidden = true
        aerErstInkWeave.isHidden = true
        bruCiuAerosolGlow.isHidden = true
        flckinkMuralGrit.isHidden = false
        flckinkInkRipple.isHidden = false
        ponllMarkerTexture.text = nextStep == .bruCiuAerosolCue ? "Welcome Back" : "Create Your Account"
        bruCiuChromeContrast.text = nextStep == .bruCiuAerosolCue ? "Sign in to join the latest graffiti battles and show off your tags." : "Set your access details before building your street art profile."
        flckinkInkRipple.setTitle(nextStep == .bruCiuAerosolCue ? "Login" : "Next", for: .normal)
//        if nextStep == .bruCiuAerosolCue {
//            flckinkNeonBalance.text = "ponlly@gmail.com"
//            aerErstTextureRhythm.text = "555666"
//        } else {
//            flckinkNeonBalance.text = ""
//            aerErstTextureRhythm.text = ""
//        }
        bruCiuTextureArc()
        flckinkNeonBalance.becomeFirstResponder()
    }

    private func aerErstMarkerFlash() {
        ponllWallDepth.setImage(UIImage(systemName: bruCiuMuralBloom ? "checkmark.square.fill" : "square"), for: .normal)
        flckinkPaintTwist.alpha = bruCiuMuralBloom ? 1 : 0.62
        aerErstInkWeave.alpha = bruCiuMuralBloom ? 1 : 0.62
    }

    private func aerErstChromeMood() -> Bool {
        guard bruCiuMuralBloom else {
            aerErstSketchRush("Please agree before continuing", bruCiuLetterForm: .ponllWhiteEdge)
            return false
        }
        return true
    }

    private func bruCiuNeonTrace() {
        ponllyShowThemeAlert(
            title: "End User License Agreement",
            message: "Ponlly is for lawful street art discussion and creative expression. You must meet the required age in your region, respect other artists, avoid harmful conduct, and use reporting or blocking tools for unsafe behavior. Severe violations may lead to account restrictions and appropriate escalation.",
            actionTitle: "Agree",
            style: .bruCiuSilverSheen,
            showsCancel: true
        ) {
            self.bruCiuMuralBloom = true
        }
    }

    private func ponllNeonPath(_ message: String) {
        bruCiuPaintCascade.text = "  \(message)"
        bruCiuPaintCascade.isHidden = false
        aerErstTextureRhythm.layer.borderColor = PonllyPalette.pink.cgColor
        aerErstTextureRhythm.layer.shadowColor = PonllyPalette.pink.cgColor
        aerErstTextureRhythm.layer.shadowOpacity = 0.26
        aerErstTextureRhythm.layer.shadowRadius = 10
    }

    private func bruCiuTextureArc() {
        bruCiuPaintCascade.isHidden = true
        [flckinkNeonBalance, aerErstTextureRhythm].forEach {
            $0.layer.borderColor = PonllyPalette.line.cgColor
            $0.layer.shadowOpacity = 0
        }
    }

    @objc private func flckinkSketchBend() {
        if ponllAerosolBurst == .ponllWallQuest {
            dismiss(animated: true)
        } else {
            ponllChromeFuse()
        }
    }

    @objc private func aerErstPaintKick() {
        bruCiuMuralBloom.toggle()
    }

    @objc private func ponllInkLean() {
        guard aerErstChromeMood() else { return }
        flckinkMarkerSpark(.bruCiuAerosolCue)
    }

    @objc private func bruCiuWallTwist() {
        guard aerErstChromeMood() else { return }
        flckinkMarkerSpark(.flckinkMuralSeed)
    }

    @objc private func flckinkAerosolWeave() {
        let doc = SmuralLeanController()
        doc.title = "Terms Of Service"
        navigationController?.pushViewController(doc, animated: true)
    }

    @objc private func aerErstMuralDepth() {
        let doc = SmuralLeanController()
        doc.title = "EULA Agreement"
        navigationController?.pushViewController(doc, animated: true)
    }

    @objc private func ponllStencilGlow() {
        aerErstTextureRhythm.isSecureTextEntry.toggle()
        ponllSketchMotion.setImage(UIImage(systemName: aerErstTextureRhythm.isSecureTextEntry ? "eye" : "eye.slash"), for: .normal)
    }

    @objc private func bruCiuMarkerGrit() {
        bruCiuTextureArc()
    }

    @objc private func flckinkChromeNoise() {
        guard aerErstChromeMood() else { return }
        let bruCiuColorRack = flckinkNeonBalance.text ?? ""
        let flckinkPaintShelf = aerErstTextureRhythm.text ?? ""
        if ponllAerosolBurst == .flckinkMuralSeed {
            if let aerErstCanShake = FlckinkMatteFinish.shared.flckinkEdgeMask(aerErstLayerMask: bruCiuColorRack, ponllPaperCut: flckinkPaintShelf) {
                ponllNeonPath(aerErstCanShake)
                return
            }
            view.endEditing(true)
            flckinkInkRipple.isEnabled = false
            flckinkInkRipple.setTitle("Creating...", for: .normal)
            FlckinkMatteFinish.shared.flckinkShadowSpray(aerErstStencilCut: bruCiuColorRack, ponllStencilSheet: flckinkPaintShelf) { ponllLineSpray, message in
                self.flckinkInkRipple.isEnabled = true
                self.flckinkInkRipple.setTitle("Next", for: .normal)
                if ponllLineSpray {
                    let ponllRattleSound = PonllyponllTornEdge.ponllBrickFacade()
                    let bruCiuPressureFlow = ponllRattleSound.brickPalette.flatMap { UIImage(named: $0) }
                    let flckinkFanSpray = PonllycyanGlowController(
                        ponllRattleSound.aerosolDream,
                        bruCiuPressureFlow,
                        self.aerErstInkSpark
                    )
                    self.navigationController?.pushViewController(flckinkFanSpray, animated: true)
                } else {
                    self.ponllNeonPath(message ?? "Account could not be created")
                }
            }
            return
        }

        flckinkInkRipple.isEnabled = false
        flckinkInkRipple.setTitle("Connecting...", for: .normal)
        FlckinkMatteFinish.shared.ponllRattlebruCiuFadeSpray(bruCiuPressureFlow: bruCiuColorRack, flckinkFanSpray: flckinkPaintShelf) { flckinkShadowSpray, message in
            self.flckinkInkRipple.isEnabled = true
            self.flckinkInkRipple.setTitle("Login", for: .normal)
            if flckinkShadowSpray {
                self.dismiss(animated: true) { self.aerErstInkSpark() }
            } else {
                self.ponllNeonPath(message ?? "Invalid email or password")
            }
        }
    }

    @objc private func aerErstNeonTexture(_ ponllColorPrint: Notification) {
        guard let aerErstAdhesiveLayer = ponllColorPrint.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bottom = max(aerErstAdhesiveLayer.height - view.safeAreaInsets.bottom, 0) + 18
        ponllStencilMood.contentInset.bottom = bottom
        ponllStencilMood.verticalScrollIndicatorInsets.bottom = bottom
        aerErstWallSurge?.constant = -bottom
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }

    @objc private func ponllSketchContrast(_ note: Notification) {
        ponllStencilMood.contentInset.bottom = 0
        ponllStencilMood.verticalScrollIndicatorInsets.bottom = 0
        aerErstWallSurge?.constant = -22
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }
}
