import UIKit

final class PflckinkSqueezeMarkerController: UIViewController {
    private enum ponllGraffitiSignal {
        case bruCiuAerosolQuest
        case flckinkMuralCue
        case aerErstPaintSeed
    }

    private let ponllInkSpark: () -> Void
    private let bruCiuWallMood = UIScrollView()
    private let flckinkStencilPath = UIView()
    private let aerErstMarkerArc = UIImageView(image: UIImage(named: "wePPonllaylanding"))
    private let ponllChromeBend = UIButton(type: .system)
    private let bruCiuNeonKick = UILabel()
    private let flckinkTextureLean = UIView()
    private let aerErstSketchTwist = UIButton(type: .system)
    private let ponllPaintWeave = UIButton(type: .system)
    private let bruCiuInkDepth = UIButton(type: .system)
    private let flckinkWallGlow = UIView()
    private let aerErstAerosolGrit = UIStackView()
    private let ponllMuralNoise = UIStackView()
    private let bruCiuStencilTexture = UILabel()
    private let flckinkMarkerContrast = UILabel()
    private let aerErstChromeBalance = UITextField()
    private let ponllNeonRhythm = UITextField()
    private let bruCiuTextureMotion = UIButton(type: .system)
    private let flckinkSketchCascade = UILabel()
    private let aerErstPaintRipple = PonllyNeonButton("Login")
    private var ponllInkSurge: NSLayoutConstraint?
    private var bruCiuWallBurst: ponllGraffitiSignal = .bruCiuAerosolQuest
    private var flckinkAerosolBloom = FlckinkMatteFinish.shared.hasConsent {
        didSet {
            FlckinkMatteFinish.shared.hasConsent = flckinkAerosolBloom
            ponllStencilFlash()
        }
    }

    init(bruCiuMuralBloom: @escaping () -> Void) {
        self.ponllInkSpark = bruCiuMuralBloom
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
        aerErstMuralFlicker()
        ponllStencilFlash()
        bruCiuChromeFuse()
        if !FlckinkMatteFinish.shared.hasConsent {
            flckinkNeonTrace()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkWallSurge(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstAerosolBurst(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func aerErstMuralFlicker() {
        aerErstMarkerArc.contentMode = .scaleAspectFill
        aerErstMarkerArc.frame = UIScreen.main.bounds
        view.addSubview(aerErstMarkerArc)
        
      

        bruCiuWallMood.keyboardDismissMode = .onDrag
        bruCiuWallMood.alwaysBounceVertical = true
        bruCiuWallMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuWallMood)
        flckinkStencilPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuWallMood.addSubview(flckinkStencilPath)

        aerErstTextureTrail()
        flckinkStencilPath.addSubview(ponllChromeBend)
        flckinkStencilPath.addSubview(bruCiuNeonKick)

        ponllPaintVeil()
        flckinkStencilPath.addSubview(flckinkTextureLean)

        bruCiuInkAura(aerErstSketchTwist, nozzleCraft: "Login with Email", symbol: "envelope.fill")
        aerErstSketchTwist.addTarget(self, action: #selector(aerErstMuralTexture), for: .touchUpInside)
        flckinkStencilPath.addSubview(aerErstSketchTwist)

        flckinkWallEcho()
        ponllPaintWeave.addTarget(self, action: #selector(ponllStencilContrast), for: .touchUpInside)
        flckinkStencilPath.addSubview(ponllPaintWeave)

        aerErstAerosolSignal()
        flckinkStencilPath.addSubview(flckinkWallGlow)

        ponllMuralQuest()
        flckinkStencilPath.addSubview(aerErstAerosolGrit)
        flckinkStencilPath.addSubview(aerErstPaintRipple)
        ponllInkSurge = aerErstPaintRipple.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -22)

        NSLayoutConstraint.activate([
            bruCiuWallMood.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuWallMood.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuWallMood.topAnchor.constraint(equalTo: view.topAnchor),
            bruCiuWallMood.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkStencilPath.leadingAnchor.constraint(equalTo: bruCiuWallMood.frameLayoutGuide.leadingAnchor),
            flckinkStencilPath.trailingAnchor.constraint(equalTo: bruCiuWallMood.frameLayoutGuide.trailingAnchor),
            flckinkStencilPath.topAnchor.constraint(equalTo: bruCiuWallMood.contentLayoutGuide.topAnchor),
            flckinkStencilPath.bottomAnchor.constraint(equalTo: bruCiuWallMood.contentLayoutGuide.bottomAnchor),
            flckinkStencilPath.heightAnchor.constraint(greaterThanOrEqualTo: bruCiuWallMood.frameLayoutGuide.heightAnchor),

            ponllChromeBend.leadingAnchor.constraint(equalTo: flckinkStencilPath.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllChromeBend.topAnchor.constraint(equalTo: flckinkStencilPath.safeAreaLayoutGuide.topAnchor, constant: 16),
            ponllChromeBend.widthAnchor.constraint(equalToConstant: 40),
            ponllChromeBend.heightAnchor.constraint(equalToConstant: 40),
            bruCiuNeonKick.centerXAnchor.constraint(equalTo: flckinkStencilPath.centerXAnchor),
            bruCiuNeonKick.centerYAnchor.constraint(equalTo: ponllChromeBend.centerYAnchor),

            flckinkTextureLean.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 24),
            flckinkTextureLean.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -24),
            flckinkTextureLean.topAnchor.constraint(equalTo: flckinkStencilPath.safeAreaLayoutGuide.topAnchor, constant: 40),
            flckinkTextureLean.heightAnchor.constraint(equalToConstant: 280),

            aerErstSketchTwist.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 24),
            aerErstSketchTwist.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -24),
            aerErstSketchTwist.bottomAnchor.constraint(equalTo: ponllPaintWeave.topAnchor, constant: -16),
            aerErstSketchTwist.heightAnchor.constraint(equalToConstant: 62),
            ponllPaintWeave.leadingAnchor.constraint(equalTo: aerErstSketchTwist.leadingAnchor),
            ponllPaintWeave.trailingAnchor.constraint(equalTo: aerErstSketchTwist.trailingAnchor),
            ponllPaintWeave.bottomAnchor.constraint(equalTo: flckinkWallGlow.topAnchor, constant: -16),
            ponllPaintWeave.heightAnchor.constraint(equalToConstant: 60),
            flckinkWallGlow.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 30),
            flckinkWallGlow.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -30),
            flckinkWallGlow.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),

            aerErstAerosolGrit.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 24),
            aerErstAerosolGrit.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -24),
            aerErstAerosolGrit.topAnchor.constraint(equalTo: ponllChromeBend.bottomAnchor, constant: 40),
            aerErstAerosolGrit.bottomAnchor.constraint(lessThanOrEqualTo: aerErstPaintRipple.topAnchor, constant: -20),
            aerErstPaintRipple.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 24),
            aerErstPaintRipple.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -24),
            ponllInkSurge!,
            aerErstPaintRipple.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    private func aerErstTextureTrail() {
        ponllChromeBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        ponllChromeBend.tintColor = .white
        ponllChromeBend.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        ponllChromeBend.layer.cornerRadius = 14
        ponllChromeBend.layer.borderWidth = 1
        ponllChromeBend.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        ponllChromeBend.translatesAutoresizingMaskIntoConstraints = false
        ponllChromeBend.addTarget(self, action: #selector(bruCiuWallGrit), for: .touchUpInside)

        bruCiuNeonKick.textColor = .white
        bruCiuNeonKick.font = PonllyFonts.muralForgepon(neonLab: 16)
        bruCiuNeonKick.translatesAutoresizingMaskIntoConstraints = false
    }

    private func ponllPaintVeil() {
        flckinkTextureLean.translatesAutoresizingMaskIntoConstraints = false

        let heroImage = UIImageView(image: UIImage(named: "brand_hero_group"))
        heroImage.contentMode = .scaleAspectFit
        heroImage.translatesAutoresizingMaskIntoConstraints = false
        flckinkTextureLean.addSubview(heroImage)

        NSLayoutConstraint.activate([
            heroImage.leadingAnchor.constraint(equalTo: flckinkTextureLean.leadingAnchor),
            heroImage.trailingAnchor.constraint(equalTo: flckinkTextureLean.trailingAnchor),
            heroImage.topAnchor.constraint(equalTo: flckinkTextureLean.topAnchor),
            heroImage.bottomAnchor.constraint(equalTo: flckinkTextureLean.bottomAnchor)
        ])
    }

    private func ponllMuralQuest() {
        aerErstAerosolGrit.axis = .vertical
        aerErstAerosolGrit.spacing = 12
        aerErstAerosolGrit.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolGrit.isHidden = true

        bruCiuStencilCue()
        aerErstAerosolGrit.addArrangedSubview(ponllMuralNoise)
        aerErstAerosolGrit.setCustomSpacing(8, after: ponllMuralNoise)

        bruCiuStencilTexture.textColor = .white
        bruCiuStencilTexture.font = PonllyFonts.muralForgepon(neonLab: 28)
        bruCiuStencilTexture.numberOfLines = 0
        aerErstAerosolGrit.addArrangedSubview(bruCiuStencilTexture)

        flckinkMarkerContrast.textColor = PonllyPalette.muted
        flckinkMarkerContrast.font = PonllyFonts.utilityBox(blankFacade: 14)
        flckinkMarkerContrast.numberOfLines = 0
        aerErstAerosolGrit.addArrangedSubview(flckinkMarkerContrast)
        aerErstAerosolGrit.setCustomSpacing(28, after: flckinkMarkerContrast)

        aerErstAerosolGrit.addArrangedSubview(flckinkMarkerPath(nozzleCraft: "Email", field: aerErstChromeBalance))
        aerErstAerosolGrit.addArrangedSubview(flckinkMarkerPath(nozzleCraft: "Password", field: ponllNeonRhythm))

        flckinkSketchCascade.textColor = PonllyPalette.pink
        flckinkSketchCascade.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        flckinkSketchCascade.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.15)
        flckinkSketchCascade.layer.cornerRadius = 6
        flckinkSketchCascade.clipsToBounds = true
        flckinkSketchCascade.isHidden = true
        flckinkSketchCascade.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolGrit.addArrangedSubview(flckinkSketchCascade)

        aerErstPaintRipple.addTarget(self, action: #selector(bruCiuInkRipple), for: .touchUpInside)
        aerErstPaintRipple.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintRipple.isHidden = true

        aerErstChromeArc(aerErstEnamelPaint: aerErstChromeBalance, placeholder: "Enter Email")
        aerErstChromeArc(aerErstEnamelPaint: ponllNeonRhythm, placeholder: "Password")
        ponllNeonRhythm.isSecureTextEntry = true
        bruCiuTextureMotion.setImage(UIImage(systemName: "eye"), for: .normal)
        bruCiuTextureMotion.tintColor = PonllyPalette.muted
        bruCiuTextureMotion.addTarget(self, action: #selector(aerErstTextureMotion), for: .touchUpInside)
        ponllNeonRhythm.rightView = bruCiuTextureMotion
        ponllNeonRhythm.rightViewMode = .always

        NSLayoutConstraint.activate([
            ponllMuralNoise.heightAnchor.constraint(equalToConstant: 60),
            aerErstChromeBalance.heightAnchor.constraint(equalToConstant: 56),
            ponllNeonRhythm.heightAnchor.constraint(equalToConstant: 56),
            flckinkSketchCascade.heightAnchor.constraint(equalToConstant: 26)
        ])
    }

    private func bruCiuStencilCue() {
        ponllMuralNoise.axis = .horizontal
        ponllMuralNoise.alignment = .center
        ponllMuralNoise.spacing = 0
        ponllMuralNoise.translatesAutoresizingMaskIntoConstraints = false

        let brandMark = UIImageView(image: UIImage(named: "brand_form_mark"))
        brandMark.contentMode = .scaleAspectFit
        brandMark.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralNoise.addSubview(brandMark)

        NSLayoutConstraint.activate([
            brandMark.leadingAnchor.constraint(equalTo: ponllMuralNoise.leadingAnchor),
            brandMark.topAnchor.constraint(equalTo: ponllMuralNoise.topAnchor),
            brandMark.bottomAnchor.constraint(equalTo: ponllMuralNoise.bottomAnchor),
            brandMark.widthAnchor.constraint(equalToConstant: 160),
            brandMark.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func flckinkMarkerPath(nozzleCraft: String, field: UITextField) -> UIView {
        let bruCiuWallTrace = UIStackView()
        bruCiuWallTrace.axis = .vertical
        bruCiuWallTrace.spacing = 7
        bruCiuWallTrace.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuNeonSpray = UILabel()
        bruCiuNeonSpray.text = title
        bruCiuNeonSpray.textColor = PonllyPalette.muted
        bruCiuNeonSpray.font = PonllyFonts.steelGate(rollingShutter: 10)
        bruCiuWallTrace.addArrangedSubview(bruCiuNeonSpray)
        bruCiuWallTrace.addArrangedSubview(field)
        return bruCiuWallTrace
    }

    private func aerErstChromeArc(aerErstEnamelPaint: UITextField, placeholder: String) {
        aerErstEnamelPaint.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: PonllyPalette.muted])
        aerErstEnamelPaint.textColor = .white
        aerErstEnamelPaint.font = PonllyFonts.utilityBox(blankFacade: 15)
        aerErstEnamelPaint.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        aerErstEnamelPaint.layer.cornerRadius = 14
        aerErstEnamelPaint.layer.borderWidth = 1.5
        aerErstEnamelPaint.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        aerErstEnamelPaint.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        aerErstEnamelPaint.leftViewMode = .always
        aerErstEnamelPaint.addTarget(self, action: #selector(ponllPaintCascade), for: .editingChanged)
    }

    private func bruCiuInkAura(_ ponllLatexPaint: UIButton, nozzleCraft: String, symbol: String) {
        ponllLatexPaint.setTitle("  \(title)", for: .normal)
        ponllLatexPaint.setImage(UIImage(systemName: symbol), for: .normal)
        ponllLatexPaint.tintColor = .white
        ponllLatexPaint.setTitleColor(.white, for: .normal)
        ponllLatexPaint.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllLatexPaint.backgroundColor = PonllyPalette.pink
        ponllLatexPaint.layer.cornerRadius = 18
        ponllLatexPaint.layer.shadowColor = PonllyPalette.pink.cgColor
        ponllLatexPaint.layer.shadowOpacity = 0.42
        ponllLatexPaint.layer.shadowRadius = 18
        ponllLatexPaint.layer.shadowOffset = CGSize(width: 0, height: 8)
        ponllLatexPaint.translatesAutoresizingMaskIntoConstraints = false
    }

    private func flckinkWallEcho() {
        ponllPaintWeave.setTitle("Create An Account", for: .normal)
        ponllPaintWeave.setImage(UIImage(systemName: "person.crop.circle.badge.plus"), for: .normal)
        ponllPaintWeave.tintColor = .white
        ponllPaintWeave.setTitleColor(.white, for: .normal)
        ponllPaintWeave.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .semibold)
        ponllPaintWeave.backgroundColor = UIColor.black.withAlphaComponent(0.24)
        ponllPaintWeave.layer.cornerRadius = 18
        ponllPaintWeave.layer.borderWidth = 2
        ponllPaintWeave.layer.borderColor = PonllyPalette.cyan.cgColor
        ponllPaintWeave.layer.shadowColor = PonllyPalette.cyan.cgColor
        ponllPaintWeave.layer.shadowOpacity = 0.26
        ponllPaintWeave.layer.shadowRadius = 14
        ponllPaintWeave.translatesAutoresizingMaskIntoConstraints = false
    }

    private func aerErstAerosolSignal() {
        flckinkWallGlow.translatesAutoresizingMaskIntoConstraints = false
        bruCiuInkDepth.setImage(UIImage(systemName: "square"), for: .normal)
        bruCiuInkDepth.tintColor = PonllyPalette.cyan
        bruCiuInkDepth.translatesAutoresizingMaskIntoConstraints = false
        bruCiuInkDepth.addTarget(self, action: #selector(flckinkAerosolNoise), for: .touchUpInside)
        flckinkWallGlow.addSubview(bruCiuInkDepth)

        let bruCiuSprayCan = UILabel()
        bruCiuSprayCan.text = "I agree to"
        bruCiuSprayCan.textColor = PonllyPalette.muted
        bruCiuSprayCan.font = PonllyFonts.utilityBox(blankFacade: 12)
        bruCiuSprayCan.translatesAutoresizingMaskIntoConstraints = false
        flckinkWallGlow.addSubview(bruCiuSprayCan)

        let flckinkPaintCan = ponllNeonBend("User Agreement", flckinkPaintShelf: #selector(bruCiuCbruCiuPressureFlow))
        let aerErstCapRack = UILabel()
        aerErstCapRack.text = "and"
        aerErstCapRack.textColor = PonllyPalette.muted
        aerErstCapRack.font = PonllyFonts.utilityBox(blankFacade: 12)
        aerErstCapRack.translatesAutoresizingMaskIntoConstraints = false
        let ponllNozzleSet = ponllNeonBend("EULA Agreement", flckinkPaintShelf: #selector(flckinkNeonRhythm))
        flckinkWallGlow.addSubview(flckinkPaintCan)
        flckinkWallGlow.addSubview(aerErstCapRack)
        flckinkWallGlow.addSubview(ponllNozzleSet)

        NSLayoutConstraint.activate([
            flckinkWallGlow.heightAnchor.constraint(equalToConstant: 42),
            bruCiuInkDepth.leadingAnchor.constraint(equalTo: flckinkWallGlow.leadingAnchor),
            bruCiuInkDepth.centerYAnchor.constraint(equalTo: flckinkWallGlow.centerYAnchor),
            bruCiuInkDepth.widthAnchor.constraint(equalToConstant: 30),
            bruCiuInkDepth.heightAnchor.constraint(equalToConstant: 30),
            bruCiuSprayCan.leadingAnchor.constraint(equalTo: bruCiuInkDepth.trailingAnchor, constant: 12),
            bruCiuSprayCan.centerYAnchor.constraint(equalTo: flckinkWallGlow.centerYAnchor),
            flckinkPaintCan.leadingAnchor.constraint(equalTo: bruCiuSprayCan.trailingAnchor, constant: 4),
            flckinkPaintCan.centerYAnchor.constraint(equalTo: flckinkWallGlow.centerYAnchor),
            aerErstCapRack.leadingAnchor.constraint(equalTo: flckinkPaintCan.trailingAnchor, constant: 4),
            aerErstCapRack.centerYAnchor.constraint(equalTo: flckinkWallGlow.centerYAnchor),
            ponllNozzleSet.leadingAnchor.constraint(equalTo: aerErstCapRack.trailingAnchor, constant: 4),
            ponllNozzleSet.centerYAnchor.constraint(equalTo: flckinkWallGlow.centerYAnchor),
            ponllNozzleSet.trailingAnchor.constraint(lessThanOrEqualTo: flckinkWallGlow.trailingAnchor)
        ])
    }

    private func ponllNeonBend(_ nozzleCraft: String, flckinkPaintShelf: Selector) -> UIButton {
        let bruCiuColorRack = UIButton(type: .system)
        bruCiuColorRack.setTitle(title, for: .normal)
        bruCiuColorRack.setTitleColor(PonllyPalette.cyan, for: .normal)
        bruCiuColorRack.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        bruCiuColorRack.titleLabel?.adjustsFontSizeToFitWidth = true
        bruCiuColorRack.titleLabel?.minimumScaleFactor = 0.82
        bruCiuColorRack.addTarget(self, action: flckinkPaintShelf, for: .touchUpInside)
        bruCiuColorRack.translatesAutoresizingMaskIntoConstraints = false
        return bruCiuColorRack
    }

    private func bruCiuChromeFuse() {
        bruCiuWallBurst = .bruCiuAerosolQuest
        bruCiuWallMood.isScrollEnabled = false
        bruCiuWallMood.alwaysBounceVertical = false
        bruCiuNeonKick.text = ""
        ponllChromeBend.setImage(UIImage(systemName: "xmark"), for: .normal)
        flckinkTextureLean.isHidden = false
        aerErstSketchTwist.isHidden = false
        ponllPaintWeave.isHidden = false
        flckinkWallGlow.isHidden = false
        aerErstAerosolGrit.isHidden = true
        aerErstPaintRipple.isHidden = true
        ponllInkGlow()
        view.endEditing(true)
    }

    private func bruCiuTextureKick(_ nextStep: ponllGraffitiSignal) {
        bruCiuWallBurst = nextStep
        bruCiuWallMood.isScrollEnabled = true
        bruCiuWallMood.alwaysBounceVertical = true
        ponllChromeBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        bruCiuNeonKick.text = nextStep == .flckinkMuralCue ? "Login" : "Creat Account"
        flckinkTextureLean.isHidden = true
        aerErstSketchTwist.isHidden = true
        ponllPaintWeave.isHidden = true
        flckinkWallGlow.isHidden = true
        aerErstAerosolGrit.isHidden = false
        aerErstPaintRipple.isHidden = false
        bruCiuStencilTexture.text = nextStep == .flckinkMuralCue ? "Welcome Back" : "Create Your Account"
        flckinkMarkerContrast.text = nextStep == .flckinkMuralCue ? "Sign in to join the latest graffiti battles and show off your tags." : "Set your access details before building your street art profile."
        aerErstPaintRipple.setTitle(nextStep == .flckinkMuralCue ? "Login" : "Next", for: .normal)
//        if nextStep == .flckinkMuralCue {
//            aerErstChromeBalance.text = "ponlly@gmail.com"
//            ponllNeonRhythm.text = "555666"
//        } else {
//            aerErstChromeBalance.text = ""
//            ponllNeonRhythm.text = ""
//        }
        ponllInkGlow()
        aerErstChromeBalance.becomeFirstResponder()
    }

    private func ponllStencilFlash() {
        bruCiuInkDepth.setImage(UIImage(systemName: flckinkAerosolBloom ? "checkmark.square.fill" : "square"), for: .normal)
        aerErstSketchTwist.alpha = flckinkAerosolBloom ? 1 : 0.62
        ponllPaintWeave.alpha = flckinkAerosolBloom ? 1 : 0.62
    }

    private func flckinkSketchWeave() -> Bool {
        guard flckinkAerosolBloom else {
            aerErstSketchRush("Please agree before continuing", bruCiuLetterForm: .ponllWhiteEdge)
            return false
        }
        return true
    }

    private func flckinkNeonTrace() {
        ponllyShowThemeAlert(
            title: "End User License Agreement",
            message: "Ponlly is for lawful street art discussion and creative expression. You must meet the required age in your region, respect other artists, avoid harmful conduct, and use reporting or blocking tools for unsafe behavior. Severe violations may lead to account restrictions and appropriate escalation.",
            actionTitle: "Agree",
            style: .bruCiuSilverSheen,
            showsCancel: true
        ) {
            self.flckinkAerosolBloom = true
        }
    }

    private func aerErstPaintDepth(_ message: String) {
        flckinkSketchCascade.text = "  \(message)"
        flckinkSketchCascade.isHidden = false
        ponllNeonRhythm.layer.borderColor = PonllyPalette.pink.cgColor
        ponllNeonRhythm.layer.shadowColor = PonllyPalette.pink.cgColor
        ponllNeonRhythm.layer.shadowOpacity = 0.26
        ponllNeonRhythm.layer.shadowRadius = 10
    }

    private func ponllInkGlow() {
        flckinkSketchCascade.isHidden = true
        [aerErstChromeBalance, ponllNeonRhythm].forEach {
            $0.layer.borderColor = PonllyPalette.line.cgColor
            $0.layer.shadowOpacity = 0
        }
    }

    @objc private func bruCiuWallGrit() {
        if bruCiuWallBurst == .bruCiuAerosolQuest {
            dismiss(animated: true)
        } else {
            bruCiuChromeFuse()
        }
    }

    @objc private func flckinkAerosolNoise() {
        flckinkAerosolBloom.toggle()
    }

    @objc private func aerErstMuralTexture() {
        guard flckinkSketchWeave() else { return }
        bruCiuTextureKick(.flckinkMuralCue)
    }

    @objc private func ponllStencilContrast() {
        guard flckinkSketchWeave() else { return }
        bruCiuTextureKick(.aerErstPaintSeed)
    }

    @objc private func bruCiuCbruCiuPressureFlow() {
        let flckinkFanSpray = SmuralLeanController()
        flckinkFanSpray.title = "Terms Of Service"
        navigationController?.pushViewController(flckinkFanSpray, animated: true)
    }

    @objc private func flckinkNeonRhythm() {
        let ponllLineSpray = SmuralLeanController()
        ponllLineSpray.title = "EULA Agreement"
        navigationController?.pushViewController(ponllLineSpray, animated: true)
    }

    @objc private func aerErstTextureMotion() {
        ponllNeonRhythm.isSecureTextEntry.toggle()
        bruCiuTextureMotion.setImage(UIImage(systemName: ponllNeonRhythm.isSecureTextEntry ? "eye" : "eye.slash"), for: .normal)
    }

    @objc private func ponllPaintCascade() {
        ponllInkGlow()
    }

    @objc private func bruCiuInkRipple() {
        guard flckinkSketchWeave() else { return }
        let bruCiuFadeSpray = aerErstChromeBalance.text ?? ""
        let flckinkShadowSpray = ponllNeonRhythm.text ?? ""
        if bruCiuWallBurst == .aerErstPaintSeed {
            if let message = FlckinkMatteFinish.shared.flckinkEdgeMask(aerErstLayerMask: bruCiuFadeSpray, ponllPaperCut: flckinkShadowSpray) {
                aerErstPaintDepth(message)
                return
            }
            view.endEditing(true)
            aerErstPaintRipple.isEnabled = false
            aerErstPaintRipple.setTitle("Creating...", for: .normal)
            FlckinkMatteFinish.shared.flckinkShadowSpray(aerErstStencilCut: bruCiuFadeSpray, ponllStencilSheet: flckinkShadowSpray) { success, message in
                self.aerErstPaintRipple.isEnabled = true
                self.aerErstPaintRipple.setTitle("Next", for: .normal)
                if success {
                    let currentUser = PonllyponllTornEdge.ponllBrickFacade()
                    let avatarImage = currentUser.brickPalette.flatMap { UIImage(named: $0) }
                    let done = PonllycyanGlowController(
                        currentUser.aerosolDream,
                        avatarImage,
                        self.ponllInkSpark
                    )
                    self.navigationController?.pushViewController(done, animated: true)
                } else {
                    self.aerErstPaintDepth(message ?? "Account could not be created")
                }
            }
            return
        }

        aerErstPaintRipple.isEnabled = false
        aerErstPaintRipple.setTitle("Connecting...", for: .normal)
        FlckinkMatteFinish.shared.ponllRattlebruCiuFadeSpray(bruCiuPressureFlow: bruCiuFadeSpray, flckinkFanSpray: flckinkShadowSpray) { bruCiuMaskingTape, message in
            self.aerErstPaintRipple.isEnabled = true
            self.aerErstPaintRipple.setTitle("Login", for: .normal)
            if bruCiuMaskingTape {
                self.dismiss(animated: true) { self.ponllInkSpark() }
            } else {
                self.aerErstPaintDepth(message ?? "Invalid email or password")
            }
        }
    }

    @objc private func flckinkWallSurge(_ note: Notification) {
        guard let aerErstStencilCut = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let ponllStencilSheet = max(aerErstStencilCut.height - view.safeAreaInsets.bottom, 0) + 18
        bruCiuWallMood.contentInset.bottom = ponllStencilSheet
        bruCiuWallMood.verticalScrollIndicatorInsets.bottom = ponllStencilSheet
        ponllInkSurge?.constant = -ponllStencilSheet
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }

    @objc private func aerErstAerosolBurst(_ note: Notification) {
        bruCiuWallMood.contentInset.bottom = 0
        bruCiuWallMood.verticalScrollIndicatorInsets.bottom = 0
        ponllInkSurge?.constant = -22
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }
}
