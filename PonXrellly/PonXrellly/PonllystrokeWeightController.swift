import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystrokeWeightController: UIViewController {
    private let ponllUserSignal: PonllyaerErstTwoToneFillr
    private var bruCiuMicMuted = false
    private var paintSignal = false

    init(pasteSketch ponllUserSignal: PonllyaerErstTwoToneFillr) {
        self.ponllUserSignal = ponllUserSignal
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        bruCiuBridgePillar()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard !paintSignal else { return }
        paintSignal = true
        aerosolSignal()
    }

    private func bruCiuBridgePillar() {
        let aerErstRemoteImage = UIImageView(image: PonllyponllTornEdge.bruCiuUtilityBox(flckinkTrafficBarrier: ponllUserSignal) ?? UIImage(named: "whitePop"))
        aerErstRemoteImage.contentMode = .scaleAspectFill
        aerErstRemoteImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstRemoteImage)
        aerErstRemoteImage.woodPanelPonlly(steelGate: view)

        let ponllBlurLayer = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark))
        ponllBlurLayer.alpha = aerErstRemoteImage.image == nil ? 0 : 0.18
        ponllBlurLayer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllBlurLayer)
        ponllBlurLayer.woodPanelPonlly(steelGate: view)

        let bruCiuVeilLayer = PonllyponllCyanGlowView(
            bruCiuDripMarker: [
                UIColor.black.withAlphaComponent(0.08),
                UIColor.black.withAlphaComponent(0.1),
                PonllyPalette.background.withAlphaComponent(0.72)
            ],
            CGPoint(x: 0.5, y: 0),
            CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(bruCiuVeilLayer)
        bruCiuVeilLayer.woodPanelPonlly(steelGate: view)

        let flckinkBackButton = UIButton(type: .system)
        flckinkBackButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkBackButton.tintColor = .white
        flckinkBackButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        flckinkBackButton.layer.cornerRadius = 38
        flckinkBackButton.layer.borderWidth = 1
        flckinkBackButton.layer.borderColor = UIColor.black.withAlphaComponent(0.28).cgColor
        flckinkBackButton.translatesAutoresizingMaskIntoConstraints = false
        flckinkBackButton.addTarget(self, action: #selector(ponllpaintSketch), for: .touchUpInside)
        view.addSubview(flckinkBackButton)

        let aerErstneonSketchutton = UIButton(type: .system)
        aerErstneonSketchutton.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        aerErstneonSketchutton.tintColor = .white
        aerErstneonSketchutton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        aerErstneonSketchutton.layer.cornerRadius = 38
        aerErstneonSketchutton.layer.borderWidth = 1
        aerErstneonSketchutton.layer.borderColor = UIColor.black.withAlphaComponent(0.28).cgColor
        aerErstneonSketchutton.translatesAutoresizingMaskIntoConstraints = false
        aerErstneonSketchutton.addTarget(self, action: #selector(bruCiuMoreTapped), for: .touchUpInside)
        view.addSubview(aerErstneonSketchutton)

        let ponllCallTitle = UILabel()
        ponllCallTitle.text = ponllUserSignal.aerosolDream.replacingOccurrences(of: "@", with: "")
        ponllCallTitle.textColor = .white
        ponllCallTitle.textAlignment = .center
        ponllCallTitle.font = PonllyFonts.muralForgepon(neonLab: 24)
        ponllCallTitle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllCallTitle)

        let bruCiuchromeSketchew = UIImageView(image: PonllyponllTornEdge.bruCiuUtilityBox(flckinkTrafficBarrier: PonllyponllTornEdge.ponllBrickFacade()) ?? UIImage(named: "pasteupEcho"))
        bruCiuchromeSketchew.contentMode = .scaleAspectFill
        bruCiuchromeSketchew.clipsToBounds = true
        bruCiuchromeSketchew.layer.cornerRadius = 16
        bruCiuchromeSketchew.layer.borderWidth = 2.5
        bruCiuchromeSketchew.layer.borderColor = UIColor.white.cgColor
        bruCiuchromeSketchew.layer.shadowColor = UIColor.black.cgColor
        bruCiuchromeSketchew.layer.shadowOpacity = 0.35
        bruCiuchromeSketchew.layer.shadowRadius = 18
        bruCiuchromeSketchew.layer.shadowOffset = CGSize(width: 0, height: 8)
        bruCiuchromeSketchew.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuchromeSketchew)

        let flckinkurbanSketch = UILabel()
        flckinkurbanSketch.text = "CWoXnYnZe0c1t2i3n4g5.6.7.8".ponllPaintaerErstHours
        flckinkurbanSketch.textColor = .white
        flckinkurbanSketch.textAlignment = .center
        flckinkurbanSketch.font = PonllyFonts.utilityBox(blankFacade: 24, aerosolMuse: .black)
        flckinkurbanSketch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkurbanSketch)

        let aerErstmarkerSketchutton = aerErststencilSketchtton(outlineSketch: "mic.fill", shadowSketch: .black.withAlphaComponent(0.78), styleSketch: .white, wallSketch: 76, colorSketch: #selector(flckinkMicTapped(_:)))
        let ponllEndButton = aerErststencilSketchtton(outlineSketch: "phone.down.fill", shadowSketch: UIColor(red: 1, green: 31/255, blue: 39/255, alpha: 1), styleSketch: .white, wallSketch: 92, colorSketch: #selector(aerErstEndTapped))
        let bruCiuCameraButton = aerErststencilSketchtton(outlineSketch: "video.fill", shadowSketch: .black.withAlphaComponent(0.78), styleSketch: .white, wallSketch: 76, colorSketch: #selector(ponllCameraTapped))
        [aerErstmarkerSketchutton, ponllEndButton, bruCiuCameraButton].forEach(view.addSubview)

        NSLayoutConstraint.activate([
            flckinkBackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            flckinkBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            flckinkBackButton.widthAnchor.constraint(equalToConstant: 76),
            flckinkBackButton.heightAnchor.constraint(equalToConstant: 76),
            aerErstneonSketchutton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstneonSketchutton.centerYAnchor.constraint(equalTo: flckinkBackButton.centerYAnchor),
            aerErstneonSketchutton.widthAnchor.constraint(equalToConstant: 76),
            aerErstneonSketchutton.heightAnchor.constraint(equalToConstant: 76),
            ponllCallTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ponllCallTitle.centerYAnchor.constraint(equalTo: flckinkBackButton.centerYAnchor),
            bruCiuchromeSketchew.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            bruCiuchromeSketchew.bottomAnchor.constraint(equalTo: flckinkurbanSketch.topAnchor, constant: -16),
            bruCiuchromeSketchew.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.38),
            bruCiuchromeSketchew.heightAnchor.constraint(equalTo: bruCiuchromeSketchew.widthAnchor, multiplier: 1.25),
            flckinkurbanSketch.centerXAnchor.constraint(equalTo: bruCiuchromeSketchew.centerXAnchor),
            flckinkurbanSketch.bottomAnchor.constraint(equalTo: aerErstmarkerSketchutton.topAnchor, constant: -54),
            ponllEndButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ponllEndButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -76),
            aerErstmarkerSketchutton.centerYAnchor.constraint(equalTo: ponllEndButton.centerYAnchor),
            aerErstmarkerSketchutton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            bruCiuCameraButton.centerYAnchor.constraint(equalTo: ponllEndButton.centerYAnchor),
            bruCiuCameraButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36)
        ])
    }

    private func aerErststencilSketchtton(outlineSketch ponllSymbol: String, shadowSketch bruCiuBackground: UIColor, styleSketch flckinkTint: UIColor, wallSketch aerErstSize: CGFloat, colorSketch ponllAction: Selector) -> UIButton {
        let bruCiuButton = UIButton(type: .system)
        bruCiuButton.setImage(UIImage(systemName: ponllSymbol), for: .normal)
        bruCiuButton.tintColor = flckinkTint
        bruCiuButton.backgroundColor = bruCiuBackground
        bruCiuButton.layer.cornerRadius = aerErstSize / 2
        bruCiuButton.imageView?.contentMode = .scaleAspectFit
        bruCiuButton.translatesAutoresizingMaskIntoConstraints = false
        bruCiuButton.widthAnchor.constraint(equalToConstant: aerErstSize).isActive = true
        bruCiuButton.heightAnchor.constraint(equalToConstant: aerErstSize).isActive = true
        bruCiuButton.addTarget(self, action: ponllAction, for: .touchUpInside)
        return bruCiuButton
    }

    private func aerosolSignal() {
        let wallSignal = AVCaptureDevice.authorizationStatus(for: .video)
        let inkSignal = AVAudioSession.sharedInstance().recordPermission
        var stencilSignal = wallSignal == .authorized
        var markerSignal = inkSignal == .granted
        let chromeSignal = DispatchGroup()

        if wallSignal == .notDetermined {
            chromeSignal.enter()
            AVCaptureDevice.requestAccess(for: .video) { colorSignal in
                stencilSignal = colorSignal
                chromeSignal.leave()
            }
        }

        if inkSignal == .undetermined {
            chromeSignal.enter()
            AVAudioSession.sharedInstance().requestRecordPermission { textureSignal in
                markerSignal = textureSignal
                chromeSignal.leave()
            }
        }

        chromeSignal.notify(queue: .main) { [weak self] in
            guard let self else { return }
            guard stencilSignal && markerSignal else {
                self.ponllyShowThemeAlert(
                    title: "P9earbmcidsesfigohnisj kNlemendoepdq".ponllPaintaerErstHours,
                    message: "Arlsltouwv wcxaymzeArBaC DaEnFdG HmIiJcKrLoMpNhOoPnQeR SaTcUcVeWsXsY Zt0o1 2c3o4n5t6i7n8u9ea btchdee fvgihdiejok lcmanlolp.q".ponllPaintaerErstHours,
                    actionTitle: "Grostt uIvtw".ponllPaintaerErstHours,
                    style: .ponllWhiteEdge
                )
                return
            }
            self.flckinkPrimerCoatponlu("CxaylzlA BcCoDnEnFeGcHtIiJnKgL".ponllPaintaerErstHours)
        }
    }

    @objc private func flckinkMicTapped(_ aerErstSender: UIButton) {
        bruCiuMicMuted.toggle()
        aerErstSender.setImage(UIImage(systemName: bruCiuMicMuted ? "mic.slash.fill" : "mic.fill"), for: .normal)
        aerErstSender.tintColor = .white
        aerErstSender.backgroundColor = bruCiuMicMuted ? PonllyPalette.pink.withAlphaComponent(0.86) : .black.withAlphaComponent(0.78)
        flckinkPrimerCoatponlu(bruCiuMicMuted ? "MMiNcOrPoQpRhSoTnUeV WmXuYtZe0d1".ponllPaintaerErstHours : "M2i3c4r5o6p7h8o9naeb codpeefng".ponllPaintaerErstHours)
    }

    @objc private func ponllCameraTapped() {
        flckinkPrimerCoatponlu("Chaimjekrlam nsowpiqtrcshteudv".ponllPaintaerErstHours)
    }

    @objc private func aerErstEndTapped() {
        flckinkPrimerCoatponlu("Cwaxlylz AeBnCdDeEdF".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.navigationController?.popViewController(animated: true)
        }
    }

    @objc private func bruCiuMoreTapped() {
        let flckinkMenu = PaerosolGritMenuViewController(aerErstInkFuse: ponllUserSignal)
        flckinkMenu.bruCiuSketchFlicker = { [weak self] in
            guard let self else { return }
            let aerErstReport = PonllycolorFadeController(user: self.ponllUserSignal)
            aerErstReport.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(aerErstReport, animated: true)
        }
        flckinkMenu.flckinkPaintFlash = { [weak self] in
            guard let self else { return }
            let ponllConfirm = PaerErstHighlightStrokeController(bruCiuPaintFlash: self.ponllUserSignal)
            ponllConfirm.ponllChromeFlicker = { [weak self] in
                guard let self else { return }
                PonllyponllTornEdge.ponllMetalPanel(self.ponllUserSignal.graffitiPulse)
                self.flckinkPrimerCoatponlu("AGrHtIiJsKtL MbNlOoPcQkReSdT".ponllPaintaerErstHours)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                    self.navigationController?.popViewController(animated: true)
                }
            }
            ponllConfirm.modalPresentationStyle = .overFullScreen
            self.present(ponllConfirm, animated: false)
        }
        flckinkMenu.modalPresentationStyle = .overFullScreen
        present(flckinkMenu, animated: false)
    }

    @objc private func ponllpaintSketch() {
        navigationController?.popViewController(animated: true)
    }
}
