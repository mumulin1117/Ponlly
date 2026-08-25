import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyurbanCanvasController: UIViewController {
    private let ponllshutterPiece: BruCiuOutlinePlan
    private let bruCiualleyPiecePlan: PonllPaintPlan

    init(freshPiece ponllRoomDraft: BruCiuOutlinePlan, gritPiece bruCiuThemePlan: PonllPaintPlan) {
        self.ponllshutterPiece = ponllRoomDraft
        self.bruCiualleyPiecePlan = bruCiuThemePlan
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        view.backgroundColor = PonllyPalette.background
        bruCiuBridgePillar()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiuBridgePillar() {
        let aerErstStackPath = UIStackView()
        aerErstStackPath.axis = .vertical
        aerErstStackPath.alignment = .fill
        aerErstStackPath.spacing = 24
        aerErstStackPath.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstStackPath)
        let ponllCheckGlyph = UILabel()
        ponllCheckGlyph.text = "✓"
        ponllCheckGlyph.textColor = PonllyPalette.green
        ponllCheckGlyph.textAlignment = .center
        ponllCheckGlyph.font = PonllyFonts.muralForgepon(neonLab: 48)
        ponllCheckGlyph.layer.cornerRadius = 46
        ponllCheckGlyph.layer.borderWidth = 2
        ponllCheckGlyph.layer.borderColor = PonllyPalette.green.cgColor
        ponllCheckGlyph.clipsToBounds = true
        ponllCheckGlyph.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuCheckWrap = UIView()
        bruCiuCheckWrap.addSubview(ponllCheckGlyph)
        let flckinkSuccessTitle = UILabel()
        flckinkSuccessTitle.text = "Room Created!"
        flckinkSuccessTitle.textColor = .white
        flckinkSuccessTitle.textAlignment = .center
        flckinkSuccessTitle.font = PonllyFonts.muralForgepon(neonLab: 28)
        let aerErstSuccessSubtitle = UILabel()
        aerErstSuccessSubtitle.text = "Your voice room is ready. Invite your crew to jump in and start tags talk."
        aerErstSuccessSubtitle.textColor = PonllyPalette.muted
        aerErstSuccessSubtitle.textAlignment = .center
        aerErstSuccessSubtitle.numberOfLines = 0
        aerErstSuccessSubtitle.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .regular)
        let ponllSummaryPanel = UIView()
        ponllSummaryPanel.backgroundColor = PonllyPalette.panel
        ponllSummaryPanel.layer.cornerRadius = 16
        ponllSummaryPanel.layer.borderWidth = 1
        ponllSummaryPanel.layer.borderColor = PonllyPalette.line.cgColor
        ponllSummaryPanel.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuSummaryLabel = UILabel()
        bruCiuSummaryLabel.text = "Room Name                         \(ponllshutterPiece.flckinkPrimerCoatpon)\nRoom Category                   \(ponllshutterPiece.ponllWhiteEdgepon)\nTheme                                   \(bruCiualleyPiecePlan.bruCiuMagentaBurstpobn)"
        bruCiuSummaryLabel.textColor = .white
        bruCiuSummaryLabel.numberOfLines = 0
        bruCiuSummaryLabel.font = PonllyFonts.steelGate(rollingShutter: 12)
        ponllSummaryPanel.addSubview(bruCiuSummaryLabel)
        bruCiuSummaryLabel.woodPanelPonlly(steelGate: ponllSummaryPanel, bruCiuClearCoat: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        let flckinkEnterButton = PonllyNeonButton("Enter Room")
        flckinkEnterButton.addTarget(self, action: #selector(bruCiuEnterTapped), for: .touchUpInside)
        let aerErstShareButton = UIButton(type: .system)
        aerErstShareButton.setTitle("Share Room", for: .normal)
        aerErstShareButton.setTitleColor(.white, for: .normal)
        aerErstShareButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        aerErstShareButton.layer.cornerRadius = 14
        aerErstShareButton.layer.borderWidth = 1
        aerErstShareButton.layer.borderColor = PonllyPalette.line.cgColor
        aerErstShareButton.translatesAutoresizingMaskIntoConstraints = false
        aerErstShareButton.addTarget(self, action: #selector(ponllShareTapped), for: .touchUpInside)
        [bruCiuCheckWrap, flckinkSuccessTitle, aerErstSuccessSubtitle, ponllSummaryPanel, flckinkEnterButton, aerErstShareButton].forEach(aerErstStackPath.addArrangedSubview)

        NSLayoutConstraint.activate([
            aerErstStackPath.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            aerErstStackPath.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22),
            aerErstStackPath.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            bruCiuCheckWrap.heightAnchor.constraint(equalToConstant: 96),
            ponllCheckGlyph.centerXAnchor.constraint(equalTo: bruCiuCheckWrap.centerXAnchor),
            ponllCheckGlyph.centerYAnchor.constraint(equalTo: bruCiuCheckWrap.centerYAnchor),
            ponllCheckGlyph.widthAnchor.constraint(equalToConstant: 92),
            ponllCheckGlyph.heightAnchor.constraint(equalToConstant: 92),
            ponllSummaryPanel.heightAnchor.constraint(greaterThanOrEqualToConstant: 112),
            flckinkEnterButton.heightAnchor.constraint(equalToConstant: 58),
            aerErstShareButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    @objc private func bruCiuEnterTapped() {
        let flckinkRoom = PonllyaerErstWeatheredPaperm(
            graffitiPulse: "created_\(UUID().uuidString)",
            nozzleCraft: ponllshutterPiece.flckinkPrimerCoatpon,
            chromeShine: .ponllGritSurface,
            colorFade: ponllshutterPiece.bruCiuSilverSheenpon.isEmpty ? "Fresh room for wall critique and street art process talk" : ponllshutterPiece.bruCiuSilverSheenpon,
            gradientFill: PonllyponllTornEdge.currentUserId,
            paintCloud: [.init(wheatpasteLayer: PonllyponllTornEdge.currentUserId, wallMark: false)],
            sprayHalo: ["u02", "u05", "u17"],
            aerosolHaze: bruCiualleyPiecePlan.aerErstTwoToneFill,
            whitePop: bruCiualleyPiecePlan.flckinkSplitFill,
            nozzleMist: [
                .init(wheatpasteLayer: PonllyponllTornEdge.currentUserId, pasteupEcho: "now", muralGrid: "Room is open. Bring a wall note or a process question."),
                .init(wheatpasteLayer: "u02", pasteupEcho: "now", muralGrid: "I am ready to compare outlines and texture choices.")
            ]
        )
        PonllyponllTornEdge.updatebruCiuHardOutline(flckinkRoom)
        flckinkPrimerCoatponlu("Entering room...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            let aerErstImmersive = PwheatpasteLayerController(aerErstConcreteMuse: flckinkRoom)
            aerErstImmersive.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(aerErstImmersive, animated: true)
        }
    }

    @objc private func ponllShareTapped() {
        flckinkPrimerCoatponlu("Room invite ready")
    }
}
