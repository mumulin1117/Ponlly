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
        flckinkPaintCascade.text = aerErstPaintDepth(ponllMuralTwist.wildstyleCurve)
        ponllWallSurge.text = aerErstPaintDepth(ponllMuralTwist.paintLayer)
        ponllStencilNoise.setTitle(ponllMuralTwist.brickTone ? "F2o3l4l5o6w7i8n9ga".ponllPaintaerErstHours : "Fbocldleofwg".ponllPaintaerErstHours, for: .normal)
        if ponllMuralTwist.wallTexture {
            bruCiuSketchMotion.tintColor = .white
            bruCiuSketchMotion.setImage(UIImage(named: "neonSignal")?.withRenderingMode(.alwaysOriginal), for: .normal)
        } else {
            bruCiuSketchMotion.tintColor = .white
            bruCiuSketchMotion.setImage(UIImage(systemName: "heart"), for: .normal)
        }

        aerErstMuralGrit.subviews.forEach { $0.removeFromSuperview() }
        let flckinkAerosolDepth = ErErstPaintLabView(bruCiuStencilWeave, 44)
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

        ponllStencilNoise.backgroundColor = PonllyPalette.pink
        ponllStencilNoise.layer.cornerRadius = 6
        ponllStencilNoise.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 9)
        ponllStencilNoise.titleLabel?.adjustsFontSizeToFitWidth = true
        ponllStencilNoise.titleLabel?.minimumScaleFactor = 0.72
        ponllStencilNoise.setTitleColor(.white, for: .normal)
        ponllStencilNoise.addTarget(self, action: #selector(flckinkMuralMotion), for: .touchUpInside)

        bruCiuMarkerTexture.textColor = PonllyPalette.cyan
        bruCiuMarkerTexture.font = PonllyFonts.muralForgepon(neonLab: 14)
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
            ponllStencilNoise.leadingAnchor.constraint(equalTo: bruCiuMarkerTexture.trailingAnchor, constant: 16),
            ponllStencilNoise.centerYAnchor.constraint(equalTo: bruCiuMarkerTexture.centerYAnchor),
            ponllStencilNoise.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -80),
            ponllStencilNoise.widthAnchor.constraint(equalToConstant: 59),
            ponllStencilNoise.heightAnchor.constraint(equalToConstant: 22),

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
    @objc private func flckinkMuralMotion() { flckinkMarkerPath?() }
    @objc private func aerErstChromeBurst() { aerErstChromeArc?() }
    @objc private func ponllNeonBloom() { ponllNeonBend?() }
    @objc private func bruCiuTextureFlicker() { bruCiuTextureKick?() }
}
