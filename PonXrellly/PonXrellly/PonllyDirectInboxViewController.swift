import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyDirectInboxViewController: UIViewController {
    private let ponllGraffitiPulse = UIStackView()
    private let bruCiuAerosolDream: Bool
    private let flckinkStreetMural = UIButton(type: .system)

    init(keepsTabBarVisible bruCiuAerosolDream: Bool = true) {
        self.bruCiuAerosolDream = bruCiuAerosolDream
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        aerErstWallCraft()
        ponllPaintFlow()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = !bruCiuAerosolDream
        ponllPaintFlow()
    }

    private func aerErstWallCraft() {
        flckinkStreetMural.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkStreetMural.tintColor = .white
        flckinkStreetMural.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkStreetMural.layer.cornerRadius = 22
        flckinkStreetMural.layer.borderWidth = 1
        flckinkStreetMural.layer.borderColor = PonllyPalette.line.cgColor
        flckinkStreetMural.isHidden = bruCiuAerosolDream
        flckinkStreetMural.translatesAutoresizingMaskIntoConstraints = false
        flckinkStreetMural.addTarget(self, action: #selector(bruCiuSprayRhythm), for: .touchUpInside)
        view.addSubview(flckinkStreetMural)

        let flckinkUrbanCanvas = UILabel()
        flckinkUrbanCanvas.text = "Private Messaging"
        flckinkUrbanCanvas.textColor = .white
        flckinkUrbanCanvas.textAlignment = .center
        flckinkUrbanCanvas.font = PonllyFonts.muralForgepon(neonLab: 22)
        flckinkUrbanCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkUrbanCanvas)

        ponllGraffitiPulse.axis = .vertical
        ponllGraffitiPulse.spacing = 14
        ponllGraffitiPulse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllGraffitiPulse)
        NSLayoutConstraint.activate([
            flckinkStreetMural.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            flckinkStreetMural.centerYAnchor.constraint(equalTo: flckinkUrbanCanvas.centerYAnchor),
            flckinkStreetMural.widthAnchor.constraint(equalToConstant: 44),
            flckinkStreetMural.heightAnchor.constraint(equalToConstant: 44),
            flckinkUrbanCanvas.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flckinkUrbanCanvas.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            ponllGraffitiPulse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            ponllGraffitiPulse.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            ponllGraffitiPulse.topAnchor.constraint(equalTo: flckinkUrbanCanvas.bottomAnchor, constant: 28)
        ])
    }

    private func ponllPaintFlow() {
        ponllGraffitiPulse.arrangedSubviews.forEach {
            ponllGraffitiPulse.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let aerErstBrickPalette = PonllyponllTornEdge.visiblebruCiuMarkerNib()
        guard !aerErstBrickPalette.isEmpty else {
            ponllGraffitiPulse.addArrangedSubview(bruCiuInkDrift())
            return
        }
        aerErstBrickPalette.forEach { ponllGraffitiPulse.addArrangedSubview(flckinkMarkerStroke($0)) }
    }

    private func flckinkMarkerStroke(_ ponllNozzleCraft: PonllyMessageThread) -> UIControl {
        let bruCiuCapControl = PonllyponllTornEdge.flckinkChippedPaint(ponllNozzleCraft.wheatpasteLayer)
        let flckinkStencilBloom = UIControl()
        flckinkStencilBloom.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.94)
        flckinkStencilBloom.layer.cornerRadius = 18
        flckinkStencilBloom.layer.borderWidth = 1
        flckinkStencilBloom.layer.borderColor = PonllyPalette.line.cgColor
        flckinkStencilBloom.addAction(UIAction { [weak self] _ in
            guard let self else { return }
            FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
                let aerErstWheatpasteLayer = NckinkSkinnyCapController(bruCiuTextureTrail: bruCiuCapControl, flckinkPaintVeil: ponllNozzleCraft)
                aerErstWheatpasteLayer.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(aerErstWheatpasteLayer, animated: true)
            }
        }, for: .touchUpInside)

        let flckinkPasteupEcho = ErErstPaintLabView(user: bruCiuCapControl, size: 48)
        flckinkPasteupEcho.isUserInteractionEnabled = false
        flckinkPasteupEcho.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(flckinkPasteupEcho)

        let aerErstMuralGrid = UIView()
        aerErstMuralGrid.backgroundColor = PonllyPalette.green
        aerErstMuralGrid.isUserInteractionEnabled = false
        aerErstMuralGrid.layer.cornerRadius = 6
        aerErstMuralGrid.layer.borderWidth = 1
        aerErstMuralGrid.layer.borderColor = PonllyPalette.panel.cgColor
        aerErstMuralGrid.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(aerErstMuralGrid)

        let ponllWildstyleCurve = UILabel()
        ponllWildstyleCurve.text = bruCiuCapControl.aerosolDream.lowercased()
        ponllWildstyleCurve.textColor = .white
        ponllWildstyleCurve.font = PonllyFonts.muralForgepon(neonLab: 13)
        ponllWildstyleCurve.isUserInteractionEnabled = false
        let bruCiuBubbleLetter = UILabel()
        bruCiuBubbleLetter.text = ponllNozzleCraft.chiselNib
        bruCiuBubbleLetter.textColor = ponllNozzleCraft.fatCap > 0 ? .white : PonllyPalette.muted
        bruCiuBubbleLetter.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .regular)
        bruCiuBubbleLetter.lineBreakMode = .byTruncatingTail
        bruCiuBubbleLetter.isUserInteractionEnabled = false
        let flckinkChromeFill = UIStackView(arrangedSubviews: [ponllWildstyleCurve, bruCiuBubbleLetter])
        flckinkChromeFill.axis = .vertical
        flckinkChromeFill.spacing = 6
        flckinkChromeFill.isUserInteractionEnabled = false
        flckinkChromeFill.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(flckinkChromeFill)

        let aerErstOutlineGlow = UILabel()
        aerErstOutlineGlow.text = ponllNozzleCraft.fineLine
        aerErstOutlineGlow.textColor = PonllyPalette.muted
        aerErstOutlineGlow.font = PonllyFonts.steelGate(rollingShutter: 10)
        aerErstOutlineGlow.isUserInteractionEnabled = false
        aerErstOutlineGlow.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilBloom.addSubview(aerErstOutlineGlow)

        NSLayoutConstraint.activate([
            flckinkStencilBloom.heightAnchor.constraint(equalToConstant: 78),
            flckinkPasteupEcho.leadingAnchor.constraint(equalTo: flckinkStencilBloom.leadingAnchor, constant: 14),
            flckinkPasteupEcho.centerYAnchor.constraint(equalTo: flckinkStencilBloom.centerYAnchor),
            flckinkPasteupEcho.widthAnchor.constraint(equalToConstant: 48),
            flckinkPasteupEcho.heightAnchor.constraint(equalToConstant: 48),
            aerErstMuralGrid.trailingAnchor.constraint(equalTo: flckinkPasteupEcho.trailingAnchor, constant: -2),
            aerErstMuralGrid.bottomAnchor.constraint(equalTo: flckinkPasteupEcho.bottomAnchor, constant: -2),
            aerErstMuralGrid.widthAnchor.constraint(equalToConstant: 12),
            aerErstMuralGrid.heightAnchor.constraint(equalToConstant: 12),
            flckinkChromeFill.leadingAnchor.constraint(equalTo: flckinkPasteupEcho.trailingAnchor, constant: 14),
            flckinkChromeFill.centerYAnchor.constraint(equalTo: flckinkStencilBloom.centerYAnchor),
            flckinkChromeFill.trailingAnchor.constraint(equalTo: aerErstOutlineGlow.leadingAnchor, constant: -12),
            aerErstOutlineGlow.trailingAnchor.constraint(equalTo: flckinkStencilBloom.trailingAnchor, constant: -16),
            aerErstOutlineGlow.centerYAnchor.constraint(equalTo: flckinkStencilBloom.centerYAnchor)
        ])
        return flckinkStencilBloom
    }

    private func bruCiuInkDrift() -> UIView {
        let ponllDropShadow = UIStackView()
        ponllDropShadow.axis = .vertical
        ponllDropShadow.alignment = .center
        ponllDropShadow.spacing = 12
        ponllDropShadow.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.86)
        ponllDropShadow.layer.cornerRadius = 20
        ponllDropShadow.layer.borderWidth = 1
        ponllDropShadow.layer.borderColor = PonllyPalette.line.cgColor
        ponllDropShadow.layoutMargins = UIEdgeInsets(top: 44, left: 20, bottom: 44, right: 20)
        ponllDropShadow.isLayoutMarginsRelativeArrangement = true
        let bruCiuPaintMist = UIImageView(image: UIImage(systemName: "bubble.left.and.bubble.right"))
        bruCiuPaintMist.tintColor = PonllyPalette.cyan
        bruCiuPaintMist.widthAnchor.constraint(equalToConstant: 34).isActive = true
        bruCiuPaintMist.heightAnchor.constraint(equalToConstant: 34).isActive = true
        let flckinkColorSplash = UILabel()
        flckinkColorSplash.text = "No Messages"
        flckinkColorSplash.textColor = .white
        flckinkColorSplash.font = PonllyFonts.muralForgepon(neonLab: 18)
        let aerErstNeonDrip = UILabel()
        aerErstNeonDrip.text = "Mutual artist conversations will appear here."
        aerErstNeonDrip.textColor = PonllyPalette.muted
        aerErstNeonDrip.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        aerErstNeonDrip.textAlignment = .center
        aerErstNeonDrip.numberOfLines = 0
        [bruCiuPaintMist, flckinkColorSplash, aerErstNeonDrip].forEach(ponllDropShadow.addArrangedSubview)
        return ponllDropShadow
    }

    @objc private func bruCiuSprayRhythm() {
        navigationController?.popViewController(animated: true)
    }
}
