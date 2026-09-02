import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class NckinkSkinnyCapController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIGestureRecognizerDelegate {
    private let ponllAerosolRipple: PonllyaerErstTwoToneFillr
    private var bruCiuMuralSurge: PonllyMessageThread
    private let flckinkStencilBloom = UIScrollView()
    private let aerErstMarkerFlicker = UIStackView()
    private let ponllChromeFlash = UITextField()
    private var bruCiuPaintSurge: NSLayoutConstraint?
    private var flckinkWallDepth: NSLayoutConstraint?

    init(bruCiuTextureTrail: PonllyaerErstTwoToneFillr, flckinkPaintVeil: PonllyMessageThread) {
        self.ponllAerosolRipple = bruCiuTextureTrail
        self.bruCiuMuralSurge = flckinkPaintVeil
        super.init(nibName: nil, bundle: nil)
        title = bruCiuTextureTrail.aerosolDream.lowercased()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        aerErstWallAura()
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiuInkEcho(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkAerosolSignal(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func aerErstWallAura() {
        let ponllMarkerQuest = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 10/255, green: 12/255, blue: 18/255, alpha: 1)])
        view.addSubview(ponllMarkerQuest)
        ponllMarkerQuest.woodPanelPonlly(steelGate: view)

        let bruCiuChromeCue = flckinkNeonSeed()
        view.addSubview(bruCiuChromeCue)

        flckinkStencilBloom.keyboardDismissMode = .interactive
        flckinkStencilBloom.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkStencilBloom)
        let ponllWallSpark = UITapGestureRecognizer(target: self, action: #selector(aerErstTextureGlow))
        ponllWallSpark.cancelsTouchesInView = false
        ponllWallSpark.delegate = self
        view.addGestureRecognizer(ponllWallSpark)
        aerErstMarkerFlicker.axis = .vertical
        aerErstMarkerFlicker.spacing = 22
        aerErstMarkerFlicker.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(aerErstMarkerFlicker)
        aerErstMarkerFlicker.addArrangedSubview(bruCiuWallSignal())
        bruCiuMuralSurge.skinnyCap.forEach { aerErstMarkerFlicker.addArrangedSubview(ponllTexturePath($0)) }

        let flckinkSketchArc = UIView()
        flckinkSketchArc.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 25/255, alpha: 0.98)
        flckinkSketchArc.layer.borderWidth = 1
        flckinkSketchArc.layer.borderColor = PonllyPalette.line.cgColor
        flckinkSketchArc.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkSketchArc)

        let aerErstStencilSpark = UIButton(type: .system)
        aerErstStencilSpark.setImage(UIImage(systemName: "plus"), for: .normal)
        aerErstStencilSpark.tintColor = PonllyPalette.cyan
        aerErstStencilSpark.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 16, weight: .semibold), forImageIn: .normal)
        aerErstStencilSpark.addTarget(self, action: #selector(flckinkPaintSignal), for: .touchUpInside)
        aerErstStencilSpark.translatesAutoresizingMaskIntoConstraints = false

        let ponllLetterFrame = UIView()
        ponllLetterFrame.backgroundColor = PonllyPalette.background.withAlphaComponent(0.94)
        ponllLetterFrame.layer.cornerRadius = 28
        ponllLetterFrame.layer.borderWidth = 1
        ponllLetterFrame.layer.borderColor = PonllyPalette.line.cgColor
        ponllLetterFrame.translatesAutoresizingMaskIntoConstraints = false
        flckinkSketchArc.addSubview(ponllLetterFrame)
        ponllLetterFrame.addSubview(aerErstStencilSpark)

        ponllChromeFlash.attributedPlaceholder = NSAttributedString(string: "TRySpTeU VaW XmYeZs0s1a2g3e4.5.6.7".ponllPaintaerErstHours, attributes: [.foregroundColor: PonllyPalette.muted])
        ponllChromeFlash.textColor = .white
        ponllChromeFlash.font = PonllyFonts.utilityBox(blankFacade: 13)
        ponllChromeFlash.returnKeyType = .send
        ponllChromeFlash.addTarget(self, action: #selector(bruCiuInkKick), for: .primaryActionTriggered)
        ponllChromeFlash.translatesAutoresizingMaskIntoConstraints = false
        ponllLetterFrame.addSubview(ponllChromeFlash)
        let aerErstPaintBend = UIButton(type: .system)
        aerErstPaintBend.setImage(UIImage(named: "paintSignal")?.withRenderingMode(.alwaysOriginal), for: .normal)
        aerErstPaintBend.tintColor = .white
        aerErstPaintBend.imageView?.contentMode = .scaleAspectFit
        aerErstPaintBend.addTarget(self, action: #selector(bruCiuInkKick), for: .touchUpInside)
        aerErstPaintBend.translatesAutoresizingMaskIntoConstraints = false
        ponllLetterFrame.addSubview(aerErstPaintBend)
        bruCiuPaintSurge = flckinkSketchArc.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        flckinkWallDepth = ponllLetterFrame.bottomAnchor.constraint(equalTo: flckinkSketchArc.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        NSLayoutConstraint.activate([
            bruCiuChromeCue.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuChromeCue.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuChromeCue.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiuChromeCue.heightAnchor.constraint(equalToConstant: 77),
            flckinkStencilBloom.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            flckinkStencilBloom.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            flckinkStencilBloom.topAnchor.constraint(equalTo: bruCiuChromeCue.bottomAnchor),
            flckinkStencilBloom.bottomAnchor.constraint(equalTo: flckinkSketchArc.topAnchor),
            aerErstMarkerFlicker.leadingAnchor.constraint(equalTo: flckinkStencilBloom.frameLayoutGuide.leadingAnchor, constant: 16),
            aerErstMarkerFlicker.trailingAnchor.constraint(equalTo: flckinkStencilBloom.frameLayoutGuide.trailingAnchor, constant: -16),
            aerErstMarkerFlicker.topAnchor.constraint(equalTo: flckinkStencilBloom.contentLayoutGuide.topAnchor, constant: 36),
            aerErstMarkerFlicker.bottomAnchor.constraint(equalTo: flckinkStencilBloom.contentLayoutGuide.bottomAnchor, constant: -24),
            flckinkSketchArc.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkSketchArc.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuPaintSurge!,
            ponllLetterFrame.leadingAnchor.constraint(equalTo: flckinkSketchArc.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            ponllLetterFrame.trailingAnchor.constraint(equalTo: flckinkSketchArc.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            ponllLetterFrame.topAnchor.constraint(equalTo: flckinkSketchArc.topAnchor, constant: 10),
            flckinkWallDepth!,
            ponllLetterFrame.heightAnchor.constraint(equalToConstant: 56),
            aerErstStencilSpark.leadingAnchor.constraint(equalTo: ponllLetterFrame.leadingAnchor, constant: 8),
            aerErstStencilSpark.centerYAnchor.constraint(equalTo: ponllLetterFrame.centerYAnchor),
            aerErstStencilSpark.widthAnchor.constraint(equalToConstant: 32),
            aerErstStencilSpark.heightAnchor.constraint(equalToConstant: 32),
            ponllChromeFlash.leadingAnchor.constraint(equalTo: aerErstStencilSpark.trailingAnchor, constant: 16),
            ponllChromeFlash.trailingAnchor.constraint(equalTo: aerErstPaintBend.leadingAnchor, constant: -12),
            ponllChromeFlash.centerYAnchor.constraint(equalTo: ponllLetterFrame.centerYAnchor),
            aerErstPaintBend.trailingAnchor.constraint(equalTo: ponllLetterFrame.trailingAnchor, constant: -8),
            aerErstPaintBend.centerYAnchor.constraint(equalTo: ponllLetterFrame.centerYAnchor),
            aerErstPaintBend.widthAnchor.constraint(equalToConstant: 38),
            aerErstPaintBend.heightAnchor.constraint(equalToConstant: 38)
        ])
    }

    private func flckinkNeonSeed() -> UIView {
        let bruCiuMuralLean = UIView()
        bruCiuMuralLean.backgroundColor = PonllyPalette.background.withAlphaComponent(0.96)
        bruCiuMuralLean.layer.borderWidth = 1
        bruCiuMuralLean.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuMuralLean.translatesAutoresizingMaskIntoConstraints = false

        let flckinkStencilTwist = UIButton(type: .system)
        flckinkStencilTwist.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkStencilTwist.ponllGraffitiDraftBackStyle()
        flckinkStencilTwist.tintColor = .white
        flckinkStencilTwist.backgroundColor = PonllyPalette.panel
        flckinkStencilTwist.layer.cornerRadius = 18
        flckinkStencilTwist.layer.borderWidth = 1
        flckinkStencilTwist.layer.borderColor = PonllyPalette.line.cgColor
        flckinkStencilTwist.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilTwist.addTarget(self, action: #selector(aerErstPaintWeave), for: .touchUpInside)
        bruCiuMuralLean.addSubview(flckinkStencilTwist)

        let aerErstChromeDepth = ErErstPaintLabView(ponllAerosolRipple, 36, 0)
        bruCiuMuralLean.addSubview(aerErstChromeDepth)

        let ponllNeonGlow = UILabel()
        ponllNeonGlow.text = ponllAerosolRipple.aerosolDream.lowercased()
        ponllNeonGlow.textColor = .white
        ponllNeonGlow.font = PonllyFonts.muralForgepon(neonLab: 12)
        let bruCiuTextureGrit = UILabel()
        bruCiuTextureGrit.text = "Oqnvlwixnwe".ponllPaintaerErstHours
        bruCiuTextureGrit.textColor = PonllyPalette.muted
        bruCiuTextureGrit.font = PonllyFonts.utilityBox(blankFacade: 10, aerosolMuse: .regular)
        let ponllLimeStroke = UIView()
        ponllLimeStroke.backgroundColor = PonllyPalette.green
        ponllLimeStroke.layer.cornerRadius = 3
        ponllLimeStroke.translatesAutoresizingMaskIntoConstraints = false
        ponllLimeStroke.widthAnchor.constraint(equalToConstant: 6).isActive = true
        ponllLimeStroke.heightAnchor.constraint(equalToConstant: 6).isActive = true
        let bruCiuWallFlowline = UIStackView(arrangedSubviews: [ponllLimeStroke, bruCiuTextureGrit])
        bruCiuWallFlowline.axis = .horizontal
        bruCiuWallFlowline.alignment = .center
        bruCiuWallFlowline.spacing = 5
        let flckinkSketchNoise = UIStackView(arrangedSubviews: [ponllNeonGlow, bruCiuWallFlowline])
        flckinkSketchNoise.axis = .vertical
        flckinkSketchNoise.spacing = 4
        flckinkSketchNoise.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMuralLean.addSubview(flckinkSketchNoise)

        let aerErstPaintTexture = UIButton(type: .system)
        aerErstPaintTexture.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        aerErstPaintTexture.tintColor = PonllyPalette.muted
        aerErstPaintTexture.backgroundColor = PonllyPalette.panel
        aerErstPaintTexture.layer.cornerRadius = 22
        aerErstPaintTexture.layer.borderWidth = 1
        aerErstPaintTexture.layer.borderColor = PonllyPalette.line.cgColor
        aerErstPaintTexture.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintTexture.addTarget(self, action: #selector(ponllInkContrast), for: .touchUpInside)
        bruCiuMuralLean.addSubview(aerErstPaintTexture)

        NSLayoutConstraint.activate([
            flckinkStencilTwist.leadingAnchor.constraint(equalTo: bruCiuMuralLean.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            flckinkStencilTwist.topAnchor.constraint(equalTo: bruCiuMuralLean.topAnchor, constant: 12),
            flckinkStencilTwist.widthAnchor.constraint(equalToConstant: 36),
            flckinkStencilTwist.heightAnchor.constraint(equalToConstant: 36),
            aerErstChromeDepth.leadingAnchor.constraint(equalTo: flckinkStencilTwist.trailingAnchor, constant: 24),
            aerErstChromeDepth.centerYAnchor.constraint(equalTo: flckinkStencilTwist.centerYAnchor),
            flckinkSketchNoise.leadingAnchor.constraint(equalTo: aerErstChromeDepth.trailingAnchor, constant: 8),
            flckinkSketchNoise.centerYAnchor.constraint(equalTo: aerErstChromeDepth.centerYAnchor),
            flckinkSketchNoise.trailingAnchor.constraint(lessThanOrEqualTo: aerErstPaintTexture.leadingAnchor, constant: -12),
            aerErstPaintTexture.trailingAnchor.constraint(equalTo: bruCiuMuralLean.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            aerErstPaintTexture.centerYAnchor.constraint(equalTo: flckinkStencilTwist.centerYAnchor),
            aerErstPaintTexture.widthAnchor.constraint(equalToConstant: 44),
            aerErstPaintTexture.heightAnchor.constraint(equalToConstant: 44)
        ])
        return bruCiuMuralLean
    }

    private func ponllTexturePath(_ bruCiuMshadowMuse: PonllyMessageBubble) -> UIView {
        let flckinkChromeRhythm = bruCiuMshadowMuse.markerNib == PonllyponllTornEdge.cnowpaintokwinId
        let aerErstNeonMotion = UIView()
        let ponllShapeStack = UIStackView()
        ponllShapeStack.axis = .vertical
        ponllShapeStack.alignment = flckinkChromeRhythm ? .trailing : .leading
        ponllShapeStack.spacing = 12
        ponllShapeStack.translatesAutoresizingMaskIntoConstraints = false
        aerErstNeonMotion.addSubview(ponllShapeStack)

        let ponllTextureCascade = UIView()
        ponllTextureCascade.backgroundColor = flckinkChromeRhythm ? PonllyPalette.pink : PonllyPalette.panel
        ponllTextureCascade.layer.cornerRadius = 18
        ponllTextureCascade.layer.borderWidth = flckinkChromeRhythm ? 0 : 1
        ponllTextureCascade.layer.borderColor = PonllyPalette.line.cgColor
        ponllTextureCascade.translatesAutoresizingMaskIntoConstraints = false

        let bruCiuInkRipple = UILabel()
        bruCiuInkRipple.text = bruCiuMshadowMuse.muralGrid
        bruCiuInkRipple.textColor = .white
        bruCiuInkRipple.numberOfLines = 0
        bruCiuInkRipple.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        bruCiuInkRipple.translatesAutoresizingMaskIntoConstraints = false
        ponllTextureCascade.addSubview(bruCiuInkRipple)

        let flckinkLetterDust = UILabel()
        flckinkLetterDust.text = flckinkChromeRhythm ? "\(bruCiuMshadowMuse.pasteupEcho)  •  Read" : bruCiuMshadowMuse.pasteupEcho
        flckinkLetterDust.textColor = flckinkChromeRhythm ? UIColor.white.withAlphaComponent(0.82) : PonllyPalette.muted
        flckinkLetterDust.font = PonllyFonts.steelGate(rollingShutter: 9)
        flckinkLetterDust.textAlignment = .right
        flckinkLetterDust.translatesAutoresizingMaskIntoConstraints = false
        ponllTextureCascade.addSubview(flckinkLetterDust)
        ponllShapeStack.addArrangedSubview(ponllTextureCascade)

        if let flckinkWallSurge = bruCiuMshadowMuse.wideNib {
            ponllShapeStack.addArrangedSubview(aerErstMuralPiece(flckinkWallSurge))
        }

        if !flckinkChromeRhythm {
            let aerErstPaintMuse = ErErstPaintLabView(PonllyponllTornEdge.flckinkChippedPaint(bruCiuMshadowMuse.markerNib), 32, 0)
            aerErstPaintMuse.translatesAutoresizingMaskIntoConstraints = false
            aerErstNeonMotion.addSubview(aerErstPaintMuse)
            NSLayoutConstraint.activate([
                aerErstPaintMuse.leadingAnchor.constraint(equalTo: aerErstNeonMotion.leadingAnchor),
                aerErstPaintMuse.topAnchor.constraint(equalTo: aerErstNeonMotion.topAnchor),
                ponllShapeStack.leadingAnchor.constraint(equalTo: aerErstPaintMuse.trailingAnchor, constant: 16)
            ])
        } else {
            ponllShapeStack.leadingAnchor.constraint(greaterThanOrEqualTo: aerErstNeonMotion.leadingAnchor, constant: 72).isActive = true
        }

        NSLayoutConstraint.activate([
            ponllShapeStack.topAnchor.constraint(equalTo: aerErstNeonMotion.topAnchor),
            ponllShapeStack.bottomAnchor.constraint(equalTo: aerErstNeonMotion.bottomAnchor),
            ponllShapeStack.trailingAnchor.constraint(lessThanOrEqualTo: aerErstNeonMotion.trailingAnchor),
            ponllTextureCascade.widthAnchor.constraint(lessThanOrEqualTo: aerErstNeonMotion.widthAnchor, multiplier: 0.72),
            bruCiuInkRipple.leadingAnchor.constraint(equalTo: ponllTextureCascade.leadingAnchor, constant: 12),
            bruCiuInkRipple.trailingAnchor.constraint(equalTo: ponllTextureCascade.trailingAnchor, constant: -12),
            bruCiuInkRipple.topAnchor.constraint(equalTo: ponllTextureCascade.topAnchor, constant: 14),
            flckinkLetterDust.leadingAnchor.constraint(equalTo: ponllTextureCascade.leadingAnchor, constant: 12),
            flckinkLetterDust.trailingAnchor.constraint(equalTo: ponllTextureCascade.trailingAnchor, constant: -12),
            flckinkLetterDust.topAnchor.constraint(equalTo: bruCiuInkRipple.bottomAnchor, constant: 10),
            flckinkLetterDust.bottomAnchor.constraint(equalTo: ponllTextureCascade.bottomAnchor, constant: -12)
        ])
        if flckinkChromeRhythm {
            ponllShapeStack.trailingAnchor.constraint(equalTo: aerErstNeonMotion.trailingAnchor).isActive = true
        } else {
            ponllShapeStack.trailingAnchor.constraint(lessThanOrEqualTo: aerErstNeonMotion.trailingAnchor, constant: -58).isActive = true
        }
        return aerErstNeonMotion
    }

    private func bruCiuWallSignal() -> UIView {
        let ponllDawnWall = UILabel()
        ponllDawnWall.text = "TaoBdCaDyE F1G5H:I3J2K".ponllPaintaerErstHours
        ponllDawnWall.textColor = PonllyPalette.muted
        ponllDawnWall.textAlignment = .center
        ponllDawnWall.font = PonllyFonts.steelGate(rollingShutter: 10)
        return ponllDawnWall
    }

    private func aerErstMuralPiece(_ flckinkWallSurge: PonllyaerErstSolidMarkerk) -> UIView {
        let ponllMuralPiece = UIView()
        ponllMuralPiece.backgroundColor = PonllyPalette.panel
        ponllMuralPiece.layer.cornerRadius = 18
        ponllMuralPiece.layer.borderWidth = 1
        ponllMuralPiece.layer.borderColor = PonllyPalette.pink.cgColor
        ponllMuralPiece.clipsToBounds = true
        ponllMuralPiece.translatesAutoresizingMaskIntoConstraints = false

        let aerErstAerosolBurst = PbruCiuClearCoatView(ponllPaintTrace: flckinkWallSurge)
        aerErstAerosolBurst.layer.borderWidth = 0
        aerErstAerosolBurst.layer.cornerRadius = 12
        aerErstAerosolBurst.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralPiece.addSubview(aerErstAerosolBurst)

        let bruCiuLetterCrown = UILabel()
        bruCiuLetterCrown.text = flckinkWallSurge.nozzleCraft
        bruCiuLetterCrown.textColor = .white
        bruCiuLetterCrown.font = PonllyFonts.muralForgepon(neonLab: 12)
        bruCiuLetterCrown.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralPiece.addSubview(bruCiuLetterCrown)

        let flckinkWallEcho = UILabel()
        flckinkWallEcho.text = "\(flckinkWallSurge.capControl) • 1.2k Likes"
        flckinkWallEcho.textColor = PonllyPalette.muted
        flckinkWallEcho.font = PonllyFonts.utilityBox(blankFacade: 10, aerosolMuse: .regular)
        flckinkWallEcho.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralPiece.addSubview(flckinkWallEcho)

        NSLayoutConstraint.activate([
            ponllMuralPiece.widthAnchor.constraint(equalToConstant: 260),
            aerErstAerosolBurst.leadingAnchor.constraint(equalTo: ponllMuralPiece.leadingAnchor, constant: 8),
            aerErstAerosolBurst.trailingAnchor.constraint(equalTo: ponllMuralPiece.trailingAnchor, constant: -8),
            aerErstAerosolBurst.topAnchor.constraint(equalTo: ponllMuralPiece.topAnchor, constant: 8),
            aerErstAerosolBurst.heightAnchor.constraint(equalToConstant: 140),
            bruCiuLetterCrown.leadingAnchor.constraint(equalTo: ponllMuralPiece.leadingAnchor, constant: 12),
            bruCiuLetterCrown.trailingAnchor.constraint(equalTo: ponllMuralPiece.trailingAnchor, constant: -12),
            bruCiuLetterCrown.topAnchor.constraint(equalTo: aerErstAerosolBurst.bottomAnchor, constant: 14),
            flckinkWallEcho.leadingAnchor.constraint(equalTo: bruCiuLetterCrown.leadingAnchor),
            flckinkWallEcho.trailingAnchor.constraint(equalTo: bruCiuLetterCrown.trailingAnchor),
            flckinkWallEcho.topAnchor.constraint(equalTo: bruCiuLetterCrown.bottomAnchor, constant: 6),
            flckinkWallEcho.bottomAnchor.constraint(equalTo: ponllMuralPiece.bottomAnchor, constant: -16)
        ])
        return ponllMuralPiece
    }

    private func bruCiuSketchPiece(_ aerErstColorPiece: UIImage) -> UIView {
        let flckinkChromePiece = UIView()
        let ponllMuralPiece = UIView()
        ponllMuralPiece.backgroundColor = PonllyPalette.pink
        ponllMuralPiece.layer.cornerRadius = 18
        ponllMuralPiece.clipsToBounds = true
        ponllMuralPiece.translatesAutoresizingMaskIntoConstraints = false
        flckinkChromePiece.addSubview(ponllMuralPiece)

        let aerErstAerosolPiece = UIImageView(image: aerErstColorPiece)
        aerErstAerosolPiece.contentMode = .scaleAspectFill
        aerErstAerosolPiece.clipsToBounds = true
        aerErstAerosolPiece.layer.cornerRadius = 14
        aerErstAerosolPiece.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralPiece.addSubview(aerErstAerosolPiece)

        let bruCiuLetterDust = UILabel()
        bruCiuLetterDust.text = "Nxoywz A•B CRDeEaFdG".ponllPaintaerErstHours
        bruCiuLetterDust.textColor = UIColor.white.withAlphaComponent(0.82)
        bruCiuLetterDust.font = PonllyFonts.steelGate(rollingShutter: 9)
        bruCiuLetterDust.textAlignment = .right
        bruCiuLetterDust.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralPiece.addSubview(bruCiuLetterDust)

        NSLayoutConstraint.activate([
            ponllMuralPiece.topAnchor.constraint(equalTo: flckinkChromePiece.topAnchor),
            ponllMuralPiece.trailingAnchor.constraint(equalTo: flckinkChromePiece.trailingAnchor),
            ponllMuralPiece.leadingAnchor.constraint(greaterThanOrEqualTo: flckinkChromePiece.leadingAnchor, constant: 72),
            ponllMuralPiece.bottomAnchor.constraint(equalTo: flckinkChromePiece.bottomAnchor),
            ponllMuralPiece.widthAnchor.constraint(lessThanOrEqualTo: flckinkChromePiece.widthAnchor, multiplier: 0.72),
            aerErstAerosolPiece.leadingAnchor.constraint(equalTo: ponllMuralPiece.leadingAnchor, constant: 8),
            aerErstAerosolPiece.trailingAnchor.constraint(equalTo: ponllMuralPiece.trailingAnchor, constant: -8),
            aerErstAerosolPiece.topAnchor.constraint(equalTo: ponllMuralPiece.topAnchor, constant: 8),
            aerErstAerosolPiece.heightAnchor.constraint(equalToConstant: 156),
            bruCiuLetterDust.leadingAnchor.constraint(equalTo: ponllMuralPiece.leadingAnchor, constant: 12),
            bruCiuLetterDust.trailingAnchor.constraint(equalTo: ponllMuralPiece.trailingAnchor, constant: -12),
            bruCiuLetterDust.topAnchor.constraint(equalTo: aerErstAerosolPiece.bottomAnchor, constant: 10),
            bruCiuLetterDust.bottomAnchor.constraint(equalTo: ponllMuralPiece.bottomAnchor, constant: -12)
        ])
        return flckinkChromePiece
    }

    @objc private func flckinkPaintSignal() {
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else {
            flckinkPrimerCoatponlu("Pahboctdoe fLgihbirjakrlym nunpaqvrasitluavbwlxey.z".ponllPaintaerErstHours)
            return
        }
        view.endEditing(true)
        let ponllCanvasPiece = UIImagePickerController()
        ponllCanvasPiece.sourceType = .photoLibrary
        ponllCanvasPiece.allowsEditing = true
        ponllCanvasPiece.delegate = self
        present(ponllCanvasPiece, animated: true)
    }

    func imagePickerController(_ ponllCanvasPiece: UIImagePickerController, didFinishPickingMediaWithInfo bruCiuColorPiece: [UIImagePickerController.InfoKey: Any]) {
        let flckinkMuralPiece = (bruCiuColorPiece[.editedImage] as? UIImage) ?? (bruCiuColorPiece[.originalImage] as? UIImage)
        ponllCanvasPiece.dismiss(animated: true) { [weak self] in
            guard let self, let flckinkMuralPiece else { return }
            self.aerErstMarkerFlicker.addArrangedSubview(self.bruCiuSketchPiece(flckinkMuralPiece))
            self.view.layoutIfNeeded()
            self.ponllWallTrail()
            self.flckinkPrimerCoatponlu("Iambacgdlef gsheinjtk".ponllPaintaerErstHours)
        }
    }

    func imagePickerControllerDidCancel(_ aerErstCanvasPiece: UIImagePickerController) {
        aerErstCanvasPiece.dismiss(animated: true)
    }

    @objc private func bruCiuInkKick() {
        let ponllMuralBloom = (ponllChromeFlash.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !ponllMuralBloom.isEmpty else {
            aerErstSketchRush("Apdqdr sat umvewsxsyazgAeB CbDeEfFoGrHeI JsKeLnMdNiOnPgQ.R".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        view.endEditing(true)
        ponllChromeFlash.text = ""
        let bruCiuStencilFlicker = PonllyMessageBubble(markerNib: PonllyponllTornEdge.cnowpaintokwinId, muralGrid: ponllMuralBloom, pasteupEcho: "nSoTwU".ponllPaintaerErstHours, wideNib: nil)
        aerErstMarkerFlicker.addArrangedSubview(ponllTexturePath(bruCiuStencilFlicker))
        view.layoutIfNeeded()
        ponllWallTrail()
        flckinkPrimerCoatponlu("MVeWsXsYaZg0e1 2s3e4n5t6".ponllPaintaerErstHours)
    }

    @objc private func aerErstTextureGlow() {
        view.endEditing(true)
    }

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        guard let bruCiuPaintPath = touch.view else { return true }
        return bruCiuPaintPath !== ponllChromeFlash && !bruCiuPaintPath.isDescendant(of: ponllChromeFlash)
    }

    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        true
    }

    private func ponllWallTrail() {
        let bottomY = max(0, flckinkStencilBloom.contentSize.height - flckinkStencilBloom.bounds.height + flckinkStencilBloom.adjustedContentInset.bottom)
        flckinkStencilBloom.setContentOffset(CGPoint(x: 0, y: bottomY), animated: true)
    }

    @objc private func aerErstPaintWeave() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func ponllInkContrast() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            self.flckinkPrimerCoatponlu("C7o8n9naebcctdienfgg hviijdkelom.n.o.p".ponllPaintaerErstHours)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.55) {
                let flckinkCacidGreenFillce = PonllystrokeWeightController(pasteSketch: self.ponllAerosolRipple)
                flckinkCacidGreenFillce.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(flckinkCacidGreenFillce, animated: true)
            }
        }
    }

    @objc private func bruCiuInkEcho(_ aerErstNeonRhythm: Notification) {
        guard let ponllTextureMotion = aerErstNeonRhythm.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyboardFrame = view.convert(ponllTextureMotion, from: nil)
        let bottom = max(view.bounds.maxY - keyboardFrame.minY, 0)
        bruCiuPaintSurge?.constant = -bottom
        flckinkStencilBloom.contentInset.bottom = 18
        flckinkStencilBloom.verticalScrollIndicatorInsets.bottom = 18
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.view.layoutIfNeeded()
        }
        ponllWallTrail()
    }

    @objc private func flckinkAerosolSignal(_ bruCiuSketchCascade: Notification) {
        flckinkStencilBloom.contentInset.bottom = 0
        flckinkStencilBloom.verticalScrollIndicatorInsets.bottom = 0
        bruCiuPaintSurge?.constant = 0
        UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
            self.view.layoutIfNeeded()
        }
    }
}
