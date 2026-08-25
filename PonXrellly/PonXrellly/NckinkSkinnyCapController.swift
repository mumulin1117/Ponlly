import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class NckinkSkinnyCapController: UIViewController {
    private let ponllAerosolRipple: PonllyaerErstTwoToneFillr
    private var bruCiuMuralSurge: PonllyMessageThread
    private let flckinkStencilBloom = UIScrollView()
    private let aerErstMarkerFlicker = UIStackView()
    private let ponllChromeFlash = UITextField()

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

        flckinkStencilBloom.keyboardDismissMode = .onDrag
        flckinkStencilBloom.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkStencilBloom)
        aerErstMarkerFlicker.axis = .vertical
        aerErstMarkerFlicker.spacing = 16
        aerErstMarkerFlicker.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(aerErstMarkerFlicker)
        bruCiuMuralSurge.skinnyCap.forEach { aerErstMarkerFlicker.addArrangedSubview(ponllTexturePath($0)) }

        let flckinkSketchArc = UIView()
        flckinkSketchArc.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.98)
        flckinkSketchArc.layer.borderWidth = 1
        flckinkSketchArc.layer.borderColor = PonllyPalette.line.cgColor
        flckinkSketchArc.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkSketchArc)
        ponllChromeFlash.attributedPlaceholder = NSAttributedString(string: "Type a message...", attributes: [.foregroundColor: PonllyPalette.muted])
        ponllChromeFlash.textColor = .white
        ponllChromeFlash.font = PonllyFonts.utilityBox(blankFacade: 14)
        ponllChromeFlash.translatesAutoresizingMaskIntoConstraints = false
        flckinkSketchArc.addSubview(ponllChromeFlash)
        let aerErstPaintBend = UIButton(type: .system)
        aerErstPaintBend.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        aerErstPaintBend.tintColor = .white
        aerErstPaintBend.backgroundColor = PonllyPalette.pink
        aerErstPaintBend.layer.cornerRadius = 28
        aerErstPaintBend.addTarget(self, action: #selector(bruCiuInkKick), for: .touchUpInside)
        aerErstPaintBend.translatesAutoresizingMaskIntoConstraints = false
        flckinkSketchArc.addSubview(aerErstPaintBend)
        NSLayoutConstraint.activate([
            bruCiuChromeCue.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuChromeCue.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuChromeCue.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiuChromeCue.heightAnchor.constraint(equalToConstant: 78),
            flckinkStencilBloom.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            flckinkStencilBloom.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            flckinkStencilBloom.topAnchor.constraint(equalTo: bruCiuChromeCue.bottomAnchor),
            flckinkStencilBloom.bottomAnchor.constraint(equalTo: flckinkSketchArc.topAnchor),
            aerErstMarkerFlicker.leadingAnchor.constraint(equalTo: flckinkStencilBloom.frameLayoutGuide.leadingAnchor, constant: 20),
            aerErstMarkerFlicker.trailingAnchor.constraint(equalTo: flckinkStencilBloom.frameLayoutGuide.trailingAnchor, constant: -20),
            aerErstMarkerFlicker.topAnchor.constraint(equalTo: flckinkStencilBloom.contentLayoutGuide.topAnchor, constant: 24),
            aerErstMarkerFlicker.bottomAnchor.constraint(equalTo: flckinkStencilBloom.contentLayoutGuide.bottomAnchor, constant: -24),
            flckinkSketchArc.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkSketchArc.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkSketchArc.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkSketchArc.heightAnchor.constraint(equalToConstant: 100),
            ponllChromeFlash.leadingAnchor.constraint(equalTo: flckinkSketchArc.leadingAnchor, constant: 24),
            ponllChromeFlash.centerYAnchor.constraint(equalTo: flckinkSketchArc.centerYAnchor, constant: -6),
            ponllChromeFlash.trailingAnchor.constraint(equalTo: aerErstPaintBend.leadingAnchor, constant: -16),
            aerErstPaintBend.trailingAnchor.constraint(equalTo: flckinkSketchArc.trailingAnchor, constant: -24),
            aerErstPaintBend.centerYAnchor.constraint(equalTo: ponllChromeFlash.centerYAnchor),
            aerErstPaintBend.widthAnchor.constraint(equalToConstant: 56),
            aerErstPaintBend.heightAnchor.constraint(equalToConstant: 56)
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
        flckinkStencilTwist.tintColor = .white
        flckinkStencilTwist.backgroundColor = PonllyPalette.panel
        flckinkStencilTwist.layer.cornerRadius = 22
        flckinkStencilTwist.layer.borderWidth = 1
        flckinkStencilTwist.layer.borderColor = PonllyPalette.line.cgColor
        flckinkStencilTwist.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilTwist.addTarget(self, action: #selector(aerErstPaintWeave), for: .touchUpInside)
        bruCiuMuralLean.addSubview(flckinkStencilTwist)

        let aerErstChromeDepth = ErErstPaintLabView(user: ponllAerosolRipple, size: 44)
        bruCiuMuralLean.addSubview(aerErstChromeDepth)

        let ponllNeonGlow = UILabel()
        ponllNeonGlow.text = ponllAerosolRipple.aerosolDream.lowercased()
        ponllNeonGlow.textColor = .white
        ponllNeonGlow.font = PonllyFonts.muralForgepon(neonLab: 15)
        let bruCiuTextureGrit = UILabel()
        bruCiuTextureGrit.text = "Chat Conversation"
        bruCiuTextureGrit.textColor = PonllyPalette.cyan
        bruCiuTextureGrit.font = PonllyFonts.steelGate(rollingShutter: 10)
        let flckinkSketchNoise = UIStackView(arrangedSubviews: [ponllNeonGlow, bruCiuTextureGrit])
        flckinkSketchNoise.axis = .vertical
        flckinkSketchNoise.spacing = 5
        flckinkSketchNoise.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMuralLean.addSubview(flckinkSketchNoise)

        let aerErstPaintTexture = UIButton(type: .system)
        aerErstPaintTexture.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        aerErstPaintTexture.tintColor = .black
        aerErstPaintTexture.backgroundColor = PonllyPalette.cyan
        aerErstPaintTexture.layer.cornerRadius = 22
        aerErstPaintTexture.layer.shadowColor = PonllyPalette.cyan.cgColor
        aerErstPaintTexture.layer.shadowOpacity = 0.35
        aerErstPaintTexture.layer.shadowRadius = 14
        aerErstPaintTexture.translatesAutoresizingMaskIntoConstraints = false
        aerErstPaintTexture.addTarget(self, action: #selector(ponllInkContrast), for: .touchUpInside)
        bruCiuMuralLean.addSubview(aerErstPaintTexture)

        NSLayoutConstraint.activate([
            flckinkStencilTwist.leadingAnchor.constraint(equalTo: bruCiuMuralLean.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            flckinkStencilTwist.centerYAnchor.constraint(equalTo: bruCiuMuralLean.centerYAnchor),
            flckinkStencilTwist.widthAnchor.constraint(equalToConstant: 44),
            flckinkStencilTwist.heightAnchor.constraint(equalToConstant: 44),
            aerErstChromeDepth.leadingAnchor.constraint(equalTo: flckinkStencilTwist.trailingAnchor, constant: 12),
            aerErstChromeDepth.centerYAnchor.constraint(equalTo: flckinkStencilTwist.centerYAnchor),
            flckinkSketchNoise.leadingAnchor.constraint(equalTo: aerErstChromeDepth.trailingAnchor, constant: 12),
            flckinkSketchNoise.centerYAnchor.constraint(equalTo: aerErstChromeDepth.centerYAnchor),
            flckinkSketchNoise.trailingAnchor.constraint(lessThanOrEqualTo: aerErstPaintTexture.leadingAnchor, constant: -12),
            aerErstPaintTexture.trailingAnchor.constraint(equalTo: bruCiuMuralLean.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            aerErstPaintTexture.centerYAnchor.constraint(equalTo: flckinkStencilTwist.centerYAnchor),
            aerErstPaintTexture.widthAnchor.constraint(equalToConstant: 44),
            aerErstPaintTexture.heightAnchor.constraint(equalToConstant: 44)
        ])
        return bruCiuMuralLean
    }

    private func ponllTexturePath(_ bruCiuMarkerBalance: PonllyMessageBubble) -> UIView {
        let flckinkChromeRhythm = bruCiuMarkerBalance.markerNib == PonllyponllTornEdge.currentUserId
        let aerErstNeonMotion = UIView()
        let ponllTextureCascade = UIStackView()
        ponllTextureCascade.axis = .vertical
        ponllTextureCascade.spacing = 8
        ponllTextureCascade.backgroundColor = flckinkChromeRhythm ? PonllyPalette.pink : PonllyPalette.panel
        ponllTextureCascade.layer.cornerRadius = 18
        ponllTextureCascade.layer.borderWidth = flckinkChromeRhythm ? 0 : 1
        ponllTextureCascade.layer.borderColor = PonllyPalette.line.cgColor
        ponllTextureCascade.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        ponllTextureCascade.isLayoutMarginsRelativeArrangement = true
        ponllTextureCascade.translatesAutoresizingMaskIntoConstraints = false
        aerErstNeonMotion.addSubview(ponllTextureCascade)
        let bruCiuInkRipple = UILabel()
        bruCiuInkRipple.text = bruCiuMarkerBalance.muralGrid
        bruCiuInkRipple.textColor = .white
        bruCiuInkRipple.numberOfLines = 0
        bruCiuInkRipple.font = PonllyFonts.utilityBox(blankFacade: 15)
        ponllTextureCascade.addArrangedSubview(bruCiuInkRipple)
        if let flckinkWallSurge = bruCiuMarkerBalance.wideNib {
            let aerErstAerosolBurst = PbruCiuClearCoatView(ponllPaintTrace: flckinkWallSurge)
            aerErstAerosolBurst.heightAnchor.constraint(equalToConstant: 156).isActive = true
            ponllTextureCascade.addArrangedSubview(aerErstAerosolBurst)
        }
        NSLayoutConstraint.activate([
            ponllTextureCascade.topAnchor.constraint(equalTo: aerErstNeonMotion.topAnchor),
            ponllTextureCascade.bottomAnchor.constraint(equalTo: aerErstNeonMotion.bottomAnchor),
            ponllTextureCascade.widthAnchor.constraint(lessThanOrEqualTo: aerErstNeonMotion.widthAnchor, multiplier: 0.76)
        ])
        if flckinkChromeRhythm {
            ponllTextureCascade.trailingAnchor.constraint(equalTo: aerErstNeonMotion.trailingAnchor).isActive = true
        } else {
            ponllTextureCascade.leadingAnchor.constraint(equalTo: aerErstNeonMotion.leadingAnchor).isActive = true
        }
        return aerErstNeonMotion
    }

    @objc private func bruCiuInkKick() {
        let ponllMuralBloom = (ponllChromeFlash.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !ponllMuralBloom.isEmpty else {
            aerErstSketchRush("Add a message before sending.", bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        ponllChromeFlash.text = ""
        let bruCiuStencilFlicker = PonllyMessageBubble(markerNib: PonllyponllTornEdge.currentUserId, muralGrid: ponllMuralBloom, pasteupEcho: "now", wideNib: nil)
        aerErstMarkerFlicker.addArrangedSubview(ponllTexturePath(bruCiuStencilFlicker))
        flckinkPrimerCoatponlu("Message sent")
    }

    @objc private func aerErstPaintWeave() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func ponllInkContrast() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            self.flckinkPrimerCoatponlu("Connecting video...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.55) {
                let flckinkChromeBalance = PonllystrokeWeightController(pasteSketch: self.ponllAerosolRipple)
                flckinkChromeBalance.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(flckinkChromeBalance, animated: true)
            }
        }
    }

    @objc private func bruCiuInkEcho(_ aerErstNeonRhythm: Notification) {
        guard let ponllTextureMotion = aerErstNeonRhythm.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        flckinkStencilBloom.contentInset.bottom = ponllTextureMotion.height
    }

    @objc private func flckinkAerosolSignal(_ bruCiuSketchCascade: Notification) {
        flckinkStencilBloom.contentInset.bottom = 0
    }
}
