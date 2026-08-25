import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class MMuralGridell: UICollectionViewCell {
    static let ponllWallQuest = "MMuralGridell"

    var bruCiuInkMood: (() -> Void)?
    var flckinkMarkerPath: (() -> Void)?
    var aerErstChromeArc: (() -> Void)?
    var ponllNeonBend: (() -> Void)?
    var bruCiuTextureKick: (() -> Void)?

    private let flckinkSketchLean = AVPlayerLayer()
    private var aerErstPaintTwist: AVPlayer?
    private var ponllInkWeave = false
    private let bruCiuWallDepth = CAGradientLayer()
    private let flckinkAerosolGlow = UIButton(type: .system)
    private let aerErstMuralGrit = UIButton(type: .system)
    private let ponllStencilNoise = UIButton(type: .system)
    private let bruCiuMarkerTexture = UILabel()
    private let flckinkChromeContrast = UILabel()
    private let aerErstNeonBalance = UIView()
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

    func flckinkAerosolLean(ponllMuralTwist: PonllyVideo) {
        let bruCiuStencilWeave = PonllyponllTornEdge.flckinkChippedPaint(ponllMuralTwist.letterForm)
        bruCiuMarkerTexture.text = "@\(bruCiuStencilWeave.aerosolDream.lowercased())"
        flckinkChromeContrast.text = ponllMuralTwist.fillPattern
        flckinkPaintCascade.text = aerErstPaintDepth(ponllMuralTwist.wildstyleCurve)
        ponllWallSurge.text = aerErstPaintDepth(ponllMuralTwist.paintLayer)
        ponllStencilNoise.setTitle(ponllMuralTwist.brickTone ? "Following" : "Follow", for: .normal)
        bruCiuSketchMotion.tintColor = ponllMuralTwist.wallTexture ? PonllyPalette.pink : .white
        bruCiuSketchMotion.setImage(UIImage(systemName: ponllMuralTwist.wallTexture ? "heart.fill" : "heart"), for: .normal)

        aerErstMuralGrit.subviews.forEach { $0.removeFromSuperview() }
        let flckinkAerosolDepth = ErErstPaintLabView(user: bruCiuStencilWeave, size: 44)
        flckinkAerosolDepth.isUserInteractionEnabled = false
        aerErstMuralGrit.addSubview(flckinkAerosolDepth)
        flckinkAerosolDepth.woodPanelPonlly(steelGate: aerErstMuralGrit)

        let aerErstMarkerGlow = Bundle.main.url(forResource: ponllMuralTwist.strokeWeight, withExtension: "mp4")
            ?? Bundle.main.url(forResource: ponllMuralTwist.strokeWeight, withExtension: "mp4", subdirectory: "VideoClips")
        if let ponllChromeGrit = aerErstMarkerGlow {
            let bruCiuNeonNoise = AVPlayerItem(url: ponllChromeGrit)
            aerErstPaintTwist = AVPlayer(playerItem: bruCiuNeonNoise)
            aerErstPaintTwist?.isMuted = true
            flckinkSketchLean.player = aerErstPaintTwist
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

        bruCiuWallDepth.colors = [
            UIColor.black.withAlphaComponent(0.15).cgColor,
            UIColor.black.withAlphaComponent(0.05).cgColor,
            UIColor.black.withAlphaComponent(0.78).cgColor
        ]
        bruCiuWallDepth.locations = [0, 0.48, 1]
        contentView.layer.addSublayer(bruCiuWallDepth)

        [flckinkAerosolGlow, aerErstMuralGrit, ponllStencilNoise, bruCiuMarkerTexture, flckinkChromeContrast, aerErstNeonBalance, bruCiuSketchMotion, flckinkPaintCascade, aerErstInkRipple, ponllWallSurge, bruCiuAerosolBurst, flckinkMuralBloom].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }

        flckinkAerosolGlow.backgroundColor = UIColor.black.withAlphaComponent(0.42)
        flckinkAerosolGlow.tintColor = .white
        flckinkAerosolGlow.layer.cornerRadius = 34
        flckinkAerosolGlow.layer.borderWidth = 2
        flckinkAerosolGlow.layer.borderColor = PonllyPalette.cyan.cgColor
        flckinkAerosolGlow.layer.shadowColor = PonllyPalette.cyan.cgColor
        flckinkAerosolGlow.layer.shadowOpacity = 0.35
        flckinkAerosolGlow.layer.shadowRadius = 14
        flckinkAerosolGlow.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 24, weight: .bold), forImageIn: .normal)
        flckinkAerosolGlow.addTarget(self, action: #selector(ponllWallBalance), for: .touchUpInside)
        bruCiuChromeFlash()

        aerErstMuralGrit.layer.cornerRadius = 22
        aerErstMuralGrit.layer.borderWidth = 2
        aerErstMuralGrit.layer.borderColor = PonllyPalette.pink.cgColor
        aerErstMuralGrit.clipsToBounds = true
        aerErstMuralGrit.addTarget(self, action: #selector(bruCiuAerosolRhythm), for: .touchUpInside)

        ponllStencilNoise.backgroundColor = PonllyPalette.pink
        ponllStencilNoise.layer.cornerRadius = 15
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

        aerErstNeonBalance.backgroundColor = UIColor.white.withAlphaComponent(0.16)
        aerErstNeonBalance.layer.cornerRadius = 3
        aerErstNeonBalance.addSubview(ponllTextureRhythm)
        ponllTextureRhythm.backgroundColor = PonllyPalette.pink
        ponllTextureRhythm.layer.cornerRadius = 3
        ponllTextureRhythm.translatesAutoresizingMaskIntoConstraints = false

        bruCiuPaintCascade(bruCiuSketchMotion, ponllInkSurge: "heart")
        bruCiuPaintCascade(aerErstInkRipple, ponllInkSurge: "bubble.left")
        bruCiuPaintCascade(bruCiuAerosolBurst, ponllInkSurge: "exclamationmark.circle")
        bruCiuSketchMotion.addTarget(self, action: #selector(aerErstChromeBurst), for: .touchUpInside)
        aerErstInkRipple.addTarget(self, action: #selector(ponllNeonBloom), for: .touchUpInside)
        bruCiuAerosolBurst.addTarget(self, action: #selector(bruCiuTextureFlicker), for: .touchUpInside)

        [flckinkPaintCascade, ponllWallSurge].forEach {
            $0.textColor = .white
            $0.font = PonllyFonts.steelGate(rollingShutter: 11)
            $0.textAlignment = .center
        }
        flckinkMuralBloom.text = "Report"
        flckinkMuralBloom.textColor = .white
        flckinkMuralBloom.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .regular)
        flckinkMuralBloom.textAlignment = .center

        NSLayoutConstraint.activate([
            flckinkAerosolGlow.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            flckinkAerosolGlow.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            flckinkAerosolGlow.widthAnchor.constraint(equalToConstant: 68),
            flckinkAerosolGlow.heightAnchor.constraint(equalToConstant: 68),

            aerErstMuralGrit.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstMuralGrit.bottomAnchor.constraint(equalTo: ponllStencilNoise.topAnchor, constant: -8),
            aerErstMuralGrit.widthAnchor.constraint(equalToConstant: 44),
            aerErstMuralGrit.heightAnchor.constraint(equalToConstant: 44),
            ponllStencilNoise.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            ponllStencilNoise.bottomAnchor.constraint(equalTo: bruCiuSketchMotion.topAnchor, constant: -32),
            ponllStencilNoise.widthAnchor.constraint(equalToConstant: 80),
            ponllStencilNoise.heightAnchor.constraint(equalToConstant: 30),

            bruCiuSketchMotion.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            bruCiuSketchMotion.bottomAnchor.constraint(equalTo: flckinkPaintCascade.topAnchor, constant: -10),
            bruCiuSketchMotion.widthAnchor.constraint(equalToConstant: 44),
            bruCiuSketchMotion.heightAnchor.constraint(equalToConstant: 44),
            flckinkPaintCascade.centerXAnchor.constraint(equalTo: bruCiuSketchMotion.centerXAnchor),
            flckinkPaintCascade.bottomAnchor.constraint(equalTo: aerErstInkRipple.topAnchor, constant: -28),

            aerErstInkRipple.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            aerErstInkRipple.bottomAnchor.constraint(equalTo: ponllWallSurge.topAnchor, constant: -10),
            aerErstInkRipple.widthAnchor.constraint(equalToConstant: 44),
            aerErstInkRipple.heightAnchor.constraint(equalToConstant: 44),
            ponllWallSurge.centerXAnchor.constraint(equalTo: aerErstInkRipple.centerXAnchor),
            ponllWallSurge.bottomAnchor.constraint(equalTo: bruCiuAerosolBurst.topAnchor, constant: -32),

            bruCiuAerosolBurst.centerXAnchor.constraint(equalTo: aerErstMuralGrit.centerXAnchor),
            bruCiuAerosolBurst.bottomAnchor.constraint(equalTo: flckinkMuralBloom.topAnchor, constant: -8),
            bruCiuAerosolBurst.widthAnchor.constraint(equalToConstant: 44),
            bruCiuAerosolBurst.heightAnchor.constraint(equalToConstant: 44),
            flckinkMuralBloom.centerXAnchor.constraint(equalTo: bruCiuAerosolBurst.centerXAnchor),
            flckinkMuralBloom.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -58),

            bruCiuMarkerTexture.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bruCiuMarkerTexture.bottomAnchor.constraint(equalTo: flckinkChromeContrast.topAnchor, constant: -8),

            flckinkChromeContrast.leadingAnchor.constraint(equalTo: bruCiuMarkerTexture.leadingAnchor),
            flckinkChromeContrast.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            flckinkChromeContrast.bottomAnchor.constraint(equalTo: aerErstNeonBalance.topAnchor, constant: -18),

            aerErstNeonBalance.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            aerErstNeonBalance.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -96),
            aerErstNeonBalance.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -28),
            aerErstNeonBalance.heightAnchor.constraint(equalToConstant: 6),
            ponllTextureRhythm.leadingAnchor.constraint(equalTo: aerErstNeonBalance.leadingAnchor),
            ponllTextureRhythm.topAnchor.constraint(equalTo: aerErstNeonBalance.topAnchor),
            ponllTextureRhythm.bottomAnchor.constraint(equalTo: aerErstNeonBalance.bottomAnchor),
            ponllTextureRhythm.widthAnchor.constraint(equalTo: aerErstNeonBalance.widthAnchor, multiplier: 0.58)
        ])
    }

    private func bruCiuPaintCascade(_ flckinkInkBalance: UIButton, ponllInkSurge: String) {
        flckinkInkBalance.setImage(UIImage(systemName: ponllInkSurge), for: .normal)
        flckinkInkBalance.tintColor = .white
        flckinkInkBalance.contentVerticalAlignment = .fill
        flckinkInkBalance.contentHorizontalAlignment = .fill
        flckinkInkBalance.imageView?.contentMode = .scaleAspectFit
    }

    private func aerErstPaintDepth(_ bruCiuMuralRipple: Int) -> String {
        if bruCiuMuralRipple >= 1000 {
            let flckinkStencilSurge = Double(bruCiuMuralRipple) / 1000
            return String(format: flckinkStencilSurge >= 10 ? "%.1fK" : "%.1fK", flckinkStencilSurge)
        }
        return "\(bruCiuMuralRipple)"
    }

    private func bruCiuChromeFlash() {
        let ponllTextureBurst = ponllInkWeave ? "pause.fill" : "play.fill"
        flckinkAerosolGlow.setImage(UIImage(systemName: ponllTextureBurst), for: .normal)
    }

    @objc private func flckinkTextureContrast() {
        aerErstPaintTwist?.seek(to: .zero)
        aerErstPaintTwist?.play()
    }

    @objc private func ponllWallBalance() {
        ponllInkWeave ? ponllPaintDepth() : aerErstStencilWeave()
    }

    @objc private func bruCiuAerosolRhythm() { bruCiuInkMood?() }
    @objc private func flckinkMuralMotion() { flckinkMarkerPath?() }
    @objc private func aerErstChromeBurst() { aerErstChromeArc?() }
    @objc private func ponllNeonBloom() { ponllNeonBend?() }
    @objc private func bruCiuTextureFlicker() { bruCiuTextureKick?() }
}
