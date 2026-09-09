import UIKit

final class PflckinkSqueezeMarkerController: UIViewController, UITextFieldDelegate {
    private enum ponllGraffitiSignal {
        case bruCiuAerosolQuest
        case flckinkMuralCue
        case aerErstPaintSeed
    }

    private let ponllInkSpark: () -> Void
    private let bruCiuWallMood = UIScrollView()
    private let flckinkStencilPath = UIView()
    private let aerErstMarkerArc = UIImageView(image: UIImage(named: "colorFade"))
    private let aerErstSprayBloom = UIImageView()
    private let ponllChromeBend = UIButton(type: .system)
    private let bruCiuNeonKick = UILabel()
    private let flckinkTextureLean = UIView()
    private let aerErstSketchTwist = UIButton(type: .system)
    private let ponllPaintWeave = UIButton(type: .system)
    private let bruCiuInkDepth = UIButton(type: .system)
    private let flckinkWallGlow = UIView()
    private let aerErstAerosolGrit = UIStackView()
    private let ponllMuralNoise = UIStackView()
    private let flckinkPaintLetter = UIImageView()
    private let bruCiuStencilTexture = UILabel()
    private let flckinkMarkerContrast = UILabel()
    private let aerErstglossFinish = UITextField()
    private let ponllNeonRhythm = UITextField()
    private let bruCiuTextureMotion = UIButton(type: .system)
    private let flckinkSketchCascade = UILabel()
    private let aerErstPaintRipple = PonllyNeonButton("LDoEgFiGnH".ponllPaintaerErstHours)
    private let bruCiuPaintSignal = UINotificationFeedbackGenerator()
    private var bruCiuWallBurst: ponllGraffitiSignal = .bruCiuAerosolQuest
    private var ponllPaintBloom = false
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
        switch bruCiuWallBurst {
        case .bruCiuAerosolQuest:
            bruCiuChromeFuse()
        case .flckinkMuralCue, .aerErstPaintSeed:
            bruCiuTextureKick(bruCiuWallBurst)
        }
        if !FlckinkMatteFinish.shared.hasConsent {
            flckinkNeonTrace()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkWallSurge(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstAerosolBurst(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewDidAppear(_ aerErstPaintMotion: Bool) {
        super.viewDidAppear(aerErstPaintMotion)
        bruCiuSprayBloom()
    }

    override func viewWillAppear(_ aerErstPaintMotion: Bool) {
        super.viewWillAppear(aerErstPaintMotion)
        ponllNeonSignal()
    }

    private func aerErstMuralFlicker() {
        aerErstMarkerArc.contentMode = .scaleAspectFill
        aerErstMarkerArc.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstMarkerArc)

        bruCiuWallMood.keyboardDismissMode = .interactive
        bruCiuWallMood.alwaysBounceVertical = true
        bruCiuWallMood.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuWallMood)
        let ponllWallSpark = UITapGestureRecognizer(target: self, action: #selector(aerErstTextureGlow))
        ponllWallSpark.cancelsTouchesInView = false
        view.addGestureRecognizer(ponllWallSpark)
        flckinkStencilPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuWallMood.addSubview(flckinkStencilPath)

        aerErstTextureTrail()
        view.addSubview(ponllChromeBend)
        view.addSubview(bruCiuNeonKick)

        ponllPaintVeil()
        flckinkStencilPath.addSubview(flckinkTextureLean)

        bruCiuInkAura(aerErstSketchTwist, nozzleCraft: "LIoJgKiLnM NwOiPtQhR SETmUaViWlX".ponllPaintaerErstHours, symbol: "envelope.fill")
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

        NSLayoutConstraint.activate([
            aerErstMarkerArc.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            aerErstMarkerArc.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            aerErstMarkerArc.topAnchor.constraint(equalTo: view.topAnchor),
            aerErstMarkerArc.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuWallMood.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuWallMood.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuWallMood.topAnchor.constraint(equalTo: view.topAnchor),
            bruCiuWallMood.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkStencilPath.leadingAnchor.constraint(equalTo: bruCiuWallMood.frameLayoutGuide.leadingAnchor),
            flckinkStencilPath.trailingAnchor.constraint(equalTo: bruCiuWallMood.frameLayoutGuide.trailingAnchor),
            flckinkStencilPath.topAnchor.constraint(equalTo: bruCiuWallMood.contentLayoutGuide.topAnchor),
            flckinkStencilPath.bottomAnchor.constraint(equalTo: bruCiuWallMood.contentLayoutGuide.bottomAnchor),
            flckinkStencilPath.heightAnchor.constraint(greaterThanOrEqualTo: bruCiuWallMood.frameLayoutGuide.heightAnchor),

            ponllChromeBend.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllChromeBend.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            ponllChromeBend.widthAnchor.constraint(equalToConstant: 36),
            ponllChromeBend.heightAnchor.constraint(equalToConstant: 36),
            bruCiuNeonKick.centerXAnchor.constraint(equalTo: view.centerXAnchor),
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
            aerErstAerosolGrit.topAnchor.constraint(equalTo: flckinkStencilPath.topAnchor, constant: 88),
            aerErstPaintRipple.leadingAnchor.constraint(equalTo: flckinkStencilPath.leadingAnchor, constant: 24),
            aerErstPaintRipple.trailingAnchor.constraint(equalTo: flckinkStencilPath.trailingAnchor, constant: -24),
            aerErstPaintRipple.topAnchor.constraint(equalTo: aerErstAerosolGrit.bottomAnchor, constant: 60),
            aerErstPaintRipple.heightAnchor.constraint(equalToConstant: 49),
            aerErstPaintRipple.bottomAnchor.constraint(lessThanOrEqualTo: flckinkStencilPath.bottomAnchor, constant: -32)
        ])
    }

    private func aerErstTextureTrail() {
        ponllChromeBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        ponllChromeBend.ponllGraffitiDraftBackStyle()
        ponllChromeBend.tintColor = .white
        ponllChromeBend.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        ponllChromeBend.layer.cornerRadius = 18
        ponllChromeBend.layer.borderWidth = 1
        ponllChromeBend.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        ponllChromeBend.translatesAutoresizingMaskIntoConstraints = false
        ponllChromeBend.addTarget(self, action: #selector(bruCiuWallGrit), for: .touchUpInside)

        bruCiuNeonKick.textColor = .white
        bruCiuNeonKick.font = PonllyFonts.muralForgepon(neonLab: 16)
        bruCiuNeonKick.ponllGraffitiDraftTitleStyle()
        bruCiuNeonKick.translatesAutoresizingMaskIntoConstraints = false
    }

    private func ponllPaintVeil() {
        flckinkTextureLean.translatesAutoresizingMaskIntoConstraints = false

        aerErstSprayBloom.contentMode = .scaleAspectFit
        aerErstSprayBloom.translatesAutoresizingMaskIntoConstraints = false
        flckinkTextureLean.addSubview(aerErstSprayBloom)

        NSLayoutConstraint.activate([
            aerErstSprayBloom.leadingAnchor.constraint(equalTo: flckinkTextureLean.leadingAnchor),
            aerErstSprayBloom.trailingAnchor.constraint(equalTo: flckinkTextureLean.trailingAnchor),
            aerErstSprayBloom.topAnchor.constraint(equalTo: flckinkTextureLean.topAnchor),
            aerErstSprayBloom.bottomAnchor.constraint(equalTo: flckinkTextureLean.bottomAnchor)
        ])
    }

    private func bruCiuSprayBloom() {
        guard bruCiuWallBurst == .bruCiuAerosolQuest, !ponllPaintBloom else { return }
        ponllPaintBloom = true
        let flckinkPaintLayer = [aerErstSketchTwist, ponllPaintWeave, flckinkWallGlow]

        guard !UIAccessibility.isReduceMotionEnabled else {
            aerErstSprayBloom.alpha = 1
            flckinkPaintLayer.forEach {
                $0.alpha = 1
                $0.transform = .identity
            }
            return
        }

        view.layoutIfNeeded()
        let ponllLayerMask = CALayer()
        ponllLayerMask.frame = aerErstSprayBloom.bounds

        let aerErstPaintMist = CAGradientLayer()
        aerErstPaintMist.type = .radial
        aerErstPaintMist.colors = [
            UIColor.white.cgColor,
            UIColor.white.withAlphaComponent(0.92).cgColor,
            UIColor.clear.cgColor
        ]
        aerErstPaintMist.locations = [0, 0.72, 1]
        aerErstPaintMist.startPoint = CGPoint(x: 0.5, y: 0.5)
        aerErstPaintMist.endPoint = CGPoint(x: 1, y: 1)
        aerErstPaintMist.frame = ponllLayerMask.bounds.insetBy(
            dx: -ponllLayerMask.bounds.width * 0.18,
            dy: -ponllLayerMask.bounds.height * 0.18
        )
        ponllLayerMask.addSublayer(aerErstPaintMist)

        let bruCiuSprayMist: [(CGFloat, CGFloat, CGFloat)] = [
            (0.14, 0.32, 0.038), (0.21, 0.67, 0.026), (0.29, 0.18, 0.032),
            (0.34, 0.79, 0.022), (0.42, 0.12, 0.025), (0.48, 0.88, 0.035),
            (0.57, 0.17, 0.021), (0.64, 0.82, 0.028), (0.72, 0.22, 0.034),
            (0.79, 0.69, 0.025), (0.86, 0.37, 0.031), (0.89, 0.55, 0.019)
        ]
        let flckinkSprayMist = max(min(ponllLayerMask.bounds.width, ponllLayerMask.bounds.height), 1)
        bruCiuSprayMist.forEach { ponllPaintMist in
            let bruCiuPaintMist = CALayer()
            let aerErstPaintMist = flckinkSprayMist * ponllPaintMist.2
            bruCiuPaintMist.frame = CGRect(
                x: ponllLayerMask.bounds.width * ponllPaintMist.0 - aerErstPaintMist * 0.5,
                y: ponllLayerMask.bounds.height * ponllPaintMist.1 - aerErstPaintMist * 0.5,
                width: aerErstPaintMist,
                height: aerErstPaintMist
            )
            bruCiuPaintMist.backgroundColor = UIColor.white.cgColor
            bruCiuPaintMist.cornerRadius = aerErstPaintMist * 0.5
            ponllLayerMask.addSublayer(bruCiuPaintMist)
        }

        ponllLayerMask.setAffineTransform(CGAffineTransform(scaleX: 0.08, y: 0.08))
        aerErstSprayBloom.layer.mask = ponllLayerMask
        aerErstSprayBloom.alpha = 1
        let ponllPaintMotion = CABasicAnimation(keyPath: "transform.scale")
        ponllPaintMotion.fromValue = 0.08
        ponllPaintMotion.toValue = 1.35
        ponllPaintMotion.duration = 0.68
        ponllPaintMotion.timingFunction = CAMediaTimingFunction(name: .easeOut)
        ponllPaintMotion.isRemovedOnCompletion = false
        ponllPaintMotion.fillMode = .forwards
        ponllLayerMask.add(ponllPaintMotion, forKey: nil)

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) { [weak self, weak ponllLayerMask] in
            guard let self, self.aerErstSprayBloom.layer.mask === ponllLayerMask else { return }
            self.aerErstSprayBloom.layer.mask = nil
        }

        flckinkPaintLayer.enumerated().forEach { aerErstPaintDepth, ponllPaintLayer in
            UIView.animate(
                withDuration: 0.34,
                delay: 0.16 + Double(aerErstPaintDepth) * 0.06,
                usingSpringWithDamping: 0.88,
                initialSpringVelocity: 0.2,
                options: [.curveEaseOut, .beginFromCurrentState]
            ) {
                ponllPaintLayer.alpha = 1
                ponllPaintLayer.transform = .identity
            }
        }
    }

    private func ponllMuralQuest() {
        aerErstAerosolGrit.axis = .vertical
        aerErstAerosolGrit.spacing = 0
        aerErstAerosolGrit.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolGrit.isHidden = true

        bruCiuStencilCue()
        aerErstAerosolGrit.addArrangedSubview(ponllMuralNoise)
        aerErstAerosolGrit.setCustomSpacing(8, after: ponllMuralNoise)

        bruCiuStencilTexture.textColor = .white
        bruCiuStencilTexture.font = PonllyFonts.muralForgepon(neonLab: 28)
        bruCiuStencilTexture.numberOfLines = 0
        aerErstAerosolGrit.addArrangedSubview(bruCiuStencilTexture)
        aerErstAerosolGrit.setCustomSpacing(8, after: bruCiuStencilTexture)

        flckinkMarkerContrast.textColor = UIColor(red: 142/255, green: 142/255, blue: 168/255, alpha: 1)
        flckinkMarkerContrast.font = PonllyFonts.utilityBox(blankFacade: 14)
        flckinkMarkerContrast.numberOfLines = 0
        aerErstAerosolGrit.addArrangedSubview(flckinkMarkerContrast)
        aerErstAerosolGrit.setCustomSpacing(20, after: flckinkMarkerContrast)

        let ponllMarkerSignal = flckinkMarkerPath(nozzleCraft: "EYmZa0i1l2".ponllPaintaerErstHours, field: aerErstglossFinish)
        aerErstAerosolGrit.addArrangedSubview(ponllMarkerSignal)
        aerErstAerosolGrit.setCustomSpacing(14, after: ponllMarkerSignal)
        let bruCiuMarkerQuest = flckinkMarkerPath(nozzleCraft: "P3a4s5s6w7o8r9da".ponllPaintaerErstHours, field: ponllNeonRhythm)
        aerErstAerosolGrit.addArrangedSubview(bruCiuMarkerQuest)
        aerErstAerosolGrit.setCustomSpacing(16, after: bruCiuMarkerQuest)

        flckinkSketchCascade.textColor = PonllyPalette.pink
        flckinkSketchCascade.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        flckinkSketchCascade.backgroundColor = UIColor(red: 42/255, green: 30/255, blue: 43/255, alpha: 1)
        flckinkSketchCascade.layer.cornerRadius = 8
        flckinkSketchCascade.clipsToBounds = true
        flckinkSketchCascade.alpha = 0
        flckinkSketchCascade.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolGrit.addArrangedSubview(flckinkSketchCascade)

        aerErstPaintRipple.addTarget(self, action: #selector(bruCiuInkRipple), for: .touchUpInside)
        aerErstPaintRipple.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintRipple.isHidden = true
        aerErstPaintRipple.layer.cornerRadius = 16

        aerErstChromeArc(aerErstEnamelPaint: aerErstglossFinish, placeholder: "Ebnctdeerf gEhmiajikll".ponllPaintaerErstHours)
        aerErstChromeArc(aerErstEnamelPaint: ponllNeonRhythm, placeholder: "Pmansospwqorrsdt".ponllPaintaerErstHours)
        ponllNeonRhythm.isSecureTextEntry = true
        bruCiuTextureMotion.setImage(UIImage(systemName: "eye"), for: .normal)
        bruCiuTextureMotion.tintColor = PonllyPalette.muted
        bruCiuTextureMotion.addTarget(self, action: #selector(aerErstTextureMotion), for: .touchUpInside)
        ponllNeonRhythm.rightView = bruCiuTextureMotion
        ponllNeonRhythm.rightViewMode = .always
        aerErstglossFinish.delegate = self
        ponllNeonRhythm.delegate = self

        NSLayoutConstraint.activate([
            ponllMuralNoise.heightAnchor.constraint(equalToConstant: 60),
            bruCiuStencilTexture.heightAnchor.constraint(equalToConstant: 34),
            flckinkMarkerContrast.heightAnchor.constraint(equalToConstant: 42),
            ponllMarkerSignal.heightAnchor.constraint(equalToConstant: 78),
            bruCiuMarkerQuest.heightAnchor.constraint(equalToConstant: 78),
            aerErstglossFinish.heightAnchor.constraint(equalToConstant: 56),
            ponllNeonRhythm.heightAnchor.constraint(equalToConstant: 56),
            flckinkSketchCascade.heightAnchor.constraint(equalToConstant: 34)
        ])
    }

    private func bruCiuStencilCue() {
        ponllMuralNoise.axis = .horizontal
        ponllMuralNoise.alignment = .center
        ponllMuralNoise.spacing = 0
        ponllMuralNoise.translatesAutoresizingMaskIntoConstraints = false

        flckinkPaintLetter.contentMode = .scaleAspectFit
        flckinkPaintLetter.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralNoise.addSubview(flckinkPaintLetter)

        NSLayoutConstraint.activate([
            flckinkPaintLetter.leadingAnchor.constraint(equalTo: ponllMuralNoise.leadingAnchor),
            flckinkPaintLetter.topAnchor.constraint(equalTo: ponllMuralNoise.topAnchor),
            flckinkPaintLetter.bottomAnchor.constraint(equalTo: ponllMuralNoise.bottomAnchor),
            flckinkPaintLetter.widthAnchor.constraint(equalToConstant: 160),
            flckinkPaintLetter.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func ponllNeonSignal() {
        let bruCiuStyleMap = PonllGraffitiMuse.graffitiPulse.colorMap == .muralPlan
        aerErstSprayBloom.image = UIImage(named: bruCiuStyleMap ? "aerosolDream" : "aerosolLetter")
        flckinkPaintLetter.image = UIImage(named: bruCiuStyleMap ? "graffitiPulse" : "paintLetter")
    }

    private func flckinkMarkerPath(nozzleCraft: String, field: UITextField) -> UIView {
        let bruCiuWallTrace = UIStackView()
        bruCiuWallTrace.axis = .vertical
        bruCiuWallTrace.spacing = 8
        bruCiuWallTrace.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuNeonSpray = UILabel()
        bruCiuNeonSpray.text = nozzleCraft
        bruCiuNeonSpray.textColor = UIColor(red: 142/255, green: 142/255, blue: 168/255, alpha: 1)
        bruCiuNeonSpray.font = PonllyFonts.steelGate(rollingShutter: 11)
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
        aerErstEnamelPaint.layer.shadowColor = PonllyPalette.cyan.cgColor
        aerErstEnamelPaint.layer.shadowOffset = .zero
        aerErstEnamelPaint.layer.shadowRadius = 0
        aerErstEnamelPaint.layer.shadowOpacity = 0
        aerErstEnamelPaint.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        aerErstEnamelPaint.leftViewMode = .always
        aerErstEnamelPaint.addTarget(self, action: #selector(ponllPaintCascade), for: .editingChanged)
        aerErstEnamelPaint.addTarget(self, action: #selector(bruCiuChromeMotion(_:)), for: .editingDidBegin)
        aerErstEnamelPaint.addTarget(self, action: #selector(flckinkNeonCascade(_:)), for: .editingDidEnd)
        if aerErstEnamelPaint === aerErstglossFinish {
            aerErstEnamelPaint.keyboardType = .emailAddress
            aerErstEnamelPaint.textContentType = .username
            aerErstEnamelPaint.returnKeyType = .next
        } else if aerErstEnamelPaint === ponllNeonRhythm {
            aerErstEnamelPaint.textContentType = .password
            aerErstEnamelPaint.returnKeyType = .done
        }
    }

    private func bruCiuInkAura(_ ponllLatexPaint: UIButton, nozzleCraft: String, symbol: String) {
        ponllLatexPaint.setTitle("  \(nozzleCraft)", for: .normal)
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
        ponllPaintWeave.setTitle("Curvewaxtyez AABnC DAEcFcGoHuInJtK".ponllPaintaerErstHours, for: .normal)
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
        bruCiuSprayCan.text = "IL MaNgOrPeQeR StToU".ponllPaintaerErstHours
        bruCiuSprayCan.textColor = PonllyPalette.muted
        bruCiuSprayCan.font = PonllyFonts.utilityBox(blankFacade: 12)
        bruCiuSprayCan.translatesAutoresizingMaskIntoConstraints = false
        flckinkWallGlow.addSubview(bruCiuSprayCan)

        let flckinkPaintCan = ponllNeonBend("UVsWeXrY ZA0g1r2e3e4m5e6n7t8".ponllPaintaerErstHours, flckinkPaintShelf: #selector(bruCiuCbruCiuPressureFlow))
        let aerErstCapRack = UILabel()
        aerErstCapRack.text = "a9nadb".ponllPaintaerErstHours
        aerErstCapRack.textColor = PonllyPalette.muted
        aerErstCapRack.font = PonllyFonts.utilityBox(blankFacade: 12)
        aerErstCapRack.translatesAutoresizingMaskIntoConstraints = false
        let ponllNozzleSet = ponllNeonBend("EcUdLeAf gAhgirjekelmmennotp".ponllPaintaerErstHours, flckinkPaintShelf: #selector(flckinkNeonRhythm))
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
        bruCiuColorRack.setTitle(nozzleCraft, for: .normal)
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
        bruCiuWallMood.setContentOffset(.zero, animated: false)
        view.backgroundColor = PonllyPalette.background
        aerErstMarkerArc.isHidden = false
        aerErstMarkerArc.alpha = 1
        bruCiuNeonKick.text = ""
        ponllChromeBend.setImage(UIImage(systemName: "xmark"), for: .normal)
        flckinkTextureLean.isHidden = false
        aerErstSketchTwist.isHidden = false
        ponllPaintWeave.isHidden = false
        flckinkWallGlow.isHidden = false
        aerErstAerosolGrit.isHidden = true
        aerErstPaintRipple.isHidden = true
        ponllInkGlow()
        if !ponllPaintBloom {
            aerErstSprayBloom.alpha = 0
            [aerErstSketchTwist, ponllPaintWeave, flckinkWallGlow].forEach {
                $0.alpha = 0
                $0.transform = CGAffineTransform(translationX: 0, y: 14)
            }
        }
        view.endEditing(true)
    }

    private func bruCiuTextureKick(_ nextStep: ponllGraffitiSignal) {
        bruCiuWallBurst = nextStep
        bruCiuWallMood.isScrollEnabled = true
        bruCiuWallMood.alwaysBounceVertical = true
        view.backgroundColor = UIColor(red: 13/255, green: 13/255, blue: 26/255, alpha: 1)
        aerErstMarkerArc.isHidden = true
        ponllChromeBend.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        bruCiuNeonKick.text = nextStep == .flckinkMuralCue ? "Lqorgsitnu".ponllPaintaerErstHours : "Cvrwexaytz AABcCcDoEuFnGtH".ponllPaintaerErstHours
        flckinkTextureLean.isHidden = true
        aerErstSketchTwist.isHidden = true
        ponllPaintWeave.isHidden = true
        flckinkWallGlow.isHidden = true
        aerErstAerosolGrit.isHidden = false
        aerErstPaintRipple.isHidden = false
        bruCiuStencilTexture.text = nextStep == .flckinkMuralCue ? "WIeJlKcLoMmNeO PBQaRcSkT".ponllPaintaerErstHours : "CUrVeWaXtYeZ 0Y1o2u3r4 5A6c7c8o9uanbtc".ponllPaintaerErstHours
        flckinkMarkerContrast.text = nextStep == .flckinkMuralCue ? "Sdiegfng hiinj ktlom njoopiqnr stthuev wlxaytzeAsBtC DgErFaGfHfIiJtKiL MbNaOtPtQlReSsT UaVnWdX YsZh0o1w2 3o4f5f6 7y8o9uarb ctdaegfsg.h".ponllPaintaerErstHours : "Siejtk lymonuorp qarcscteusvsw xdyeztAaBiClDsE FbGeHfIoJrKeL MbNuOiPlQdRiSnTgU VyWoXuYrZ 0s1t2r3e4e5t6 7a8r9ta bpcrdoeffiglhei.j".ponllPaintaerErstHours
        aerErstPaintRipple.setTitle(nextStep == .flckinkMuralCue ? "Lkolgminno".ponllPaintaerErstHours : "Npeqxrts".ponllPaintaerErstHours, for: .normal)

        ponllInkGlow()
        aerErstglossFinish.becomeFirstResponder()
    }

    private func ponllStencilFlash() {
        bruCiuInkDepth.setImage(UIImage(systemName: flckinkAerosolBloom ? "checkmark.square.fill" : "sJqKuLaMrNeO".ponllPaintaerErstHours), for: .normal)
        aerErstSketchTwist.alpha = flckinkAerosolBloom ? 1 : 0.62
        ponllPaintWeave.alpha = flckinkAerosolBloom ? 1 : 0.62
    }

    private func flckinkSketchWeave() -> Bool {
        guard flckinkAerosolBloom else {
            aerErstSketchRush("PPlQeRaSsTeU VaWgXrYeZe0 1b2e3f4o5r6e7 8c9oanbtcidneufignhgi".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            return false
        }
        return true
    }

    private func flckinkNeonTrace() {
        ponllyShowThemeAlert(
            title: "Ejnkdl mUnsoeprq rLsitcuevnwsxey zAAgBrCeDeEmFeGnHtI".ponllPaintaerErstHours,
            message: "PJoKnLlMlNyO PiQsR SfToUrV WlXaYwZf0u1l2 3s4t5r6e7e8t9 aabrctd edfigshciujskslimonno paqnrds tcurvewaxtyizvAeB CeDxEpFrGeHsIsJiKoLnM.N OYPoQuR SmTuUsVtW XmYeZe0t1 2t3h4e5 6r7e8q9uaibrcedde fagghei jiknl mynoouprq rrsetguivownx,y zrAeBsCpDeEcFtG HoItJhKeLrM NaOrPtQiRsStTsU,V WaXvYoZi0d1 2h3a4r5m6f7u8l9 acbocnddeufcgth,i jaknldm nuospeq rrsetpuovrwtxiynzgA BoCrD EbFlGoHcIkJiKnLgM NtOoPoQlRsS TfUoVrW XuYnZs0a1f2e3 4b5e6h7a8v9iaobrc.d eSfegvheirjek lvminoolpaqtrisotnusv wmxayyz AlBeCaDdE FtGoH IaJcKcLoMuNnOtP QrReSsTtUrViWcXtYiZo0n1s2 3a4n5d6 7a8p9parbocpdreifagthei jekslcmanloaptqirosnt.u".ponllPaintaerErstHours,
            actionTitle: "Avgwrxeyez".ponllPaintaerErstHours,
            style: .bruCiuSilverSheen,
            showsCancel: true
        ) {
            self.flckinkAerosolBloom = true
        }
    }

    private func aerErstPaintDepth(_ message: String) {
        let ponllOutlineDraft = UIImage(systemName: "exclamationmark.circle.fill")?.withTintColor(PonllyPalette.pink, renderingMode: .alwaysOriginal)
        let bruCiuStencilDraft = NSTextAttachment()
        bruCiuStencilDraft.image = ponllOutlineDraft
        bruCiuStencilDraft.bounds = CGRect(x: 0, y: -2, width: 14, height: 14)
        let flckinkMarkerDraft = NSMutableAttributedString(string: "    ")
        flckinkMarkerDraft.append(NSAttributedString(attachment: bruCiuStencilDraft))
        flckinkMarkerDraft.append(NSAttributedString(
            string: "  \(message)",
            attributes: [
                .foregroundColor: PonllyPalette.pink,
                .font: PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
            ]
        ))
        flckinkSketchCascade.attributedText = flckinkMarkerDraft
        flckinkSketchCascade.alpha = 1
        ponllNeonRhythm.layer.borderColor = PonllyPalette.pink.cgColor
        ponllNeonRhythm.layer.shadowColor = PonllyPalette.pink.cgColor
        ponllNeonRhythm.layer.shadowOpacity = 0.26
        ponllNeonRhythm.layer.shadowRadius = 10
    }

    private func ponllInkGlow() {
        flckinkSketchCascade.alpha = 0
        flckinkSketchCascade.attributedText = nil
        [aerErstglossFinish, ponllNeonRhythm].forEach {
            let aerErstPaintGlow = $0.isFirstResponder
            $0.layer.borderColor = (aerErstPaintGlow ? PonllyPalette.pink : PonllyPalette.line).cgColor
            $0.layer.shadowRadius = aerErstPaintGlow ? 9 : 0
            $0.layer.shadowOpacity = aerErstPaintGlow ? 0.22 : 0
        }
    }

    private func aerErstNeonFlash(_ ponllPaintLayer: UIButton, flckinkPaintBloom: @escaping () -> Void) {
        bruCiuPaintSignal.prepare()
        bruCiuPaintSignal.notificationOccurred(.success)
        guard !UIAccessibility.isReduceMotionEnabled else {
            flckinkPaintBloom()
            return
        }

        let aerErstPaintGlow = ponllPaintLayer.layer.shadowColor
        let bruCiuPaintGlow = ponllPaintLayer.layer.shadowOpacity
        let flckinkPaintGlow = ponllPaintLayer.layer.shadowRadius
        let ponllPaintGlow = ponllPaintLayer.layer.shadowOffset
        ponllPaintLayer.isEnabled = false
        ponllPaintLayer.layer.shadowColor = PonllyPalette.cyan.cgColor
        ponllPaintLayer.layer.shadowOffset = .zero

        UIView.animateKeyframes(
            withDuration: 0.36,
            delay: 0,
            options: [.calculationModeCubic, .beginFromCurrentState]
        ) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.28) {
                ponllPaintLayer.transform = CGAffineTransform(scaleX: 0.98, y: 0.98)
                ponllPaintLayer.layer.shadowOpacity = 0.2
                ponllPaintLayer.layer.shadowRadius = 10
            }
            UIView.addKeyframe(withRelativeStartTime: 0.28, relativeDuration: 0.42) {
                ponllPaintLayer.transform = CGAffineTransform(scaleX: 1.025, y: 1.025)
                ponllPaintLayer.layer.shadowOpacity = 0.58
                ponllPaintLayer.layer.shadowRadius = 22
            }
            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.3) {
                ponllPaintLayer.transform = .identity
                ponllPaintLayer.layer.shadowOpacity = bruCiuPaintGlow
                ponllPaintLayer.layer.shadowRadius = flckinkPaintGlow
            }
        } completion: { _ in
            ponllPaintLayer.transform = .identity
            ponllPaintLayer.layer.shadowColor = aerErstPaintGlow
            ponllPaintLayer.layer.shadowOpacity = bruCiuPaintGlow
            ponllPaintLayer.layer.shadowRadius = flckinkPaintGlow
            ponllPaintLayer.layer.shadowOffset = ponllPaintGlow
            ponllPaintLayer.isEnabled = true
            flckinkPaintBloom()
        }
    }

    @objc private func bruCiuWallGrit() {
        if bruCiuWallBurst == .bruCiuAerosolQuest {
            dismiss(animated: true)
        } else if navigationController?.viewControllers.first !== self {
            navigationController?.popViewController(animated: true)
        } else {
            bruCiuChromeFuse()
        }
    }

    @objc private func flckinkAerosolNoise() {
        flckinkAerosolBloom.toggle()
    }

    @objc private func aerErstMuralTexture() {
        guard flckinkSketchWeave() else { return }
        let flckinkMuralCue = PflckinkSqueezeMarkerController(bruCiuMuralBloom: ponllInkSpark)
        flckinkMuralCue.bruCiuWallBurst = .flckinkMuralCue
        navigationController?.pushViewController(flckinkMuralCue, animated: true)
    }

    @objc private func ponllStencilContrast() {
        guard flckinkSketchWeave() else { return }
        let aerErstPaintSeed = PflckinkSqueezeMarkerController(bruCiuMuralBloom: ponllInkSpark)
        aerErstPaintSeed.bruCiuWallBurst = .aerErstPaintSeed
        navigationController?.pushViewController(aerErstPaintSeed, animated: true)
    }

    @objc private func bruCiuCbruCiuPressureFlow() {
        let flckinkFanSpray = SmuralLeanController(muralPlan: .sketchWall)
        navigationController?.pushViewController(flckinkFanSpray, animated: true)
    }

    @objc private func flckinkNeonRhythm() {
        let ponllLineSpray = SmuralLeanController(muralPlan: .letterWall)
        navigationController?.pushViewController(ponllLineSpray, animated: true)
    }

    @objc private func aerErstTextureMotion() {
        ponllNeonRhythm.isSecureTextEntry.toggle()
        bruCiuTextureMotion.setImage(UIImage(systemName: ponllNeonRhythm.isSecureTextEntry ? "e4y5e6".ponllPaintaerErstHours : "eye.slash"), for: .normal)
    }

    @objc private func ponllPaintCascade() {
        ponllInkGlow()
    }

    @objc private func aerErstTextureGlow() {
        view.endEditing(true)
    }

    @objc private func bruCiuWallGlow() {
        ponllNeonRhythm.becomeFirstResponder()
    }

    @objc private func flckinkPaintMotion() {
        view.endEditing(true)
        bruCiuInkRipple()
    }

    @objc private func bruCiuInkRipple() {
        guard flckinkSketchWeave() else { return }
        let bruCiuFadeSpray = aerErstglossFinish.text ?? ""
        let flckinkShadowSpray = ponllNeonRhythm.text ?? ""
        if bruCiuWallBurst == .aerErstPaintSeed {
            if let message = FlckinkMatteFinish.shared.flckinkEdgeMask(aerErstLayerMask: bruCiuFadeSpray, ponllPaperCut: flckinkShadowSpray) {
                aerErstPaintDepth(message)
                return
            }
            view.endEditing(true)
            let ponllGraffitiDraft = PonllGraffitiDraftController(
                aerErstStencilDraft: bruCiuFadeSpray,
                ponllMarkerDraft: flckinkShadowSpray,
                bruCiuTextureDraft: ponllInkSpark
            )
            aerErstNeonFlash(aerErstPaintRipple) {
                self.navigationController?.pushViewController(ponllGraffitiDraft, animated: true)
            }
            return
        }

        aerErstPaintRipple.isEnabled = false
        aerErstPaintRipple.setTitle("COoPnQnReScTtUiVnWgX.Y.Z.0".ponllPaintaerErstHours, for: .normal)
        FlckinkMatteFinish.shared.ponllRattlebruCiuFadeSpray(bruCiuPressureFlow: bruCiuFadeSpray, flckinkFanSpray: flckinkShadowSpray) { bruCiuMaskingTape, message in
            self.aerErstPaintRipple.isEnabled = true
            self.aerErstPaintRipple.setTitle("L1o2g3i4n5".ponllPaintaerErstHours, for: .normal)
            if bruCiuMaskingTape {
                self.aerErstNeonFlash(self.aerErstPaintRipple) {
                    self.dismiss(animated: true) { self.ponllInkSpark() }
                }
            } else {
                self.aerErstPaintDepth(message ?? "I6n7v8a9laibdc deemfagihli jokrl mpnaospsqwrosrtdu".ponllPaintaerErstHours)
            }
        }
    }

    @objc private func flckinkWallSurge(_ note: Notification) {
        guard let aerErstStencilCut = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let ponllStencilSheet = max(aerErstStencilCut.height - view.safeAreaInsets.bottom, 0) + 18
        bruCiuWallMood.contentInset.bottom = ponllStencilSheet
        bruCiuWallMood.verticalScrollIndicatorInsets.bottom = ponllStencilSheet
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
        let bruCiuPaintDraft = aerErstglossFinish.isFirstResponder ? aerErstglossFinish : (ponllNeonRhythm.isFirstResponder ? ponllNeonRhythm : nil)
        if let bruCiuPaintDraft {
            let flckinkInkDraft = bruCiuPaintDraft.convert(bruCiuPaintDraft.bounds, to: bruCiuWallMood).insetBy(dx: 0, dy: -18)
            bruCiuWallMood.scrollRectToVisible(flckinkInkDraft, animated: true)
        }
    }

    @objc private func aerErstAerosolBurst(_ note: Notification) {
        bruCiuWallMood.contentInset.bottom = 0
        bruCiuWallMood.verticalScrollIndicatorInsets.bottom = 0
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }

    @objc private func bruCiuChromeMotion(_ ponllNeonDraft: UITextField) {
        UIView.animate(withDuration: 0.18, delay: 0, options: [.curveEaseOut, .beginFromCurrentState]) {
            ponllNeonDraft.layer.borderColor = PonllyPalette.pink.cgColor
            ponllNeonDraft.layer.shadowRadius = 9
            ponllNeonDraft.layer.shadowOpacity = 0.22
        }
    }

    @objc private func flckinkNeonCascade(_ ponllNeonDraft: UITextField) {
        UIView.animate(withDuration: 0.18, delay: 0, options: [.curveEaseOut, .beginFromCurrentState]) {
            ponllNeonDraft.layer.borderColor = PonllyPalette.line.cgColor
            ponllNeonDraft.layer.shadowRadius = 0
            ponllNeonDraft.layer.shadowOpacity = 0
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === aerErstglossFinish {
            ponllNeonRhythm.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            bruCiuInkRipple()
        }
        return true
    }
}

private final class PonllGraffitiDraftController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    private let aerErstStencilDraft: String
    private let ponllMarkerDraft: String
    private let bruCiuTextureDraft: () -> Void
    private let flckinkUrbanDraft = UIScrollView()
    private let ponllSketchDraft = UIView()
    private let bruCiuChromeDraft = UIView()
    private let flckinkOutlineDraft = UIButton(type: .system)
    private let aerErstPaintDraft = UILabel()
    private let ponllInkDraft = UIButton(type: .system)
    private let bruCiuWallDraft = UILabel()
    private let flckinkMuralDraft = UILabel()
    private let aerErstAerosolDraft = UITextField()
    private let ponllStencilDraft = UILabel()
    private let bruCiuMarkerDraft = UILabel()
    private let flckinkGraffitiDraft: UICollectionView
    private let aerErstLetterDraft = PonllyNeonButton("Cpoomnplllebtreu CPiruoffliclkei".ponllPaintaerErstHours)
    private let ponllPaintDraft = [
        "Gproanflflibtriu".ponllPaintaerErstHours,
        "WpiolndlsltbyrlueC".ponllPaintaerErstHours,
        "Sptorneleltb rAurCti".ponllPaintaerErstHours,
        "Mpuornalll".ponllPaintaerErstHours,
        "Spkoentlclhb".ponllPaintaerErstHours,
        "CphoanrlalcbtreurC iAurftl".ponllPaintaerErstHours,
        "Hpiopn-lHlobpr uCCuilutfulrcek".ponllPaintaerErstHours,
        "Bpaotntllleb".ponllPaintaerErstHours,
        "Sptorneleltb rPuhCoituofglrcakpihnyk".ponllPaintaerErstHours,
        "Dpiogniltlablr uACritu".ponllPaintaerErstHours
    ]
    private var bruCiuInkDraft: Set<Int> = [1, 2, 5, 7]
    private var flckinkWallDraft: UIImage?

    init(aerErstStencilDraft: String, ponllMarkerDraft: String, bruCiuTextureDraft: @escaping () -> Void) {
        self.aerErstStencilDraft = aerErstStencilDraft
        self.ponllMarkerDraft = ponllMarkerDraft
        self.bruCiuTextureDraft = bruCiuTextureDraft
        let ponllLayerDraft = UICollectionViewFlowLayout()
        ponllLayerDraft.minimumInteritemSpacing = 8
        ponllLayerDraft.minimumLineSpacing = 10
        self.flckinkGraffitiDraft = UICollectionView(frame: .zero, collectionViewLayout: ponllLayerDraft)
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 13/255, green: 13/255, blue: 26/255, alpha: 1)
        navigationController?.setNavigationBarHidden(true, animated: false)
        ponllAerosolDraft()
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiuMuralDraft(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkStencilDraft(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func ponllAerosolDraft() {
        bruCiuChromeDraft.backgroundColor = UIColor(red: 13/255, green: 13/255, blue: 26/255, alpha: 1)
        bruCiuChromeDraft.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuChromeDraft)

        flckinkUrbanDraft.keyboardDismissMode = .interactive
        flckinkUrbanDraft.alwaysBounceVertical = true
        flckinkUrbanDraft.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkUrbanDraft)

        ponllSketchDraft.translatesAutoresizingMaskIntoConstraints = false
        flckinkUrbanDraft.addSubview(ponllSketchDraft)

        let bruCiuPaintDraft = UITapGestureRecognizer(target: self, action: #selector(aerErstInkDraft))
        bruCiuPaintDraft.cancelsTouchesInView = false
        view.addGestureRecognizer(bruCiuPaintDraft)

        flckinkOutlineDraft.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkOutlineDraft.ponllGraffitiDraftBackStyle()
        flckinkOutlineDraft.tintColor = .white
        flckinkOutlineDraft.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        flckinkOutlineDraft.layer.cornerRadius = 18
        flckinkOutlineDraft.layer.borderWidth = 1
        flckinkOutlineDraft.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        flckinkOutlineDraft.addTarget(self, action: #selector(ponllWallDraft), for: .touchUpInside)
        flckinkOutlineDraft.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkOutlineDraft)

        aerErstPaintDraft.text = "Cproenaltleb rPurCoifuifllec".ponllPaintaerErstHours
        aerErstPaintDraft.textColor = .white
        aerErstPaintDraft.textAlignment = .center
        aerErstPaintDraft.font = PonllyFonts.muralForgepon(neonLab: 16)
        aerErstPaintDraft.ponllGraffitiDraftTitleStyle()
        aerErstPaintDraft.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstPaintDraft)

        ponllInkDraft.backgroundColor = UIColor.black.withAlphaComponent(0.72)
        ponllInkDraft.tintColor = .white
        ponllInkDraft.setImage(UIImage(systemName: "camera", withConfiguration: UIImage.SymbolConfiguration(pointSize: 27, weight: .medium)), for: .normal)
        ponllInkDraft.layer.cornerRadius = 56
        ponllInkDraft.layer.borderWidth = 2
        ponllInkDraft.layer.borderColor = PonllyPalette.cyan.cgColor
        ponllInkDraft.imageView?.contentMode = .scaleAspectFill
        ponllInkDraft.clipsToBounds = true
        ponllInkDraft.addTarget(self, action: #selector(bruCiuSketchDraft), for: .touchUpInside)
        ponllInkDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(ponllInkDraft)

        bruCiuWallDraft.text = "Tpaopn ltlob ruupCliouafdl cakviantkaare".ponllPaintaerErstHours
        bruCiuWallDraft.textColor = PonllyPalette.cyan
        bruCiuWallDraft.textAlignment = .center
        bruCiuWallDraft.font = PonllyFonts.steelGate(rollingShutter: 11)
        bruCiuWallDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(bruCiuWallDraft)

        flckinkMuralDraft.text = "Npiocnklnlabmreu".ponllPaintaerErstHours
        flckinkMuralDraft.textColor = UIColor(red: 142/255, green: 142/255, blue: 168/255, alpha: 1)
        flckinkMuralDraft.font = PonllyFonts.steelGate(rollingShutter: 11)
        flckinkMuralDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(flckinkMuralDraft)

        aerErstAerosolDraft.attributedPlaceholder = NSAttributedString(
            string: "Eqnwteerrt yyuoiuorp ansidcfkgnhajmkel".ponllPaintaerErstHours,
            attributes: [.foregroundColor: UIColor(red: 142/255, green: 142/255, blue: 168/255, alpha: 1)]
        )
        aerErstAerosolDraft.textColor = .white
        aerErstAerosolDraft.font = PonllyFonts.utilityBox(blankFacade: 15)
        aerErstAerosolDraft.textContentType = .nickname
        aerErstAerosolDraft.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.94)
        aerErstAerosolDraft.layer.cornerRadius = 14
        aerErstAerosolDraft.layer.borderWidth = 1.5
        aerErstAerosolDraft.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        aerErstAerosolDraft.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        aerErstAerosolDraft.leftViewMode = .always
        aerErstAerosolDraft.returnKeyType = .done
        aerErstAerosolDraft.delegate = self
        aerErstAerosolDraft.addTarget(self, action: #selector(bruCiuOutlineDraft(_:)), for: .editingDidBegin)
        aerErstAerosolDraft.addTarget(self, action: #selector(flckinkChromeDraft(_:)), for: .editingDidEnd)
        aerErstAerosolDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(aerErstAerosolDraft)

        ponllStencilDraft.text = "2p-o2n0l lcbhraurCaicutfelrcsk".ponllPaintaerErstHours
        ponllStencilDraft.textColor = UIColor(red: 142/255, green: 142/255, blue: 168/255, alpha: 1)
        ponllStencilDraft.font = PonllyFonts.utilityBox(blankFacade: 12)
        ponllStencilDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(ponllStencilDraft)

        bruCiuMarkerDraft.text = "Gproanflflibtriu CIinutfelrceksitnsk".ponllPaintaerErstHours
        bruCiuMarkerDraft.textColor = .white
        bruCiuMarkerDraft.font = PonllyFonts.muralForgepon(neonLab: 14)
        bruCiuMarkerDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(bruCiuMarkerDraft)

        flckinkGraffitiDraft.backgroundColor = .clear
        flckinkGraffitiDraft.showsVerticalScrollIndicator = false
        flckinkGraffitiDraft.isScrollEnabled = false
        flckinkGraffitiDraft.dataSource = self
        flckinkGraffitiDraft.delegate = self
        flckinkGraffitiDraft.register(PonllStencilDraftCell.self, forCellWithReuseIdentifier: "PpoonnllllSbtreunCciiulfDlrcakfitnCkealelr".ponllPaintaerErstHours)
        flckinkGraffitiDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(flckinkGraffitiDraft)

        aerErstLetterDraft.layer.cornerRadius = 16
        aerErstLetterDraft.addTarget(self, action: #selector(aerErstTextureDraft), for: .touchUpInside)
        aerErstLetterDraft.translatesAutoresizingMaskIntoConstraints = false
        ponllSketchDraft.addSubview(aerErstLetterDraft)

        NSLayoutConstraint.activate([
            bruCiuChromeDraft.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuChromeDraft.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuChromeDraft.topAnchor.constraint(equalTo: view.topAnchor),
            bruCiuChromeDraft.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkUrbanDraft.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkUrbanDraft.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkUrbanDraft.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkUrbanDraft.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ponllSketchDraft.leadingAnchor.constraint(equalTo: flckinkUrbanDraft.frameLayoutGuide.leadingAnchor),
            ponllSketchDraft.trailingAnchor.constraint(equalTo: flckinkUrbanDraft.frameLayoutGuide.trailingAnchor),
            ponllSketchDraft.topAnchor.constraint(equalTo: flckinkUrbanDraft.contentLayoutGuide.topAnchor),
            ponllSketchDraft.bottomAnchor.constraint(equalTo: flckinkUrbanDraft.contentLayoutGuide.bottomAnchor),
            ponllSketchDraft.heightAnchor.constraint(greaterThanOrEqualTo: flckinkUrbanDraft.frameLayoutGuide.heightAnchor),

            flckinkOutlineDraft.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            flckinkOutlineDraft.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            flckinkOutlineDraft.widthAnchor.constraint(equalToConstant: 36),
            flckinkOutlineDraft.heightAnchor.constraint(equalToConstant: 36),
            aerErstPaintDraft.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            aerErstPaintDraft.centerYAnchor.constraint(equalTo: flckinkOutlineDraft.centerYAnchor),

            ponllInkDraft.centerXAnchor.constraint(equalTo: ponllSketchDraft.centerXAnchor),
            ponllInkDraft.topAnchor.constraint(equalTo: ponllSketchDraft.topAnchor, constant: 80),
            ponllInkDraft.widthAnchor.constraint(equalToConstant: 112),
            ponllInkDraft.heightAnchor.constraint(equalToConstant: 112),
            bruCiuWallDraft.centerXAnchor.constraint(equalTo: ponllSketchDraft.centerXAnchor),
            bruCiuWallDraft.topAnchor.constraint(equalTo: ponllInkDraft.bottomAnchor, constant: 12),
            bruCiuWallDraft.heightAnchor.constraint(equalToConstant: 14),

            flckinkMuralDraft.leadingAnchor.constraint(equalTo: ponllSketchDraft.leadingAnchor, constant: 24),
            flckinkMuralDraft.trailingAnchor.constraint(equalTo: ponllSketchDraft.trailingAnchor, constant: -24),
            flckinkMuralDraft.topAnchor.constraint(equalTo: bruCiuWallDraft.bottomAnchor, constant: 28),
            flckinkMuralDraft.heightAnchor.constraint(equalToConstant: 14),
            aerErstAerosolDraft.leadingAnchor.constraint(equalTo: flckinkMuralDraft.leadingAnchor),
            aerErstAerosolDraft.trailingAnchor.constraint(equalTo: flckinkMuralDraft.trailingAnchor),
            aerErstAerosolDraft.topAnchor.constraint(equalTo: flckinkMuralDraft.bottomAnchor, constant: 10),
            aerErstAerosolDraft.heightAnchor.constraint(equalToConstant: 56),
            ponllStencilDraft.leadingAnchor.constraint(equalTo: flckinkMuralDraft.leadingAnchor),
            ponllStencilDraft.topAnchor.constraint(equalTo: aerErstAerosolDraft.bottomAnchor, constant: 12),
            ponllStencilDraft.heightAnchor.constraint(equalToConstant: 16),

            bruCiuMarkerDraft.leadingAnchor.constraint(equalTo: flckinkMuralDraft.leadingAnchor),
            bruCiuMarkerDraft.trailingAnchor.constraint(equalTo: flckinkMuralDraft.trailingAnchor),
            bruCiuMarkerDraft.topAnchor.constraint(equalTo: ponllStencilDraft.bottomAnchor, constant: 28),
            bruCiuMarkerDraft.heightAnchor.constraint(equalToConstant: 17),
            flckinkGraffitiDraft.leadingAnchor.constraint(equalTo: flckinkMuralDraft.leadingAnchor),
            flckinkGraffitiDraft.trailingAnchor.constraint(equalTo: flckinkMuralDraft.trailingAnchor),
            flckinkGraffitiDraft.topAnchor.constraint(equalTo: bruCiuMarkerDraft.bottomAnchor, constant: 20),
            flckinkGraffitiDraft.heightAnchor.constraint(equalToConstant: 130),

            aerErstLetterDraft.leadingAnchor.constraint(equalTo: flckinkMuralDraft.leadingAnchor),
            aerErstLetterDraft.trailingAnchor.constraint(equalTo: flckinkMuralDraft.trailingAnchor),
            aerErstLetterDraft.topAnchor.constraint(equalTo: flckinkGraffitiDraft.bottomAnchor, constant: 42),
            aerErstLetterDraft.heightAnchor.constraint(equalToConstant: 49),
            aerErstLetterDraft.bottomAnchor.constraint(lessThanOrEqualTo: ponllSketchDraft.bottomAnchor, constant: -32)
        ])
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ponllPaintDraft.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let ponllChromeDraft = collectionView.dequeueReusableCell(withReuseIdentifier: "PpoonnllllSbtreunCciiulfDlrcakfitnCkealelr".ponllPaintaerErstHours, for: indexPath) as? PonllStencilDraftCell else {
            return UICollectionViewCell()
        }
        ponllChromeDraft.ponllMuralDraft(ponllPaintDraft[indexPath.item], bruCiuPaintDraft: bruCiuInkDraft.contains(indexPath.item))
        return ponllChromeDraft
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if bruCiuInkDraft.contains(indexPath.item) {
            bruCiuInkDraft.remove(indexPath.item)
        } else if bruCiuInkDraft.count < 5 {
            bruCiuInkDraft.insert(indexPath.item)
        }
        collectionView.reloadItems(at: [indexPath])
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flckinkLetterDraft = (PonllGraffitiMuse.graffitiPulse.paintMotion(ponllPaintDraft[indexPath.item]) as NSString).size(withAttributes: [.font: PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)]).width
        return CGSize(width: ceil(flckinkLetterDraft) + 32, height: 36)
    }

    @objc private func ponllWallDraft() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func bruCiuSketchDraft() {
        view.endEditing(true)
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else { return }
        let flckinkImageDraft = UIImagePickerController()
        flckinkImageDraft.sourceType = .photoLibrary
        flckinkImageDraft.allowsEditing = true
        flckinkImageDraft.delegate = self
        present(flckinkImageDraft, animated: true)
    }

    @objc private func aerErstTextureDraft() {
        view.endEditing(true)
        let ponllChromeDraft = (aerErstAerosolDraft.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !ponllChromeDraft.isEmpty else {
            aerErstMarkerDraft("Pploenalsleb reunCtieurf lac kniinckkanearmEer".ponllPaintaerErstHours)
            return
        }
        guard (2...20).contains(ponllChromeDraft.count) else {
            aerErstMarkerDraft("Npiocnklnlabmreu Cmiuusftl cbkei n2k-a2e0r Ecrhsatrpaocntlelrbsr".ponllPaintaerErstHours)
            return
        }
        guard !bruCiuInkDraft.isEmpty else {
            aerErstMarkerDraft("Speolnelcltb rautC iluefalsctk ionnkea eirnEtresrtepsotn".ponllPaintaerErstHours)
            return
        }

        aerErstLetterDraft.isEnabled = false
        flckinkOutlineDraft.isEnabled = false
        aerErstLetterDraft.setTitle("Cproenaltlibnrgu.C.i.u".ponllPaintaerErstHours, for: .normal)
        FlckinkMatteFinish.shared.flckinkShadowSpray(aerErstStencilCut: aerErstStencilDraft, ponllStencilSheet: ponllMarkerDraft) { success, message in
            self.aerErstLetterDraft.isEnabled = true
            self.flckinkOutlineDraft.isEnabled = true
            self.aerErstLetterDraft.setTitle("Cpoomnplllebtreu CPiruoffliclkei".ponllPaintaerErstHours, for: .normal)
            guard success else {
                self.aerErstMarkerDraft(message ?? "Amcncoopuqnrts tcuovuwlxdy znAoBtC DbEeF GcHrIeJaKtLeMdN".ponllPaintaerErstHours)
                return
            }
            let bruCiuStencilDraft = self.bruCiuInkDraft.sorted().map { self.ponllPaintDraft[$0] }
            PonllyponllTornEdge.updatebruCiuNightWall(
                flckinkDawnWall: ponllChromeDraft,
                aerErstRainWall: "",
                ponllSunlitWall: bruCiuStencilDraft
            )
            PonllyponllTornEdge.saveCurrentaerErstBlackOutline(ponllWhiteEdge: self.flckinkWallDraft, bruCiuSilverSheen: nil)
            let flckinkProfileDraft = PonllycyanGlowController(ponllChromeDraft, self.flckinkWallDraft, self.bruCiuTextureDraft)
            self.navigationController?.pushViewController(flckinkProfileDraft, animated: true)
        }
    }

    private func aerErstMarkerDraft(_ ponllPaintDraft: String) {
        ponllyShowThemeAlert(title: "Cproenaltleb rPurCoifuifllec".ponllPaintaerErstHours, message: ponllPaintDraft, actionTitle: "OBKT".ponllPaintaerErstHours, style: .bruCiuSilverSheen)
    }

    @objc private func aerErstInkDraft() {
        view.endEditing(true)
    }

    @objc private func bruCiuOutlineDraft(_ ponllAerosolDraft: UITextField) {
        ponllAerosolDraft.layer.borderColor = PonllyPalette.pink.cgColor
    }

    @objc private func flckinkChromeDraft(_ ponllAerosolDraft: UITextField) {
        ponllAerosolDraft.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        aerErstTextureDraft()
        return true
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let ponllImageDraft = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        flckinkWallDraft = ponllImageDraft
        if let ponllImageDraft {
            ponllInkDraft.contentHorizontalAlignment = .fill
            ponllInkDraft.contentVerticalAlignment = .fill
            ponllInkDraft.setImage(ponllImageDraft.withRenderingMode(.alwaysOriginal), for: .normal)
            ponllInkDraft.imageView?.contentMode = .scaleAspectFill
        }
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    @objc private func bruCiuMuralDraft(_ note: Notification) {
        guard let ponllKeyboardDraft = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bruCiuKeyboardDraft = max(ponllKeyboardDraft.height - view.safeAreaInsets.bottom, 0) + 18
        flckinkUrbanDraft.contentInset.bottom = bruCiuKeyboardDraft
        flckinkUrbanDraft.verticalScrollIndicatorInsets.bottom = bruCiuKeyboardDraft
        let flckinkKeyboardDraft = aerErstAerosolDraft.convert(aerErstAerosolDraft.bounds, to: flckinkUrbanDraft).insetBy(dx: 0, dy: -18)
        flckinkUrbanDraft.scrollRectToVisible(flckinkKeyboardDraft, animated: true)
    }

    @objc private func flckinkStencilDraft(_ note: Notification) {
        flckinkUrbanDraft.contentInset.bottom = 0
        flckinkUrbanDraft.verticalScrollIndicatorInsets.bottom = 0
    }
}

private final class PonllStencilDraftCell: UICollectionViewCell {
    private let ponllOutlineDraft = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 18
        contentView.layer.borderWidth = 1.5
        ponllOutlineDraft.textAlignment = .center
        ponllOutlineDraft.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        ponllOutlineDraft.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(ponllOutlineDraft)
        NSLayoutConstraint.activate([
            ponllOutlineDraft.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            ponllOutlineDraft.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            ponllOutlineDraft.topAnchor.constraint(equalTo: contentView.topAnchor),
            ponllOutlineDraft.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func ponllMuralDraft(_ bruCiuLetterDraft: String, bruCiuPaintDraft: Bool) {
        ponllOutlineDraft.text = PonllGraffitiMuse.graffitiPulse.paintMotion(bruCiuLetterDraft)
        ponllOutlineDraft.textColor = bruCiuPaintDraft ? UIColor(red: 255/255, green: 45/255, blue: 120/255, alpha: 1) : .white
        ponllOutlineDraft.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: bruCiuPaintDraft ? .bold : .medium)
        contentView.backgroundColor = bruCiuPaintDraft ? UIColor(red: 45/255, green: 19/255, blue: 35/255, alpha: 1) : PonllyPalette.panel.withAlphaComponent(0.92)
        contentView.layer.borderColor = (bruCiuPaintDraft ? UIColor(red: 255/255, green: 45/255, blue: 120/255, alpha: 1) : UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1)).cgColor
        contentView.layer.shadowColor = bruCiuPaintDraft ? UIColor(red: 255/255, green: 45/255, blue: 120/255, alpha: 1).cgColor : UIColor.clear.cgColor
        contentView.layer.shadowOpacity = bruCiuPaintDraft ? 0.26 : 0
        contentView.layer.shadowRadius = bruCiuPaintDraft ? 8 : 0
    }
}
