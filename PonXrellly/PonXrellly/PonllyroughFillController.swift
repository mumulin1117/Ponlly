import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

struct PonllyangleBreakContext {
    let ponllLetterForm: String
    let bruCiuShadowLayer: String?
    let flckinkWallTexture: String?
    let aerErstColorRack: [UIColor]
}

final class PonllyroughFillController: UIViewController, UITextViewDelegate {
    private let ponllMuralPlanContext: PonllyangleBreakContext
    private var bruCiuReasonPath = "HFaGrHaIsJsKmLeMnNtO".ponllPaintaerErstHours
    private var flckinkReasonRows: [PonllytwoToneFillRow] = []
    private let aerErstDetailPanel = UITextView()
    var fadeSpray: (() -> Void)?

    init(lineSpray: PonllyaerErstWeatheredPaperm) {
        let capRack = PonllyponllTornEdge.flckinkChippedPaint(lineSpray.gradientFill)
        self.ponllMuralPlanContext = PonllyangleBreakContext(
            ponllLetterForm: lineSpray.nozzleCraft,
            bruCiuShadowLayer: "Hosted by \(capRack.aerosolDream)",
            flckinkWallTexture: lineSpray.aerosolHaze,
            aerErstColorRack: [lineSpray.whitePop, PonllyPalette.panel]
        )
        super.init(nibName: nil, bundle: nil)
    }

    init(blackOutline: PonllyBattle) {
        self.ponllMuralPlanContext = PonllyangleBreakContext(
            ponllLetterForm: blackOutline.nozzleCraft,
            bruCiuShadowLayer: blackOutline.chromeFill,
            flckinkWallTexture: blackOutline.neonDrip.stencilBloom,
            aerErstColorRack: blackOutline.neonDrip.inkDrift
        )
        super.init(nibName: nil, bundle: nil)
    }

    init(solidMarker: PonllyVideo) {
        let author = PonllyponllTornEdge.flckinkChippedPaint(solidMarker.letterForm)
        self.ponllMuralPlanContext = PonllyangleBreakContext(
            ponllLetterForm: solidMarker.nozzleCraft,
            bruCiuShadowLayer: "By \(author.aerosolDream)",
            flckinkWallTexture: nil,
            aerErstColorRack: solidMarker.inkDrift
        )
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ponllPaintPlansolidFill()
        NotificationCenter.default.addObserver(self, selector: #selector(ponllglossFinishShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiumetallicSprayde(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func ponllPaintPlansolidFill() {
        view.backgroundColor = PonllyPalette.background

        let ponllNightWall = UIImageView(image: ponllMuralPlanContext.flckinkWallTexture.flatMap(UIImage.init(named:)))
        ponllNightWall.contentMode = .scaleAspectFill
        ponllNightWall.alpha = ponllNightWall.image == nil ? 0 : 0.2
        ponllNightWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllNightWall)
        ponllNightWall.woodPanelPonlly(steelGate: view)

        let bruCiuLayerBlend = PonllyponllCyanGlowView(
            bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.2), PonllyPalette.background.withAlphaComponent(0.98)],
            CGPoint(x: 0.5, y: 0),
            CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(bruCiuLayerBlend)
        bruCiuLayerBlend.woodPanelPonlly(steelGate: view)

        let flckinkBackButton = bruCiuRoundButton("chevron.left")
        view.addSubview(flckinkBackButton)
        let aerErstskinnyCap = UILabel()
        aerErstskinnyCap.text = "RPeQpRoSrTtU".ponllPaintaerErstHours
        aerErstskinnyCap.textColor = .white
        aerErstskinnyCap.textAlignment = .center
        aerErstskinnyCap.font = PonllyFonts.muralForgepon(neonLab: 24)
        aerErstskinnyCap.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstskinnyCap)

        let ponllLineMap = UIView()
        ponllLineMap.backgroundColor = PonllyPalette.line
        ponllLineMap.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllLineMap)

        let bruCiuScrollFrame = UIScrollView()
        bruCiuScrollFrame.keyboardDismissMode = .interactive
        bruCiuScrollFrame.alwaysBounceVertical = true
        bruCiuScrollFrame.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuScrollFrame)

        let flckinkStackPath = UIStackView()
        flckinkStackPath.axis = .vertical
        flckinkStackPath.spacing = 16
        flckinkStackPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuScrollFrame.addSubview(flckinkStackPath)

        flckinkStackPath.addArrangedSubview(flckinkContextCard())
        flckinkStackPath.setCustomSpacing(28, after: flckinkStackPath.arrangedSubviews.last!)
        flckinkStackPath.addArrangedSubview(aerErstSectionLabel("SVEWLXEYCZT0 1R2E3A4S5O6N7".ponllPaintaerErstHours))

        ["I8n9aapbpcrdoepfrgihaitjek lCmonnotpeqnrts".ponllPaintaerErstHours, "HtaurvawsxsymzeAnBtC".ponllPaintaerErstHours, "ADdEvFeGrHtIiJsKiLnMgN O/P QSRpSaTmU".ponllPaintaerErstHours, "OVtWhXeYrZ".ponllPaintaerErstHours].forEach { aerErstReasonCue in
            let ponllReasonRow = PonllytwoToneFillRow(fadePiece: aerErstReasonCue)
            ponllReasonRow.ishaloPieceReason = aerErstReasonCue == bruCiuReasonPath
            ponllReasonRow.addTarget(self, action: #selector(bruCiuReasonTapped(_:)), for: .touchUpInside)
            flckinkReasonRows.append(ponllReasonRow)
            flckinkStackPath.addArrangedSubview(ponllReasonRow)
        }

        flckinkStackPath.setCustomSpacing(28, after: flckinkStackPath.arrangedSubviews.last!)
        flckinkStackPath.addArrangedSubview(aerErstSectionLabel("A0D1D2I3T4I5O6N7A8L9 aDbEcTdAeIfLgSh i(jOkPlTmInOoNpAqLr)s".ponllPaintaerErstHours))

        aerErstDetailPanel.text = "DteusvcwrxiybzeA BtChDeE FiGsHsIuJeK.L.M.N".ponllPaintaerErstHours
        aerErstDetailPanel.textColor = PonllyPalette.muted
        aerErstDetailPanel.font = PonllyFonts.utilityBox(blankFacade: 16)
        aerErstDetailPanel.backgroundColor = PonllyPalette.panel
        aerErstDetailPanel.layer.cornerRadius = 16
        aerErstDetailPanel.layer.borderWidth = 1
        aerErstDetailPanel.layer.borderColor = PonllyPalette.line.cgColor
        aerErstDetailPanel.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 16, right: 14)
        aerErstDetailPanel.delegate = self
        aerErstDetailPanel.translatesAutoresizingMaskIntoConstraints = false
        flckinkStackPath.addArrangedSubview(aerErstDetailPanel)

        let bruCiuSubmitButton = PonllyNeonButton("SOuPbQmRiStT URVeWpXoYrZt0".ponllPaintaerErstHours)
        bruCiuSubmitButton.addTarget(self, action: #selector(flckinkSubmitTapped), for: .touchUpInside)
        flckinkStackPath.addArrangedSubview(bruCiuSubmitButton)

        NSLayoutConstraint.activate([
            flckinkBackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            flckinkBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            flckinkBackButton.widthAnchor.constraint(equalToConstant: 56),
            flckinkBackButton.heightAnchor.constraint(equalToConstant: 56),
            aerErstskinnyCap.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            aerErstskinnyCap.centerYAnchor.constraint(equalTo: flckinkBackButton.centerYAnchor),
            ponllLineMap.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ponllLineMap.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ponllLineMap.topAnchor.constraint(equalTo: flckinkBackButton.bottomAnchor, constant: 34),
            ponllLineMap.heightAnchor.constraint(equalToConstant: 1),
            bruCiuScrollFrame.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuScrollFrame.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuScrollFrame.topAnchor.constraint(equalTo: ponllLineMap.bottomAnchor),
            bruCiuScrollFrame.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkStackPath.leadingAnchor.constraint(equalTo: bruCiuScrollFrame.frameLayoutGuide.leadingAnchor, constant: 20),
            flckinkStackPath.trailingAnchor.constraint(equalTo: bruCiuScrollFrame.frameLayoutGuide.trailingAnchor, constant: -20),
            flckinkStackPath.topAnchor.constraint(equalTo: bruCiuScrollFrame.contentLayoutGuide.topAnchor, constant: 26),
            flckinkStackPath.bottomAnchor.constraint(equalTo: bruCiuScrollFrame.contentLayoutGuide.bottomAnchor, constant: -34),
            aerErstDetailPanel.heightAnchor.constraint(equalToConstant: 116),
            bruCiuSubmitButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func bruCiuRoundButton(_ ponllStreetGlyph: String) -> UIButton {
        let flckinkButtonFrame = UIButton(type: .system)
        flckinkButtonFrame.setImage(UIImage(systemName: ponllStreetGlyph), for: .normal)
        flckinkButtonFrame.tintColor = .white
        flckinkButtonFrame.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkButtonFrame.layer.cornerRadius = 28
        flckinkButtonFrame.layer.borderWidth = 1.2
        flckinkButtonFrame.layer.borderColor = PonllyPalette.line.cgColor
        flckinkButtonFrame.translatesAutoresizingMaskIntoConstraints = false
        flckinkButtonFrame.addTarget(self, action: #selector(aerErstBackTapped), for: .touchUpInside)
        return flckinkButtonFrame
    }

    private func flckinkContextCard() -> UIView {
        let aerErstpressureFlow = UIView()
        aerErstpressureFlow.backgroundColor = PonllyPalette.panel
        aerErstpressureFlow.layer.cornerRadius = 20
        aerErstpressureFlow.layer.borderWidth = 1
        aerErstpressureFlow.layer.borderColor = PonllyPalette.line.cgColor
        aerErstpressureFlow.translatesAutoresizingMaskIntoConstraints = false

        let ponlldotSpray = UIView()
        ponlldotSpray.layer.cornerRadius = 28
        ponlldotSpray.clipsToBounds = true
        ponlldotSpray.translatesAutoresizingMaskIntoConstraints = false
        aerErstpressureFlow.addSubview(ponlldotSpray)
        let bruCiuGradientFill = PonllyponllCyanGlowView(bruCiuDripMarker: ponllMuralPlanContext.aerErstColorRack)
        ponlldotSpray.addSubview(bruCiuGradientFill)
        bruCiuGradientFill.woodPanelPonlly(steelGate: ponlldotSpray)
        if let flckinkImageName = ponllMuralPlanContext.flckinkWallTexture, let aerErstImageLayer = UIImage(named: flckinkImageName) {
            let ponllImageFrame = UIImageView(image: aerErstImageLayer)
            ponllImageFrame.contentMode = .scaleAspectFill
            ponllImageFrame.translatesAutoresizingMaskIntoConstraints = false
            ponlldotSpray.addSubview(ponllImageFrame)
            ponllImageFrame.woodPanelPonlly(steelGate: ponlldotSpray)
        }

        let bruCiufadeSpray = UILabel()
        bruCiufadeSpray.text = ponllMuralPlanContext.ponllLetterForm
        bruCiufadeSpray.textColor = .white
        bruCiufadeSpray.font = PonllyFonts.muralForgepon(neonLab: 16)
        bruCiufadeSpray.numberOfLines = 2
        bruCiufadeSpray.translatesAutoresizingMaskIntoConstraints = false
        aerErstpressureFlow.addSubview(bruCiufadeSpray)

        let flckinknozzleSet = UILabel()
        flckinknozzleSet.text = ponllMuralPlanContext.bruCiuShadowLayer
        flckinknozzleSet.textColor = PonllyPalette.muted
        flckinknozzleSet.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        flckinknozzleSet.numberOfLines = 1
        flckinknozzleSet.translatesAutoresizingMaskIntoConstraints = false
        aerErstpressureFlow.addSubview(flckinknozzleSet)

        NSLayoutConstraint.activate([
            aerErstpressureFlow.heightAnchor.constraint(equalToConstant: 92),
            ponlldotSpray.leadingAnchor.constraint(equalTo: aerErstpressureFlow.leadingAnchor, constant: 18),
            ponlldotSpray.centerYAnchor.constraint(equalTo: aerErstpressureFlow.centerYAnchor),
            ponlldotSpray.widthAnchor.constraint(equalToConstant: 56),
            ponlldotSpray.heightAnchor.constraint(equalToConstant: 56),
            bruCiufadeSpray.leadingAnchor.constraint(equalTo: ponlldotSpray.trailingAnchor, constant: 14),
            bruCiufadeSpray.trailingAnchor.constraint(equalTo: aerErstpressureFlow.trailingAnchor, constant: -18),
            bruCiufadeSpray.topAnchor.constraint(equalTo: aerErstpressureFlow.topAnchor, constant: 22),
            flckinknozzleSet.leadingAnchor.constraint(equalTo: bruCiufadeSpray.leadingAnchor),
            flckinknozzleSet.trailingAnchor.constraint(equalTo: bruCiufadeSpray.trailingAnchor),
            flckinknozzleSet.topAnchor.constraint(equalTo: bruCiufadeSpray.bottomAnchor, constant: 6)
        ])
        return aerErstpressureFlow
    }

    private func aerErstSectionLabel(_ ponllLabelText: String) -> UILabel {
        let bruCiuLabelMark = UILabel()
        bruCiuLabelMark.text = ponllLabelText
        bruCiuLabelMark.textColor = PonllyPalette.muted
        bruCiuLabelMark.font = PonllyFonts.muralForgepon(neonLab: 13)
        return bruCiuLabelMark
    }

    private func ponllpaintCanRows() {
        flckinkReasonRows.forEach { $0.ishaloPieceReason = $0.grimePiece == bruCiuReasonPath }
    }

    @objc private func bruCiuReasonTapped(_ ponllReasonSender: PonllytwoToneFillRow) {
        bruCiuReasonPath = ponllReasonSender.grimePiece
        ponllpaintCanRows()
    }

    @objc private func flckinkSubmitTapped() {
        aerErstDetailPanel.resignFirstResponder()
        aerErstSketchRush("S1u2b3m4i5t6t7i8n9ga brcedpeofrgth.i.j.k".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.8)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.85) {
            self.dismiss(animated: true) {
                self.fadeSpray?()
            }
        }
    }

    @objc private func aerErstBackTapped() {
        dismiss(animated: true)
    }

    func textViewDidBeginEditing(_ ponllInkMarkerView: UITextView) {
        if ponllInkMarkerView.text == "Dlemsncorpiqbres ttuhvew xiyszsAuBeC.D.E.F".ponllPaintaerErstHours {
            ponllInkMarkerView.text = ""
            ponllInkMarkerView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ bruCiuInkMarkerView: UITextView) {
        if bruCiuInkMarkerView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            bruCiuInkMarkerView.text = "DGeHsIcJrKiLbMeN OtPhQeR SiTsUsVuWeX.Y.Z.0".ponllPaintaerErstHours
            bruCiuInkMarkerView.textColor = PonllyPalette.muted
        }
    }

    @objc private func ponllglossFinishShow(_ flckinkKeyboardNote: Notification) {
        guard let aerErstKeyboardFrame = flckinkKeyboardNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
              let ponllScrollFrame = view.subviews.compactMap({ $0 as? UIScrollView }).first else { return }
        ponllScrollFrame.contentInset.bottom = aerErstKeyboardFrame.height
        ponllScrollFrame.verticalScrollIndicatorInsets.bottom = aerErstKeyboardFrame.height
    }

    @objc private func bruCiumetallicSprayde(_ flckinkKeyboardNote: Notification) {
        guard let aerErstScrollFrame = view.subviews.compactMap({ $0 as? UIScrollView }).first else { return }
        aerErstScrollFrame.contentInset.bottom = 0
        aerErstScrollFrame.verticalScrollIndicatorInsets.bottom = 0
    }
}
