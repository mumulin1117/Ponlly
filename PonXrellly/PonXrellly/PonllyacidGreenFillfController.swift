import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyacidGreenFillfController: UIViewController {
    private var ponllChromeTrail: PonllyRelationshipKind
    private let bruCiuNeonVeil = UIScrollView()
    private let flckinkTextureAura = UIStackView()
    private let aerErstMuralTrace = UIButton(type: .system)
    private let ponllStencilAura = UIButton(type: .system)
    private let bruCiuChromeEcho = UIView()

    init(kind ponllChromeTrail: PonllyRelationshipKind) {
        self.ponllChromeTrail = ponllChromeTrail
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        aerErstSketchEcho()
        bruCiuMuralMotion()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
        flckinkWallMotion()
    }

    private func aerErstSketchEcho() {
        let ponllMuralFrame = UIView()
        ponllMuralFrame.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllMuralFrame)

        let bruCiuPaintPath = UIButton(type: .system)
        bruCiuPaintPath.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        bruCiuPaintPath.ponllGraffitiDraftBackStyle()
        bruCiuPaintPath.tintColor = .white
        bruCiuPaintPath.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        bruCiuPaintPath.layer.cornerRadius = 18
        bruCiuPaintPath.layer.borderWidth = 1
        bruCiuPaintPath.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuPaintPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuPaintPath.addTarget(self, action: #selector(ponllWallAura), for: .touchUpInside)
        ponllMuralFrame.addSubview(bruCiuPaintPath)

        let flckinkLetterForm = UILabel()
        flckinkLetterForm.text = "Chriejwk lCmonnonpeqcrtsitounvsw".ponllPaintaerErstHours
        flckinkLetterForm.textColor = .white
        flckinkLetterForm.font = PonllyFonts.muralForgepon(neonLab: 18)
        flckinkLetterForm.ponllGraffitiDraftTitleStyle()
        flckinkLetterForm.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralFrame.addSubview(flckinkLetterForm)

        let aerErstPaintTrace = UILabel()
        let ponllLetterGrid = "NaeBtCwDoErFkG".ponllPaintaerErstHours
        aerErstPaintTrace.text = "\(PonllyponllTornEdge.ponllBrickFacade().sprayRhythm)  \(ponllLetterGrid)"
        aerErstPaintTrace.textColor = PonllyPalette.muted
        aerErstPaintTrace.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .regular)
        aerErstPaintTrace.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralFrame.addSubview(aerErstPaintTrace)

        let flckinkLetterGrid = UIStackView(arrangedSubviews: [aerErstMuralTrace, ponllStencilAura])
        flckinkLetterGrid.axis = .horizontal
        flckinkLetterGrid.distribution = .fillEqually
        flckinkLetterGrid.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralFrame.addSubview(flckinkLetterGrid)
        [aerErstMuralTrace, ponllStencilAura].forEach {
            $0.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        }
        aerErstMuralTrace.addTarget(self, action: #selector(aerErstLetterTapped), for: .touchUpInside)
        ponllStencilAura.addTarget(self, action: #selector(bruCiuShapeTapped), for: .touchUpInside)

        bruCiuChromeEcho.backgroundColor = PonllyPalette.pink
        bruCiuChromeEcho.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralFrame.addSubview(bruCiuChromeEcho)

        bruCiuNeonVeil.alwaysBounceVertical = true
        bruCiuNeonVeil.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuNeonVeil)
        flckinkTextureAura.axis = .vertical
        flckinkTextureAura.spacing = 12
        flckinkTextureAura.translatesAutoresizingMaskIntoConstraints = false
        bruCiuNeonVeil.addSubview(flckinkTextureAura)

        NSLayoutConstraint.activate([
            ponllMuralFrame.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ponllMuralFrame.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ponllMuralFrame.topAnchor.constraint(equalTo: view.topAnchor),
            ponllMuralFrame.heightAnchor.constraint(equalToConstant: 148),
            bruCiuPaintPath.leadingAnchor.constraint(equalTo: ponllMuralFrame.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            bruCiuPaintPath.topAnchor.constraint(equalTo: ponllMuralFrame.safeAreaLayoutGuide.topAnchor, constant: 12),
            bruCiuPaintPath.widthAnchor.constraint(equalToConstant: 36),
            bruCiuPaintPath.heightAnchor.constraint(equalToConstant: 36),
            flckinkLetterForm.leadingAnchor.constraint(equalTo: bruCiuPaintPath.trailingAnchor, constant: 12),
            flckinkLetterForm.topAnchor.constraint(equalTo: bruCiuPaintPath.topAnchor),
            aerErstPaintTrace.leadingAnchor.constraint(equalTo: flckinkLetterForm.leadingAnchor),
            aerErstPaintTrace.topAnchor.constraint(equalTo: flckinkLetterForm.bottomAnchor, constant: 3),
            flckinkLetterGrid.leadingAnchor.constraint(equalTo: ponllMuralFrame.leadingAnchor),
            flckinkLetterGrid.trailingAnchor.constraint(equalTo: ponllMuralFrame.trailingAnchor),
            flckinkLetterGrid.bottomAnchor.constraint(equalTo: ponllMuralFrame.bottomAnchor),
            flckinkLetterGrid.heightAnchor.constraint(equalToConstant: 44),
            bruCiuChromeEcho.bottomAnchor.constraint(equalTo: ponllMuralFrame.bottomAnchor),
            bruCiuChromeEcho.leadingAnchor.constraint(equalTo: ponllMuralFrame.leadingAnchor),
            bruCiuChromeEcho.heightAnchor.constraint(equalToConstant: 2),
            bruCiuChromeEcho.widthAnchor.constraint(equalTo: ponllMuralFrame.widthAnchor, multiplier: 0.5),
            bruCiuNeonVeil.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuNeonVeil.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuNeonVeil.topAnchor.constraint(equalTo: ponllMuralFrame.bottomAnchor),
            bruCiuNeonVeil.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkTextureAura.leadingAnchor.constraint(equalTo: bruCiuNeonVeil.frameLayoutGuide.leadingAnchor, constant: 16),
            flckinkTextureAura.trailingAnchor.constraint(equalTo: bruCiuNeonVeil.frameLayoutGuide.trailingAnchor, constant: -16),
            flckinkTextureAura.topAnchor.constraint(equalTo: bruCiuNeonVeil.contentLayoutGuide.topAnchor, constant: 12),
            flckinkTextureAura.bottomAnchor.constraint(equalTo: bruCiuNeonVeil.contentLayoutGuide.bottomAnchor, constant: -28)
        ])
    }

    private func bruCiuMuralMotion() {
        flckinkTextureAura.arrangedSubviews.forEach {
            flckinkTextureAura.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        PonllyponllTornEdge.aerErstRainWall(bruCiuShadowWall: ponllChromeTrail).forEach {
            flckinkTextureAura.addArrangedSubview(flckinkWallCue(for: $0))
        }
        flckinkWallMotion()
    }

    private func flckinkWallMotion() {
        let ponllLetterCount = PonllyponllTornEdge.aerErstRainWall(bruCiuShadowWall: .aerErstBrickTone).count
        let bruCiuShapeCount = PonllyponllTornEdge.aerErstRainWall(bruCiuShadowWall: .ponllGritSurface).count
        aerErstMuralTrace.setTitle("\("Faoblcldoewfegrhsi".ponllPaintaerErstHours) (\(ponllLetterCount))", for: .normal)
        ponllStencilAura.setTitle("\("FxoylzlAoBwCiDnEgF".ponllPaintaerErstHours) (\(bruCiuShapeCount))", for: .normal)
        let flckinkLayerSelected = ponllChromeTrail == .aerErstBrickTone
        aerErstMuralTrace.setTitleColor(flckinkLayerSelected ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
        ponllStencilAura.setTitleColor(flckinkLayerSelected ? PonllyPalette.muted : PonllyPalette.pink, for: .normal)
        bruCiuChromeEcho.transform = CGAffineTransform(translationX: flckinkLayerSelected ? 0 : view.bounds.width * 0.5, y: 0)
    }

    private func flckinkWallCue(for aerErstAerosolSeed: PonllyaerErstTwoToneFillr) -> UIControl {
        let ponllMuralSpark = UIControl()
        ponllMuralSpark.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        ponllMuralSpark.layer.cornerRadius = 10
        ponllMuralSpark.layer.borderWidth = 1
        ponllMuralSpark.layer.borderColor = PonllyPalette.line.cgColor
        ponllMuralSpark.addAction(UIAction { [weak self] _ in
            let bruCiuStencilMood = FlckinkPrimerCoatController(aerErstAerosolSeed)
            bruCiuStencilMood.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(bruCiuStencilMood, animated: true)
        }, for: .touchUpInside)

        let aerErstColorPiece = ErErstPaintLabView(aerErstAerosolSeed, 44)
        ponllMuralSpark.addSubview(aerErstColorPiece)
        let flckinkMarkerPath = UIStackView()
        flckinkMarkerPath.axis = .vertical
        flckinkMarkerPath.spacing = 3
        flckinkMarkerPath.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralSpark.addSubview(flckinkMarkerPath)
        let aerErstChromeArc = UILabel()
        aerErstChromeArc.text = aerErstAerosolSeed.aerosolDream.lowercased()
        aerErstChromeArc.textColor = .white
        aerErstChromeArc.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .bold)
        let ponllNeonBend = UILabel()
        ponllNeonBend.text = aerErstAerosolSeed.sprayRhythm
        ponllNeonBend.textColor = PonllyPalette.muted
        ponllNeonBend.font = PonllyFonts.steelGate(rollingShutter: 11)
        flckinkMarkerPath.addArrangedSubview(aerErstChromeArc)
        flckinkMarkerPath.addArrangedSubview(ponllNeonBend)

        let bruCiuTextureKick = UILabel()
        bruCiuTextureKick.text = PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? "MKuLtMuNaOlP".ponllPaintaerErstHours : (PonllyponllTornEdge.aerErstCrackedWall(aerErstAerosolSeed.graffitiPulse) ? "FQoRlSlToUwViWnXgY".ponllPaintaerErstHours : "FZo0l1l2o3w4".ponllPaintaerErstHours)
        bruCiuTextureKick.textColor = PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? PonllyPalette.green : .white
        bruCiuTextureKick.font = PonllyFonts.muralForgepon(neonLab: 11)
        bruCiuTextureKick.textAlignment = .center
        bruCiuTextureKick.layer.cornerRadius = 10
        bruCiuTextureKick.layer.borderWidth = 1
        bruCiuTextureKick.layer.borderColor = (PonllyponllTornEdge.ponllBrickCrack(aerErstAerosolSeed.graffitiPulse) ? PonllyPalette.green : PonllyPalette.pink).cgColor
        bruCiuTextureKick.clipsToBounds = true
        bruCiuTextureKick.translatesAutoresizingMaskIntoConstraints = false
        bruCiuTextureKick.isUserInteractionEnabled = false
        ponllMuralSpark.addSubview(bruCiuTextureKick)

        NSLayoutConstraint.activate([
            ponllMuralSpark.heightAnchor.constraint(equalToConstant: 68),
            aerErstColorPiece.leadingAnchor.constraint(equalTo: ponllMuralSpark.leadingAnchor, constant: 12),
            aerErstColorPiece.centerYAnchor.constraint(equalTo: ponllMuralSpark.centerYAnchor),
            flckinkMarkerPath.leadingAnchor.constraint(equalTo: aerErstColorPiece.trailingAnchor, constant: 12),
            flckinkMarkerPath.centerYAnchor.constraint(equalTo: ponllMuralSpark.centerYAnchor),
            flckinkMarkerPath.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuTextureKick.leadingAnchor, constant: -8),
            bruCiuTextureKick.trailingAnchor.constraint(equalTo: ponllMuralSpark.trailingAnchor, constant: -12),
            bruCiuTextureKick.centerYAnchor.constraint(equalTo: ponllMuralSpark.centerYAnchor),
            bruCiuTextureKick.widthAnchor.constraint(equalToConstant: 82),
            bruCiuTextureKick.heightAnchor.constraint(equalToConstant: 30)
        ])
        return ponllMuralSpark
    }

    @objc private func aerErstLetterTapped() {
        guard ponllChromeTrail != .aerErstBrickTone else { return }
        ponllChromeTrail = .aerErstBrickTone
        bruCiuMuralMotion()
    }

    @objc private func bruCiuShapeTapped() {
        guard ponllChromeTrail != .ponllGritSurface else { return }
        ponllChromeTrail = .ponllGritSurface
        bruCiuMuralMotion()
    }

    @objc private func ponllWallAura() {
        navigationController?.popViewController(animated: true)
    }
}
