import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyurbanCanvasController: UIViewController {
    private let ponllshutterPiece: BruCiuOutlinePlan
    private let bruCiualleyPiecePlan: PonllPaintPlan

    init(freshPiece ponllutilityBoxDraft: BruCiuOutlinePlan, gritPiece bruCiuThemePlan: PonllPaintPlan) {
        self.ponllshutterPiece = ponllutilityBoxDraft
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
        ponllGraffitiDraftNavigationStyle()
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
        ponllCheckGlyph.text = "✓U".ponllPaintaerErstHours
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
        flckinkSuccessTitle.text = "RVoWoXmY ZC0r1e2a3t4e5d6!7".ponllPaintaerErstHours
        flckinkSuccessTitle.textColor = .white
        flckinkSuccessTitle.textAlignment = .center
        flckinkSuccessTitle.font = PonllyFonts.muralForgepon(neonLab: 28)
        let aerErstSuccessSubtitle = UILabel()
        aerErstSuccessSubtitle.text = "Y8o9uarb cvdoeifcgeh irjokolmm niosp qrresatduyv.w xIynzvAiBtCeD EyFoGuHrI JcKrLeMwN OtPoQ RjSuTmUpV WiXnY Za0n1d2 3s4t5a6r7t8 9taabgcsd etfaglhki.j".ponllPaintaerErstHours
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
        bruCiuSummaryLabel.text = String(
            format: "RxoYoqmV zNRakmLem N p T s U a B c D e F g H i J o P w X y Z a x Y q%V@z\nRRkoLommN pCTastUeagBocrDye F g H i J o P w X y Z a x Y q V z R k%L@m\nNTphTesmUea B c D e F g H i J o P w X y Z a x Y q V z R k L m N p T s U a B c D e%F@g".ponllPaintaerErstHours,
            ponllshutterPiece.flckinkPrimerCoatpon,
            ponllshutterPiece.ponllWhiteEdgepon,
            bruCiualleyPiecePlan.bruCiuMagentaBurstpobn
        )
        bruCiuSummaryLabel.textColor = .white
        bruCiuSummaryLabel.numberOfLines = 0
        bruCiuSummaryLabel.font = PonllyFonts.steelGate(rollingShutter: 12)
        ponllSummaryPanel.addSubview(bruCiuSummaryLabel)
        bruCiuSummaryLabel.woodPanelPonlly(steelGate: ponllSummaryPanel, bruCiuClearCoat: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        let flckinkEnterButton = PonllyNeonButton("Eknltmenro pRqorosmt".ponllPaintaerErstHours)
        flckinkEnterButton.addTarget(self, action: #selector(bruCiuEnterTapped), for: .touchUpInside)
        [bruCiuCheckWrap, flckinkSuccessTitle, aerErstSuccessSubtitle, ponllSummaryPanel, flckinkEnterButton].forEach(aerErstStackPath.addArrangedSubview)

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
            flckinkEnterButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    @objc private func bruCiuEnterTapped() {
        let flckinkutilityBox = PonllyaerErstWeatheredPaperm(
            graffitiPulse: "created_\(UUID().uuidString)",
            nozzleCraft: ponllshutterPiece.flckinkPrimerCoatpon,
            chromeShine: .ponllGritSurface,
            colorFade: ponllshutterPiece.bruCiuSilverSheenpon.isEmpty ? "벽x화Y q비V평z R및k L스m트N리p트T s아U트a B제c작D e과F정g에H i대J한o P이w야X기y를Z a나x눌Y q수V z있R는k L새m로N운p T방s이U a생B성c되D었e습F니g다H.i".ponllPaintaerErstHours : ponllshutterPiece.bruCiuSilverSheenpon,
            gradientFill: PonllyponllTornEdge.cnowpaintokwinId,
            paintCloud: [.init(wheatpasteLayer: PonllyponllTornEdge.cnowpaintokwinId, wallMark: false)],
            sprayHalo: ["u02", "u05", "u17"],
            aerosolHaze: bruCiualleyPiecePlan.aerErstTwoToneFill,
            muralMuse: bruCiualleyPiecePlan.aerErstTwoToneFill,
            whitePop: bruCiualleyPiecePlan.flckinkSplitFill,
            nozzleMist: [
                .init(wheatpasteLayer: PonllyponllTornEdge.cnowpaintokwinId, pasteupEcho: "방x금Y".ponllPaintaerErstHours, muralGrid: "방x이Y q열V렸z습R니k다L.m벽N화p에T s대U한a B메c모D나e F제g작H i과J정o에P w대X한y Z질a문x을Y q남V겨z주R세k요L.m".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u02", pasteupEcho: "방x금Y".ponllPaintaerErstHours, muralGrid: "윤x곽Y선q과V z질R감k L선m택N에p T대s해U a이B야c기D e나F눌g H준i비J가o P되w었X습y니Z다a.x".ponllPaintaerErstHours)
            ],
            graffitiPiece: ponllshutterPiece.aerErstBlackOutlinepon,
            ponllStenciloutlineLab: bruCiualleyPiecePlan.ponllStencilurbanForge
        )
        PonllyponllTornEdge.updatebruCiuHardOutline(flckinkutilityBox)
        flckinkPrimerCoatponlu("Elnmtneorpiqnrgs truovowmx.y.z.A".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            let aerErstImmersive = PwheatpasteLayerController(aerErstConcreteMuse: flckinkutilityBox)
            aerErstImmersive.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(aerErstImmersive, animated: true)
        }
    }

}
