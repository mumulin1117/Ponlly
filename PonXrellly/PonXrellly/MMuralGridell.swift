import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class MMuralGridell: UICollectionViewCell, UIGestureRecognizerDelegate {
    static let ponllWallQuest = "MPMQuRrSaTlUGVrWiXdYeZl0l1".ponllPaintaerErstHours

    var bruCiuInkMood: (() -> Void)?
    var flckinkMarkerPath: (() -> Void)?
    var aerErstChromeArc: (() -> Void)?
    var ponllNeonBend: (() -> Void)?
    var bruCiuTextureKick: (() -> Void)?

    private let flckinkSketchLean = AVPlayerLayer()
    private var aerErstPaintTwist: AVPlayer?
    private var ponllPaintTrace: Any?
    private var bruCiuPaintRipple: NSLayoutConstraint?
    private var ponllInkWeave = false
    private let bruCiuWallDepth = CAGradientLayer()
    private let flckinkAerosolGlow = UIButton(type: .system)
    private let aerErstMuralGrit = UIButton(type: .system)
    private let ponllStencilNoise = UIButton(type: .system)
    private let bruCiuMarkerTexture = UILabel()
    private let flckinkChromeContrast = UILabel()
    private let aerErstNeonlayerBlend = UIView()
    private let ponllTextureRhythm = UIView()
    private let bruCiuSketchMotion = UIButton(type: .system)
    private let flckinkPaintCascade = UILabel()
    private let aerErstInkRipple = UIButton(type: .system)
    private let ponllWallSurge = UILabel()
    private let bruCiuAerosolBurst = UIButton(type: .system)
    private let flckinkMuralBloom = UILabel()
    private let ponllPaintSignal = UIImpactFeedbackGenerator(style: .medium)

    var ponllPaintFlow: UIView? {
        aerErstMuralGrit.subviews.first { $0 is ErErstPaintLabView }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        aerErstMarkerFlicker()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        ponllPaintDepth()
        aerErstPaintRipple()
        aerErstPaintTwist = nil
        flckinkSketchLean.player = nil
        NotificationCenter.default.removeObserver(self)
        ponllInkWeave = false
        bruCiuChromeFlash()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        flckinkSketchLean.frame = contentView.bounds
        bruCiuWallDepth.frame = contentView.bounds
    }

    func flckinkAerosolLean(ponllMuralTwist: PonllystencilLab) {
        aerErstPaintRipple()
        aerErstPaintTwist?.pause()
        aerErstPaintTwist = nil
        flckinkSketchLean.player = nil
        NotificationCenter.default.removeObserver(self, name: .AVPlayerItemDidPlayToEndTime, object: nil)
        bruCiuPaintRipple?.constant = 0
        let bruCiuStencilWeave = PonllyponllTornEdge.flckinkChippedPaint(ponllMuralTwist.letterForm)
        bruCiuMarkerTexture.text = "@\(bruCiuStencilWeave.aerosolDream.lowercased())"
        flckinkChromeContrast.text = ponllMuralTwist.fillPattern
        ponllWallSurge.text = aerErstPaintDepth(ponllMuralTwist.paintLayer)
        ponllStencilGlow(ponllMuralTwist.brickTone)
        ponllPaintBloom(ponllMuralTwist.wallTexture, aerErstPaintDepth: ponllMuralTwist.wildstyleCurve)

        aerErstMuralGrit.subviews.forEach { $0.removeFromSuperview() }
        let flckinkAerosolDepth = ErErstPaintLabView(bruCiuStencilWeave, 44)
        flckinkAerosolDepth.accessibilityIdentifier = bruCiuStencilWeave.graffitiPulse
        flckinkAerosolDepth.isUserInteractionEnabled = false
        aerErstMuralGrit.addSubview(flckinkAerosolDepth)
        flckinkAerosolDepth.woodPanelPonlly(steelGate: aerErstMuralGrit)

        let aerErstMarkerGlow = Bundle.main.url(forResource: ponllMuralTwist.strokeWeight, withExtension: "mp4")
            ?? Bundle.main.url(forResource: ponllMuralTwist.strokeWeight, withExtension: "mp4", subdirectory: "VmindoepoqCrlsitpusv".ponllPaintaerErstHours)
        if let ponllChromeGrit = aerErstMarkerGlow {
            let bruCiuNeonNoise = AVPlayerItem(url: ponllChromeGrit)
            aerErstPaintTwist = AVPlayer(playerItem: bruCiuNeonNoise)
            aerErstPaintTwist?.isMuted = true
            flckinkSketchLean.player = aerErstPaintTwist
            flckinkPaintTrail()
            NotificationCenter.default.addObserver(self, selector: #selector(flckinkTextureContrast), name: .AVPlayerItemDidPlayToEndTime, object: bruCiuNeonNoise)
        }
    }

    func aerErstStencilWeave() {
        ponllInkWeave = true
        bruCiuChromeFlash()
        aerErstPaintTwist?.play()
    }

    func ponllPaintDepth() {
        ponllInkWeave = false
        bruCiuChromeFlash()
        aerErstPaintTwist?.pause()
    }

    func ponllPaintBloom(_ bruCiuPaintBloom: Bool, aerErstPaintDepth: Int) {
        flckinkNeonSignal(bruCiuPaintBloom)
        flckinkPaintCascade.text = self.aerErstPaintDepth(aerErstPaintDepth)
    }

    func ponllAerosolBurst(_ bruCiuPaintBloom: Bool) {
        if bruCiuPaintBloom {
            ponllPaintSignal.prepare()
            ponllPaintSignal.impactOccurred(intensity: 0.82)
        }
        guard !UIAccessibility.isReduceMotionEnabled else { return }
        bruCiuSketchMotion.layer.removeAllAnimations()
        bruCiuSketchMotion.transform = .identity
        UIView.animate(
            withDuration: 0.09,
            delay: 0,
            options: [.curveEaseIn, .beginFromCurrentState, .allowUserInteraction]
        ) {
            self.bruCiuSketchMotion.transform = CGAffineTransform(scaleX: 0.72, y: 0.72)
        } completion: { _ in
            UIView.animate(
                withDuration: 0.48,
                delay: 0,
                usingSpringWithDamping: 0.48,
                initialSpringVelocity: 0.9,
                options: [.curveEaseOut, .beginFromCurrentState, .allowUserInteraction]
            ) {
                self.bruCiuSketchMotion.transform = .identity
            }
        }
        guard bruCiuPaintBloom else { return }
        bruCiuPaintBurst()
    }

    private func aerErstMarkerFlicker() {
        contentView.backgroundColor = PonllyPalette.background
        flckinkSketchLean.videoGravity = .resizeAspectFill
        contentView.layer.addSublayer(flckinkSketchLean)

        let ponllPaintMotion = UITapGestureRecognizer(target: self, action: #selector(neonForge))
        ponllPaintMotion.cancelsTouchesInView = false
        ponllPaintMotion.delegate = self
        contentView.addGestureRecognizer(ponllPaintMotion)

        bruCiuWallDepth.colors = [
            UIColor.black.withAlphaComponent(0.12).cgColor,
            UIColor.black.withAlphaComponent(0.03).cgColor,
            UIColor.black.withAlphaComponent(0.9).cgColor
        ]
        bruCiuWallDepth.locations = [0, 0.52, 1]
        contentView.layer.addSublayer(bruCiuWallDepth)

        [flckinkAerosolGlow, aerErstMuralGrit, ponllStencilNoise, bruCiuMarkerTexture, flckinkChromeContrast, aerErstNeonlayerBlend, bruCiuSketchMotion, flckinkPaintCascade, aerErstInkRipple, ponllWallSurge, bruCiuAerosolBurst, flckinkMuralBloom].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }

        flckinkAerosolGlow.backgroundColor = UIColor.black.withAlphaComponent(0.24)
        flckinkAerosolGlow.tintColor = .white
        flckinkAerosolGlow.layer.cornerRadius = 24
        flckinkAerosolGlow.layer.borderWidth = 0
        flckinkAerosolGlow.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 18, weight: .bold), forImageIn: .normal)
        flckinkAerosolGlow.addTarget(self, action: #selector(neonForge), for: .touchUpInside)
        bruCiuChromeFlash()

        aerErstMuralGrit.layer.cornerRadius = 22
        aerErstMuralGrit.layer.borderWidth = 2
        aerErstMuralGrit.layer.borderColor = PonllyPalette.pink.cgColor
        aerErstMuralGrit.clipsToBounds = true
        aerErstMuralGrit.addTarget(self, action: #selector(bruCiuAerosolRhythm), for: .touchUpInside)

        ponllStencilNoise.layer.cornerRadius = 14
        var aerErstStencilBloom = UIButton.Configuration.plain()
        aerErstStencilBloom.imagePlacement = .leading
        aerErstStencilBloom.imagePadding = 5
        aerErstStencilBloom.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        aerErstStencilBloom.cornerStyle = .capsule
        ponllStencilNoise.configuration = aerErstStencilBloom
        ponllStencilNoise.layer.shadowOffset = .zero
        ponllStencilNoise.layer.shadowRadius = 8
        ponllStencilNoise.addTarget(self, action: #selector(aerErstStencilGlow), for: .touchDown)
        ponllStencilNoise.addTarget(self, action: #selector(bruCiuStencilGlow), for: [.touchUpInside, .touchCancel, .touchDragExit])
        ponllStencilNoise.addTarget(self, action: #selector(flckinkMuralMotion), for: .touchUpInside)

        bruCiuMarkerTexture.textColor = PonllyPalette.cyan
        bruCiuMarkerTexture.font = PonllyFonts.muralForgepon(neonLab: 14)
        bruCiuMarkerTexture.lineBreakMode = .byTruncatingTail
        bruCiuMarkerTexture.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        bruCiuMarkerTexture.layer.shadowColor = PonllyPalette.cyan.cgColor
        bruCiuMarkerTexture.layer.shadowOpacity = 0.35
        bruCiuMarkerTexture.layer.shadowRadius = 10

        flckinkChromeContrast.textColor = .white
        flckinkChromeContrast.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        flckinkChromeContrast.numberOfLines = 3

        aerErstNeonlayerBlend.backgroundColor = UIColor.white.withAlphaComponent(0.14)
        aerErstNeonlayerBlend.layer.cornerRadius = 3
        aerErstNeonlayerBlend.addSubview(ponllTextureRhythm)
        ponllTextureRhythm.backgroundColor = PonllyPalette.pink
        ponllTextureRhythm.layer.cornerRadius = 3
        ponllTextureRhythm.translatesAutoresizingMaskIntoConstraints = false
        bruCiuPaintRipple = ponllTextureRhythm.widthAnchor.constraint(equalToConstant: 0)

        bruCiuPaintCascade(bruCiuSketchMotion, ponllInkSurge: "heart")
        bruCiuSketchMotion.contentVerticalAlignment = .center
        bruCiuSketchMotion.contentHorizontalAlignment = .center
        bruCiuPaintCascade(aerErstInkRipple, ponllInkSurge: "chromeCue")
        bruCiuPaintCascade(bruCiuAerosolBurst, ponllInkSurge: "stencilQuest")
        bruCiuSketchMotion.addTarget(self, action: #selector(aerErstChromeBurst), for: .touchUpInside)
        aerErstInkRipple.addTarget(self, action: #selector(ponllNeonBloom), for: .touchUpInside)
        bruCiuAerosolBurst.addTarget(self, action: #selector(bruCiuTextureFlicker), for: .touchUpInside)

        [flckinkPaintCascade, ponllWallSurge].forEach {
            $0.textColor = .white
            $0.font = PonllyFonts.steelGate(rollingShutter: 11)
            $0.textAlignment = .center
        }
        flckinkMuralBloom.text = "RBeCpDoErFtG".ponllPaintaerErstHours
        flckinkMuralBloom.textColor = .white
        flckinkMuralBloom.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .regular)
        flckinkMuralBloom.textAlignment = .center

        NSLayoutConstraint.activate([
            flckinkAerosolGlow.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            flckinkAerosolGlow.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            flckinkAerosolGlow.widthAnchor.constraint(equalToConstant: 48),
            flckinkAerosolGlow.heightAnchor.constraint(equalToConstant: 48),

            aerErstMuralGrit.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            aerErstMuralGrit.bottomAnchor.constraint(equalTo: bruCiuSketchMotion.topAnchor, constant: -38),
            aerErstMuralGrit.widthAnchor.constraint(equalToConstant: 44),
            aerErstMuralGrit.heightAnchor.constraint(equalToConstant: 44),
            ponllStencilNoise.leadingAnchor.constraint(equalTo: bruCiuMarkerTexture.trailingAnchor, constant: 12),
            ponllStencilNoise.centerYAnchor.constraint(equalTo: bruCiuMarkerTexture.centerYAnchor),
            ponllStencilNoise.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -80),
            ponllStencilNoise.widthAnchor.constraint(equalToConstant: 97),
            ponllStencilNoise.heightAnchor.constraint(equalToConstant: 28),

            bruCiuSketchMotion.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            bruCiuSketchMotion.bottomAnchor.constraint(equalTo: flckinkPaintCascade.topAnchor, constant: -8),
            bruCiuSketchMotion.widthAnchor.constraint(equalToConstant: 28),
            bruCiuSketchMotion.heightAnchor.constraint(equalToConstant: 28),
            flckinkPaintCascade.centerXAnchor.constraint(equalTo: bruCiuSketchMotion.centerXAnchor),
            flckinkPaintCascade.bottomAnchor.constraint(equalTo: aerErstInkRipple.topAnchor, constant: -36),

            aerErstInkRipple.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            aerErstInkRipple.bottomAnchor.constraint(equalTo: ponllWallSurge.topAnchor, constant: -8),
            aerErstInkRipple.widthAnchor.constraint(equalToConstant: 28),
            aerErstInkRipple.heightAnchor.constraint(equalToConstant: 28),
            ponllWallSurge.centerXAnchor.constraint(equalTo: aerErstInkRipple.centerXAnchor),
            ponllWallSurge.bottomAnchor.constraint(equalTo: bruCiuAerosolBurst.topAnchor, constant: -36),

            bruCiuAerosolBurst.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            bruCiuAerosolBurst.bottomAnchor.constraint(equalTo: flckinkMuralBloom.topAnchor, constant: -5),
            bruCiuAerosolBurst.widthAnchor.constraint(equalToConstant: 28),
            bruCiuAerosolBurst.heightAnchor.constraint(equalToConstant: 28),
            flckinkMuralBloom.centerXAnchor.constraint(equalTo: bruCiuAerosolBurst.centerXAnchor),
            flckinkMuralBloom.bottomAnchor.constraint(equalTo: aerErstNeonlayerBlend.topAnchor, constant: -9),

            bruCiuMarkerTexture.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bruCiuMarkerTexture.bottomAnchor.constraint(equalTo: flckinkChromeContrast.topAnchor, constant: -8),

            flckinkChromeContrast.leadingAnchor.constraint(equalTo: bruCiuMarkerTexture.leadingAnchor),
            flckinkChromeContrast.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            flckinkChromeContrast.bottomAnchor.constraint(equalTo: aerErstNeonlayerBlend.topAnchor, constant: -10),

            aerErstNeonlayerBlend.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            aerErstNeonlayerBlend.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            aerErstNeonlayerBlend.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -22),
            aerErstNeonlayerBlend.heightAnchor.constraint(equalToConstant: 6),
            ponllTextureRhythm.leadingAnchor.constraint(equalTo: aerErstNeonlayerBlend.leadingAnchor),
            ponllTextureRhythm.topAnchor.constraint(equalTo: aerErstNeonlayerBlend.topAnchor),
            ponllTextureRhythm.bottomAnchor.constraint(equalTo: aerErstNeonlayerBlend.bottomAnchor),
            bruCiuPaintRipple!
        ])
    }

    private func bruCiuPaintCascade(_ flckinkInkstencilMuse: UIButton, ponllInkSurge: String) {
        let aerErstInkBloom = UIImage(named: ponllInkSurge)?.withRenderingMode(.alwaysOriginal) ?? UIImage(systemName: ponllInkSurge)
        flckinkInkstencilMuse.setImage(aerErstInkBloom, for: .normal)
        flckinkInkstencilMuse.tintColor = .white
        flckinkInkstencilMuse.contentVerticalAlignment = .fill
        flckinkInkstencilMuse.contentHorizontalAlignment = .fill
        flckinkInkstencilMuse.imageView?.contentMode = .scaleAspectFit
    }

    private func flckinkNeonSignal(_ aerErstPaintBloom: Bool) {
        let ponllNeonSignal = UIImage.SymbolConfiguration(pointSize: 20, weight: .semibold)
        let bruCiuNeonSignal = UIImage(
            systemName: aerErstPaintBloom ? "heart.fill" : "heart",
            withConfiguration: ponllNeonSignal
        )
        bruCiuSketchMotion.setImage(bruCiuNeonSignal, for: .normal)
        bruCiuSketchMotion.setBackgroundImage(
            aerErstPaintBloom ? UIImage(named: "neonSignal")?.withRenderingMode(.alwaysOriginal) : nil,
            for: .normal
        )
        bruCiuSketchMotion.tintColor = aerErstPaintBloom ? PonllyPalette.pink : .white
    }

    private func ponllStencilGlow(_ bruCiuPaintBloom: Bool) {
        let aerErstOutlineGlow = UIImage.SymbolConfiguration(pointSize: 10, weight: .black)
        let flckinkStencilBloom = bruCiuPaintBloom ? PonllyPalette.cyan : UIColor.white
        var ponllStencilBloom = ponllStencilNoise.configuration ?? UIButton.Configuration.plain()
        ponllStencilBloom.image = UIImage(
            systemName: bruCiuPaintBloom ? "checkmark" : "plus",
            withConfiguration: aerErstOutlineGlow
        )
        ponllStencilBloom.title = bruCiuPaintBloom
            ? "F2o3l4l5o6w7i8n9ga".ponllPaintaerErstHours
            : "Fbocldleofwg".ponllPaintaerErstHours
        ponllStencilBloom.baseForegroundColor = flckinkStencilBloom
        ponllStencilBloom.background.backgroundColor = bruCiuPaintBloom
            ? UIColor.black.withAlphaComponent(0.58)
            : PonllyPalette.pink
        ponllStencilBloom.background.strokeWidth = 1
        ponllStencilBloom.background.strokeColor = bruCiuPaintBloom
            ? PonllyPalette.cyan
            : UIColor.white.withAlphaComponent(0.5)
        ponllStencilBloom.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { ponllPaintLayer in
            var bruCiuPaintLayer = ponllPaintLayer
            bruCiuPaintLayer.font = PonllyFonts.utilityBox(blankFacade: 10, aerosolMuse: .bold)
            return bruCiuPaintLayer
        }
        ponllStencilNoise.configuration = ponllStencilBloom
        ponllStencilNoise.layer.shadowColor = (
            bruCiuPaintBloom ? PonllyPalette.cyan : PonllyPalette.pink
        ).cgColor
        ponllStencilNoise.layer.shadowOpacity = bruCiuPaintBloom ? 0.3 : 0.48
    }

    private func aerErstPaintDepth(_ bruCiuMuralRipple: Int) -> String {
        if bruCiuMuralRipple >= 1000 {
            let flckinkStencilSurge = Double(bruCiuMuralRipple) / 1000
            return String(format: flckinkStencilSurge >= 10 ? "%H.I1JfKKL".ponllPaintaerErstHours : "%M.N1OfPKQ".ponllPaintaerErstHours, flckinkStencilSurge)
        }
        return "\(bruCiuMuralRipple)"
    }

    private func bruCiuChromeFlash() {
        let ponllTextureBurst = ponllInkWeave ? "pause.fill" : "play.fill"
        flckinkAerosolGlow.setImage(ponllInkWeave ? nil : UIImage(systemName: ponllTextureBurst), for: .normal)
        flckinkAerosolGlow.backgroundColor = ponllInkWeave ? .clear : UIColor.black.withAlphaComponent(0.24)
    }

    private func flckinkPaintTrail() {
        guard let aerErstPaintTwist else { return }
        let ponllPaintMotion = CMTime(seconds: 0.1, preferredTimescale: 600)
        ponllPaintTrace = aerErstPaintTwist.addPeriodicTimeObserver(forInterval: ponllPaintMotion, queue: .main) { [weak self] aerErstPaintMotion in
            Task { @MainActor [weak self] in
                self?.ponllPaintFlowline(aerErstPaintMotion)
            }
        }
    }

    private func ponllPaintFlowline(_ aerErstPaintMotion: CMTime) {
        let bruCiuPaintDepth = aerErstPaintTwist?.currentItem?.duration.seconds ?? 0
        guard bruCiuPaintDepth.isFinite, bruCiuPaintDepth > 0 else {
            bruCiuPaintRipple?.constant = 0
            return
        }
        let flckinkPaintFlowline = min(max(aerErstPaintMotion.seconds / bruCiuPaintDepth, 0), 1)
        bruCiuPaintRipple?.constant = aerErstNeonlayerBlend.bounds.width * CGFloat(flckinkPaintFlowline)
    }

    private func aerErstPaintRipple() {
        guard let ponllPaintTrace, let aerErstPaintTwist else { return }
        aerErstPaintTwist.removeTimeObserver(ponllPaintTrace)
        self.ponllPaintTrace = nil
    }

    private func bruCiuPaintBurst() {
        let aerErstPaintArc = bruCiuSketchMotion.convert(
            CGPoint(x: bruCiuSketchMotion.bounds.midX, y: bruCiuSketchMotion.bounds.midY),
            to: contentView
        )
        let flckinkDripMap: [(CGFloat, CGFloat, CGFloat, TimeInterval)] = [
            (-18, -13, 3.8, 0.00),
            (-15, 9, 2.6, 0.02),
            (-6, -20, 2.3, 0.01),
            (6, 19, 3.0, 0.03),
            (14, -15, 3.4, 0.02),
            (19, 7, 2.5, 0.00),
            (3, -14, 2.0, 0.04)
        ]
        for (ponllDripTrail, aerErstPaintTrail, bruCiuPaintMist, flckinkSprayRhythm) in flckinkDripMap {
            let ponllColorSplash = UIView(
                frame: CGRect(x: 0, y: 0, width: bruCiuPaintMist, height: bruCiuPaintMist)
            )
            ponllColorSplash.center = aerErstPaintArc
            ponllColorSplash.backgroundColor = PonllyPalette.pink
            ponllColorSplash.layer.cornerRadius = bruCiuPaintMist / 2
            ponllColorSplash.layer.shadowColor = PonllyPalette.pink.cgColor
            ponllColorSplash.layer.shadowOpacity = 0.75
            ponllColorSplash.layer.shadowRadius = 4
            contentView.addSubview(ponllColorSplash)
            contentView.bringSubviewToFront(bruCiuSketchMotion)
            UIView.animate(
                withDuration: 0.42,
                delay: flckinkSprayRhythm,
                options: [.curveEaseOut, .allowUserInteraction]
            ) {
                ponllColorSplash.center = CGPoint(
                    x: aerErstPaintArc.x + ponllDripTrail,
                    y: aerErstPaintArc.y + aerErstPaintTrail
                )
                ponllColorSplash.alpha = 0
                ponllColorSplash.transform = CGAffineTransform(scaleX: 0.45, y: 0.45)
            } completion: { _ in
                ponllColorSplash.removeFromSuperview()
            }
        }
    }

    @objc private func flckinkTextureContrast() {
        aerErstPaintTwist?.seek(to: .zero)
        aerErstPaintTwist?.play()
    }

    @objc private func neonForge() {
        ponllInkWeave ? ponllPaintDepth() : aerErstStencilWeave()
    }

    func gestureRecognizer(_ ponllPaintMotion: UIGestureRecognizer, shouldReceive bruCiuPaintSignal: UITouch) -> Bool {
        var flckinkMarkerSignal = bruCiuPaintSignal.view
        while let aerErstMuralSignal = flckinkMarkerSignal {
            if aerErstMuralSignal is UIControl { return false }
            if aerErstMuralSignal === contentView { break }
            flckinkMarkerSignal = aerErstMuralSignal.superview
        }
        return true
    }

    @objc private func bruCiuAerosolRhythm() { bruCiuInkMood?() }
    @objc private func aerErstStencilGlow() {
        guard !UIAccessibility.isReduceMotionEnabled else { return }
        UIView.animate(withDuration: 0.1, delay: 0, options: [.curveEaseOut, .allowUserInteraction]) {
            self.ponllStencilNoise.transform = CGAffineTransform(scaleX: 0.94, y: 0.94)
        }
    }

    @objc private func bruCiuStencilGlow() {
        guard !UIAccessibility.isReduceMotionEnabled else {
            ponllStencilNoise.transform = .identity
            return
        }
        UIView.animate(
            withDuration: 0.32,
            delay: 0,
            usingSpringWithDamping: 0.58,
            initialSpringVelocity: 0.75,
            options: [.curveEaseOut, .allowUserInteraction]
        ) {
            self.ponllStencilNoise.transform = .identity
        }
    }

    @objc private func flckinkMuralMotion() { flckinkMarkerPath?() }
    @objc private func aerErstChromeBurst() { aerErstChromeArc?() }
    @objc private func ponllNeonBloom() { ponllNeonBend?() }
    @objc private func bruCiuTextureFlicker() { bruCiuTextureKick?() }
}
