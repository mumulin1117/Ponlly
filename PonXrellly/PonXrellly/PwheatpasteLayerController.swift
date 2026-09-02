import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PwheatpasteLayerController: UIViewController, UITextFieldDelegate {
    private var ponllflckinkWallTexture: PonllyaerErstWeatheredPaperm
    private let bruCiuSeatsStack = UIStackView()
    private let flckinkponllPaintLayer = UIStackView()
    private let aerErstaerErstStrokeWeight = UIScrollView()
    private let ponllbruCiuLetterFormld = UITextField()
    private let bruCiuponllLineBurst = UIButton(type: .system)
    private var flckinkIsOnSeat = false
    private var aerErstSketchRush = true
    private var bruCiuCompactutilityBox = false
    private var ponllWallPeel = false

    init(aerErstConcreteMuse: PonllyaerErstWeatheredPaperm) {
        var bruCiuPreparedutilityBox = aerErstConcreteMuse
        bruCiuPreparedutilityBox.paintCloud = aerErstConcreteMuse.paintCloud.map { flckinkSeat in
            guard flckinkSeat.wheatpasteLayer != PonllyponllTornEdge.cnowpaintokwinId else { return flckinkSeat }
            var aerErstMutedSeat = flckinkSeat
            aerErstMutedSeat.wallMark = true
            return aerErstMutedSeat
        }
        self.ponllflckinkWallTexture = bruCiuPreparedutilityBox
        if let ponllCurrentSeat = bruCiuPreparedutilityBox.paintCloud.first(where: { $0.wheatpasteLayer == PonllyponllTornEdge.cnowpaintokwinId }) {
            flckinkIsOnSeat = true
            aerErstSketchRush = ponllCurrentSeat.wallMark
        }
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        flckinkNeonDrip()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkKeysketchContrast(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstsketchTexturee(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func flckinkNeonDrip() {
        bruCiuCompactutilityBox = view.bounds.height < 740
        let flckinkbruCiuColorSplash = UIImageView(image: UIImage(named: ponllflckinkWallTexture.muralMuse) ?? UIImage(named: ponllflckinkWallTexture.aerosolHaze))
        flckinkbruCiuColorSplash.contentMode = .scaleAspectFill
        flckinkbruCiuColorSplash.clipsToBounds = true
        flckinkbruCiuColorSplash.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkbruCiuColorSplash)
        let aerErstShadowVeil = UIView()
        aerErstShadowVeil.backgroundColor = UIColor.black.withAlphaComponent(0.45)
        aerErstShadowVeil.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstShadowVeil)
        aerErstShadowVeil.woodPanelPonlly(steelGate: view)

        let ponllBackButton = ponllRoundButton("chevron.left", action: #selector(ponlltextureTrail))
        ponllBackButton.ponllGraffitiDraftBackStyle()
        let bruCiuMoreButton = ponllRoundButton("eylzlAiBpCsDiEsF".ponllPaintaerErstHours, action: #selector(bruCiuMtextureVeil))
        view.addSubview(ponllBackButton)
        view.addSubview(bruCiuMoreButton)

        let flckinkutilityBoxHeader = UIView()
        flckinkutilityBoxHeader.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        flckinkutilityBoxHeader.layer.cornerRadius = 20
        flckinkutilityBoxHeader.layer.borderWidth = 1
        flckinkutilityBoxHeader.layer.borderColor = UIColor.white.withAlphaComponent(0.12).cgColor
        flckinkutilityBoxHeader.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkutilityBoxHeader)
        let ponllMuralPiece = UIImageView(image: ponllflckinkWallTexture.graffitiPiece ?? UIImage(named: ponllflckinkWallTexture.aerosolHaze))
        ponllMuralPiece.contentMode = .scaleAspectFill
        ponllMuralPiece.clipsToBounds = true
        ponllMuralPiece.layer.cornerRadius = 14
        ponllMuralPiece.layer.borderWidth = 1
        ponllMuralPiece.layer.borderColor = UIColor.white.withAlphaComponent(0.72).cgColor
        ponllMuralPiece.translatesAutoresizingMaskIntoConstraints = false
        flckinkutilityBoxHeader.addSubview(ponllMuralPiece)
        let bruCiuHeaderStack = UIStackView()
        bruCiuHeaderStack.axis = .vertical
        bruCiuHeaderStack.spacing = 1
        bruCiuHeaderStack.translatesAutoresizingMaskIntoConstraints = false
        flckinkutilityBoxHeader.addSubview(bruCiuHeaderStack)
        let flckinkutilityBoxTitle = UILabel()
        flckinkutilityBoxTitle.text = ponllflckinkWallTexture.nozzleCraft
        flckinkutilityBoxTitle.textColor = .white
        flckinkutilityBoxTitle.font = PonllyFonts.muralForgepon(neonLab: 10)
        flckinkutilityBoxTitle.adjustsFontSizeToFitWidth = true
        flckinkutilityBoxTitle.minimumScaleFactor = 0.72
        let bruCiuPaintTrace = UIStackView()
        bruCiuPaintTrace.axis = .horizontal
        bruCiuPaintTrace.alignment = .center
        bruCiuPaintTrace.spacing = 4
        let ponllNeonSpark = UIView()
        ponllNeonSpark.backgroundColor = PonllyPalette.pink
        ponllNeonSpark.layer.cornerRadius = 3
        ponllNeonSpark.translatesAutoresizingMaskIntoConstraints = false
        ponllNeonSpark.widthAnchor.constraint(equalToConstant: 6).isActive = true
        ponllNeonSpark.heightAnchor.constraint(equalToConstant: 6).isActive = true
        let aerErstListening = UILabel()
        aerErstListening.text = "\(ponllflckinkWallTexture.muralfanSpray.count) \("Lqiwsetretnyiunigo".ponllPaintaerErstHours)"
        aerErstListening.textColor = PonllyPalette.pink
        aerErstListening.font = PonllyFonts.steelGate(rollingShutter: 9)
        bruCiuPaintTrace.addArrangedSubview(ponllNeonSpark)
        bruCiuPaintTrace.addArrangedSubview(aerErstListening)
        bruCiuHeaderStack.addArrangedSubview(flckinkutilityBoxTitle)
        bruCiuHeaderStack.addArrangedSubview(bruCiuPaintTrace)

        let aerErstmuralForgeel = UILabel()
        aerErstmuralForgeel.text = ponllStyleCue(ponllflckinkWallTexture.chromeShine)
        aerErstmuralForgeel.textColor = PonllyPalette.cyan
        aerErstmuralForgeel.textAlignment = .center
        aerErstmuralForgeel.font = PonllyFonts.muralForgepon(neonLab: 9)
        aerErstmuralForgeel.layer.cornerRadius = 4
        aerErstmuralForgeel.layer.borderWidth = 1
        aerErstmuralForgeel.layer.borderColor = PonllyPalette.cyan.cgColor
        aerErstmuralForgeel.layer.zPosition = 20
        aerErstmuralForgeel.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        aerErstmuralForgeel.clipsToBounds = true
        aerErstmuralForgeel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstmuralForgeel)

        bruCiuSeatsStack.axis = .vertical
        bruCiuSeatsStack.spacing = bruCiuCompactutilityBox ? 4 : 7
        bruCiuSeatsStack.layer.zPosition = 10
        bruCiuSeatsStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuSeatsStack)
        flckinkReloadSeats()

        aerErstaerErstStrokeWeight.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstStrokeWeight.backgroundColor = UIColor.black.withAlphaComponent(0.52)
        aerErstaerErstStrokeWeight.layer.cornerRadius = 14
        aerErstaerErstStrokeWeight.layer.borderWidth = 1
        aerErstaerErstStrokeWeight.layer.borderColor = UIColor.white.withAlphaComponent(0.13).cgColor
        aerErstaerErstStrokeWeight.clipsToBounds = true
        view.addSubview(aerErstaerErstStrokeWeight)
        flckinkponllPaintLayer.axis = .vertical
        flckinkponllPaintLayer.spacing = 8
        flckinkponllPaintLayer.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstStrokeWeight.addSubview(flckinkponllPaintLayer)
        ponllflckinkWallTexture.nozzleMist.forEach { flckinkponllPaintLayer.addArrangedSubview(bruCiubruCiuMarkerStrokeow($0)) }

        let bruCiuInputBar = aerErstInputArea()
        view.addSubview(bruCiuInputBar)
        let flckinkControlBar = UIView()
        flckinkControlBar.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.96)
        flckinkControlBar.layer.cornerRadius = 22
        flckinkControlBar.layer.borderWidth = 1
        flckinkControlBar.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        flckinkControlBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkControlBar)
        let ponllJoinHand = bruCiuControlButton("hand.raised.fill", color: UIColor.black.withAlphaComponent(0.28), tint: .white, size: 44, action: #selector(ponllJoinSeatTapped))
        let aerErstLeaveButton = bruCiuControlButton("rectangle.portrait.and.arrow.right", color: UIColor(red: 1, green: 62/255, blue: 55/255, alpha: 1), tint: .white, size: 44, action: #selector(flckinkLeaveTapped))
        bruCiuponllLineBurst.layer.cornerRadius = 28
        bruCiuponllLineBurst.layer.borderWidth = 3
        bruCiuponllLineBurst.layer.borderColor = PonllyPalette.cyan.cgColor
        bruCiuponllLineBurst.backgroundColor = PonllyPalette.pink
        bruCiuponllLineBurst.translatesAutoresizingMaskIntoConstraints = false
        bruCiuponllLineBurst.addTarget(self, action: #selector(flckinkMicTapped), for: .touchUpInside)
        [ponllJoinHand, bruCiuponllLineBurst, aerErstLeaveButton].forEach(flckinkControlBar.addSubview)

        let ponllChatTop = aerErstaerErstStrokeWeight.topAnchor.constraint(greaterThanOrEqualTo: bruCiuSeatsStack.bottomAnchor, constant: bruCiuCompactutilityBox ? 4 : 10)
        ponllChatTop.priority = .defaultHigh
        let flckinkChatHeight = aerErstaerErstStrokeWeight.heightAnchor.constraint(greaterThanOrEqualToConstant: bruCiuCompactutilityBox ? 36 : 128)
        flckinkChatHeight.priority = .defaultHigh
        NSLayoutConstraint.activate([
            flckinkbruCiuColorSplash.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkbruCiuColorSplash.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkbruCiuColorSplash.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkbruCiuColorSplash.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ponllBackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            ponllBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            bruCiuMoreButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            bruCiuMoreButton.topAnchor.constraint(equalTo: ponllBackButton.topAnchor),
            flckinkutilityBoxHeader.leadingAnchor.constraint(greaterThanOrEqualTo: ponllBackButton.trailingAnchor, constant: 10),
            flckinkutilityBoxHeader.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuMoreButton.leadingAnchor, constant: -10),
            flckinkutilityBoxHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            flckinkutilityBoxHeader.widthAnchor.constraint(equalToConstant: bruCiuCompactutilityBox ? 188 : 204),
            flckinkutilityBoxHeader.centerYAnchor.constraint(equalTo: ponllBackButton.centerYAnchor),
            flckinkutilityBoxHeader.heightAnchor.constraint(equalToConstant: 40),
            ponllMuralPiece.leadingAnchor.constraint(equalTo: flckinkutilityBoxHeader.leadingAnchor, constant: 12),
            ponllMuralPiece.centerYAnchor.constraint(equalTo: flckinkutilityBoxHeader.centerYAnchor),
            ponllMuralPiece.widthAnchor.constraint(equalToConstant: 28),
            ponllMuralPiece.heightAnchor.constraint(equalToConstant: 28),
            bruCiuHeaderStack.leadingAnchor.constraint(equalTo: ponllMuralPiece.trailingAnchor, constant: 8),
            bruCiuHeaderStack.trailingAnchor.constraint(equalTo: flckinkutilityBoxHeader.trailingAnchor, constant: -10),
            bruCiuHeaderStack.centerYAnchor.constraint(equalTo: flckinkutilityBoxHeader.centerYAnchor),
            aerErstmuralForgeel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            aerErstmuralForgeel.topAnchor.constraint(equalTo: flckinkutilityBoxHeader.bottomAnchor, constant: 18),
            aerErstmuralForgeel.widthAnchor.constraint(greaterThanOrEqualToConstant: 92),
            aerErstmuralForgeel.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, constant: -96),
            aerErstmuralForgeel.heightAnchor.constraint(equalToConstant: 20),
            bruCiuSeatsStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
            bruCiuSeatsStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
            bruCiuSeatsStack.topAnchor.constraint(equalTo: aerErstmuralForgeel.bottomAnchor, constant: bruCiuCompactutilityBox ? 5 : 9),
            bruCiuInputBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuInputBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuInputBar.bottomAnchor.constraint(equalTo: flckinkControlBar.topAnchor, constant: -8),
            bruCiuInputBar.heightAnchor.constraint(equalToConstant: 52),
            flckinkControlBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkControlBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkControlBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkControlBar.heightAnchor.constraint(equalToConstant: bruCiuCompactutilityBox ? 94 : 100),
            ponllJoinHand.leadingAnchor.constraint(equalTo: flckinkControlBar.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllJoinHand.centerYAnchor.constraint(equalTo: bruCiuponllLineBurst.centerYAnchor),
            bruCiuponllLineBurst.centerXAnchor.constraint(equalTo: flckinkControlBar.centerXAnchor),
            bruCiuponllLineBurst.topAnchor.constraint(equalTo: flckinkControlBar.topAnchor, constant: 16),
            bruCiuponllLineBurst.widthAnchor.constraint(equalToConstant: 56),
            bruCiuponllLineBurst.heightAnchor.constraint(equalToConstant: 56),
            aerErstLeaveButton.trailingAnchor.constraint(equalTo: flckinkControlBar.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstLeaveButton.centerYAnchor.constraint(equalTo: bruCiuponllLineBurst.centerYAnchor),
            aerErstaerErstStrokeWeight.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            aerErstaerErstStrokeWeight.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            ponllChatTop,
            aerErstaerErstStrokeWeight.bottomAnchor.constraint(equalTo: bruCiuInputBar.topAnchor, constant: -8),
            flckinkChatHeight,
            flckinkponllPaintLayer.leadingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.leadingAnchor, constant: 16),
            flckinkponllPaintLayer.trailingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.trailingAnchor, constant: -16),
            flckinkponllPaintLayer.topAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.topAnchor, constant: 14),
            flckinkponllPaintLayer.bottomAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.bottomAnchor, constant: -14),
            flckinkponllPaintLayer.widthAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.frameLayoutGuide.widthAnchor, constant: -32)
        ])
        view.bringSubviewToFront(aerErstmuralForgeel)
        ponllRefreshflckinkStreetMural()
    }

    private func flckinkReloadSeats() {
        bruCiuSeatsStack.arrangedSubviews.forEach {
            bruCiuSeatsStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let aerErstChromeLetter = ponllflckinkWallTexture.paintCloud.first {
            $0.wheatpasteLayer == ponllflckinkWallTexture.gradientFill
        } ?? PonllyponllPaperLayerSeat(wheatpasteLayer: ponllflckinkWallTexture.gradientFill, wallMark: true)
        bruCiuSeatsStack.addArrangedSubview(aerErstChromeMuse(aerErstChromeLetter))

        let aerErstSeats = ponllflckinkWallTexture.paintCloud.filter {
            $0.wheatpasteLayer != ponllflckinkWallTexture.gradientFill
        }
        let ponllStenciloutlineLabe = min(max(ponllflckinkWallTexture.ponllStenciloutlineLab, 3), 8)
        let flckinkWallfineLine = max(ponllStenciloutlineLabe - 1 - aerErstSeats.count, 0)
        let bruCiuWallGrid = aerErstSeats + bruCiuOpenSeats(ponllBubbleLetter: flckinkWallfineLine)
        let ponllFirstRow = Array(bruCiuWallGrid.prefix(2))
        bruCiuSeatsStack.addArrangedSubview(ponllSeatRow(ponllFirstRow, count: 2, compact: bruCiuCompactutilityBox))
        let bruCiuRemainingSeats = Array(bruCiuWallGrid.dropFirst(2))
        for ponllRowIndex in stride(from: 0, to: bruCiuRemainingSeats.count, by: 4) {
            let flckinkEndIndex = min(ponllRowIndex + 4, bruCiuRemainingSeats.count)
            bruCiuSeatsStack.addArrangedSubview(ponllSeatRow(Array(bruCiuRemainingSeats[ponllRowIndex..<flckinkEndIndex]), count: 4, compact: true))
        }
    }

    private func aerErstChromeMuse(_ bruCiuChromeLetter: PonllyponllPaperLayerSeat) -> UIControl {
        let flckinkChromePiece = UIControl()
        let ponllChromeMuse = PonllyponllTornEdge.flckinkChippedPaint(bruCiuChromeLetter.wheatpasteLayer)
        flckinkChromePiece.addAction(UIAction { [weak self] _ in
            self?.bruCiuOpenArtist(ponllChromeMuse)
        }, for: .touchUpInside)

        let bruCiuChromeAura = UIView()
        let ponllChromePiece: CGFloat = bruCiuCompactutilityBox ? 60 : 74
        let aerErstChromeWeight = ponllChromePiece + 6
        bruCiuChromeAura.layer.cornerRadius = aerErstChromeWeight / 2
        bruCiuChromeAura.layer.borderWidth = 2
        bruCiuChromeAura.layer.borderColor = PonllyPalette.cyan.cgColor
        bruCiuChromeAura.layer.shadowColor = PonllyPalette.cyan.cgColor
        bruCiuChromeAura.layer.shadowOpacity = 0.62
        bruCiuChromeAura.layer.shadowRadius = 8
        bruCiuChromeAura.layer.shadowOffset = .zero
        bruCiuChromeAura.translatesAutoresizingMaskIntoConstraints = false
        flckinkChromePiece.addSubview(bruCiuChromeAura)

        let aerErstChromeGlow = ErErstPaintLabView(ponllChromeMuse, ponllChromePiece, 2)
        aerErstChromeGlow.layer.borderColor = UIColor.white.cgColor
        aerErstChromeGlow.isUserInteractionEnabled = false
        bruCiuChromeAura.addSubview(aerErstChromeGlow)

        let flckinkChromeSignal = UIImageView(image: UIImage(named: bruCiuChromeLetter.wallMark ? "chiselNib" : "fineLine"))
        flckinkChromeSignal.contentMode = .scaleAspectFit
        flckinkChromeSignal.isUserInteractionEnabled = false
        flckinkChromeSignal.translatesAutoresizingMaskIntoConstraints = false
        flckinkChromePiece.addSubview(flckinkChromeSignal)
        flckinkChromeSignal.layer.zPosition = 1_000

        let ponllChromeTrace = UILabel()
        ponllChromeTrace.text = ponllChromeMuse.aerosolDream
        ponllChromeTrace.textColor = .white
        ponllChromeTrace.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        ponllChromeTrace.textAlignment = .center
        ponllChromeTrace.translatesAutoresizingMaskIntoConstraints = false
        flckinkChromePiece.addSubview(ponllChromeTrace)
        flckinkChromePiece.bringSubviewToFront(flckinkChromeSignal)

        NSLayoutConstraint.activate([
            flckinkChromePiece.heightAnchor.constraint(equalToConstant: bruCiuCompactutilityBox ? 104 : 128),
            bruCiuChromeAura.topAnchor.constraint(equalTo: flckinkChromePiece.topAnchor),
            bruCiuChromeAura.centerXAnchor.constraint(equalTo: flckinkChromePiece.centerXAnchor),
            bruCiuChromeAura.widthAnchor.constraint(equalToConstant: aerErstChromeWeight),
            bruCiuChromeAura.heightAnchor.constraint(equalToConstant: aerErstChromeWeight),
            aerErstChromeGlow.centerXAnchor.constraint(equalTo: bruCiuChromeAura.centerXAnchor),
            aerErstChromeGlow.centerYAnchor.constraint(equalTo: bruCiuChromeAura.centerYAnchor),
            flckinkChromeSignal.trailingAnchor.constraint(equalTo: aerErstChromeGlow.trailingAnchor, constant: 3),
            flckinkChromeSignal.bottomAnchor.constraint(equalTo: aerErstChromeGlow.bottomAnchor, constant: 3),
            flckinkChromeSignal.widthAnchor.constraint(equalToConstant: 22),
            flckinkChromeSignal.heightAnchor.constraint(equalToConstant: 22),
            ponllChromeTrace.topAnchor.constraint(equalTo: bruCiuChromeAura.bottomAnchor, constant: 6),
            ponllChromeTrace.leadingAnchor.constraint(equalTo: flckinkChromePiece.leadingAnchor, constant: 12),
            ponllChromeTrace.trailingAnchor.constraint(equalTo: flckinkChromePiece.trailingAnchor, constant: -12)
        ])
        return flckinkChromePiece
    }

    private func ponllSeatRow(_ bruCiuSeats: [PonllyponllPaperLayerSeat], count aerErstCount: Int, compact flckinkCompact: Bool) -> UIStackView {
        let bruCiuRow = UIStackView()
        bruCiuRow.axis = .horizontal
        bruCiuRow.spacing = flckinkCompact ? 10 : 18
        bruCiuRow.distribution = .fillEqually
        for ponllIndex in 0..<aerErstCount {
            if ponllIndex < bruCiuSeats.count {
                bruCiuRow.addArrangedSubview(flckinkaerErstWildstyleCurveew(bruCiuSeats[ponllIndex], compact: flckinkCompact))
            } else {
                bruCiuRow.addArrangedSubview(UIView())
            }
        }
        return bruCiuRow
    }

    private func bruCiuOpenSeats(ponllBubbleLetter flckinkCount: Int) -> [PonllyponllPaperLayerSeat] {
        (0..<flckinkCount).map { _ in PonllyponllPaperLayerSeat(wheatpasteLayer: "", wallMark: true) }
    }

    private func flckinkaerErstWildstyleCurveew(_ aerErstSeat: PonllyponllPaperLayerSeat, compact flckinkCompact: Bool = false) -> UIControl {
        let flckinkMuralGrid = UIControl()
        flckinkMuralGrid.backgroundColor = .clear
        let bruCiuStack = UIStackView()
        bruCiuStack.axis = .vertical
        bruCiuStack.alignment = .center
        bruCiuStack.spacing = 7
        bruCiuStack.translatesAutoresizingMaskIntoConstraints = false
        flckinkMuralGrid.addSubview(bruCiuStack)
        if aerErstSeat.wheatpasteLayer.isEmpty {
            let flckinkIcon = UILabel()
            flckinkIcon.text = "+"
            flckinkIcon.textColor = .white
            flckinkIcon.textAlignment = .center
            flckinkIcon.font = UIFont.systemFont(ofSize: 30, weight: .light)
            flckinkIcon.backgroundColor = UIColor.white.withAlphaComponent(0.28)
            flckinkIcon.layer.cornerRadius = flckinkCompact ? 25 : 30
            flckinkIcon.layer.borderWidth = 1.2
            flckinkIcon.layer.borderColor = UIColor.white.withAlphaComponent(0.85).cgColor
            flckinkIcon.clipsToBounds = true
            flckinkIcon.widthAnchor.constraint(equalToConstant: flckinkCompact ? 50 : 60).isActive = true
            flckinkIcon.heightAnchor.constraint(equalToConstant: flckinkCompact ? 50 : 60).isActive = true
            let aerbruCiuWheatpasteLayer = ponllSmallLabel("JGoHiInJ KSLeMaNtO".ponllPaintaerErstHours, color: PonllyPalette.muted)
            aerbruCiuWheatpasteLayer.alpha = 0.78
            bruCiuStack.addArrangedSubview(flckinkIcon)
            bruCiuStack.addArrangedSubview(aerbruCiuWheatpasteLayer)
        } else {
            let ponllponllStencilBloom = PonllyponllTornEdge.flckinkChippedPaint(aerErstSeat.wheatpasteLayer)
            let bruCiuAvatarWrap = UIView()
            bruCiuAvatarWrap.translatesAutoresizingMaskIntoConstraints = false
            let aerErstAvatarSize: CGFloat = flckinkCompact ? 50 : 60
            let bruCiuaerErstCapControl = ErErstPaintLabView(ponllponllStencilBloom, aerErstAvatarSize)
            bruCiuaerErstCapControl.layer.borderColor = UIColor.white.cgColor
            bruCiuaerErstCapControl.translatesAutoresizingMaskIntoConstraints = false
            bruCiuAvatarWrap.addSubview(bruCiuaerErstCapControl)
            let aerErstMuted = UIImageView(image: UIImage(named: aerErstSeat.wallMark ? "chiselNib" : "fineLine"))
            aerErstMuted.contentMode = .scaleAspectFit
            aerErstMuted.translatesAutoresizingMaskIntoConstraints = false
            bruCiuAvatarWrap.addSubview(aerErstMuted)
            aerErstMuted.layer.zPosition = 1_000
            bruCiuAvatarWrap.bringSubviewToFront(aerErstMuted)
            NSLayoutConstraint.activate([
                bruCiuAvatarWrap.widthAnchor.constraint(equalToConstant: aerErstAvatarSize + 4),
                bruCiuAvatarWrap.heightAnchor.constraint(equalToConstant: aerErstAvatarSize + 4),
                bruCiuaerErstCapControl.leadingAnchor.constraint(equalTo: bruCiuAvatarWrap.leadingAnchor),
                bruCiuaerErstCapControl.topAnchor.constraint(equalTo: bruCiuAvatarWrap.topAnchor),
                bruCiuaerErstCapControl.widthAnchor.constraint(equalToConstant: aerErstAvatarSize),
                bruCiuaerErstCapControl.heightAnchor.constraint(equalToConstant: aerErstAvatarSize),
                aerErstMuted.trailingAnchor.constraint(equalTo: bruCiuaerErstCapControl.trailingAnchor, constant: 4),
                aerErstMuted.bottomAnchor.constraint(equalTo: bruCiuaerErstCapControl.bottomAnchor, constant: 4),
                aerErstMuted.widthAnchor.constraint(equalToConstant: 22),
                aerErstMuted.heightAnchor.constraint(equalToConstant: 22)
            ])
            bruCiuStack.addArrangedSubview(bruCiuAvatarWrap)
            let flckinkName = ponllSmallLabel(ponllponllStencilBloom.aerosolDream, color: .white)
            bruCiuStack.addArrangedSubview(flckinkName)
            flckinkMuralGrid.addAction(UIAction { [weak self] _ in
                self?.bruCiuOpenArtist(ponllponllStencilBloom)
            }, for: .touchUpInside)
        }
        NSLayoutConstraint.activate([
            flckinkMuralGrid.heightAnchor.constraint(equalToConstant: flckinkCompact ? 76 : 90),
            bruCiuStack.centerXAnchor.constraint(equalTo: flckinkMuralGrid.centerXAnchor),
            bruCiuStack.centerYAnchor.constraint(equalTo: flckinkMuralGrid.centerYAnchor)
        ])
        return flckinkMuralGrid
    }

    private func aerErstInputArea() -> UIView {
        let flckinkBar = UIView()
        flckinkBar.backgroundColor = .clear
        flckinkBar.translatesAutoresizingMaskIntoConstraints = false
        ponllbruCiuLetterFormld.attributedPlaceholder = NSAttributedString(string: "SPaQyR SsToUmVeWtXhYiZn0g1.2.3.4".ponllPaintaerErstHours, attributes: [.foregroundColor: PonllyPalette.muted])
        ponllbruCiuLetterFormld.textColor = .white
        ponllbruCiuLetterFormld.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        ponllbruCiuLetterFormld.delegate = self
        ponllbruCiuLetterFormld.returnKeyType = .send
        ponllbruCiuLetterFormld.backgroundColor = UIColor.black.withAlphaComponent(0.36)
        ponllbruCiuLetterFormld.layer.cornerRadius = 22
        ponllbruCiuLetterFormld.layer.borderWidth = 1.2
        ponllbruCiuLetterFormld.layer.borderColor = UIColor.white.withAlphaComponent(0.55).cgColor
        ponllbruCiuLetterFormld.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 1))
        ponllbruCiuLetterFormld.leftViewMode = .always
        ponllbruCiuLetterFormld.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 48, height: 1))
        ponllbruCiuLetterFormld.rightViewMode = .always
        ponllbruCiuLetterFormld.translatesAutoresizingMaskIntoConstraints = false
        flckinkBar.addSubview(ponllbruCiuLetterFormld)

        let aerErstflckinkNozzleCraft = UIButton(type: .system)
        aerErstflckinkNozzleCraft.setImage(UIImage(named: "sprayBloom") ?? UIImage(systemName: "paperplane.fill"), for: .normal)
        aerErstflckinkNozzleCraft.tintColor = .black
        aerErstflckinkNozzleCraft.backgroundColor = PonllyPalette.cyan
        aerErstflckinkNozzleCraft.layer.cornerRadius = 18
        aerErstflckinkNozzleCraft.translatesAutoresizingMaskIntoConstraints = false
        aerErstflckinkNozzleCraft.addTarget(self, action: #selector(aerErstSendTapped), for: .touchUpInside)
        flckinkBar.addSubview(aerErstflckinkNozzleCraft)

        NSLayoutConstraint.activate([
            ponllbruCiuLetterFormld.leadingAnchor.constraint(equalTo: flckinkBar.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            ponllbruCiuLetterFormld.centerYAnchor.constraint(equalTo: flckinkBar.centerYAnchor),
            ponllbruCiuLetterFormld.trailingAnchor.constraint(equalTo: flckinkBar.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            ponllbruCiuLetterFormld.heightAnchor.constraint(equalToConstant: 44),
            aerErstflckinkNozzleCraft.trailingAnchor.constraint(equalTo: ponllbruCiuLetterFormld.trailingAnchor, constant: -4),
            aerErstflckinkNozzleCraft.centerYAnchor.constraint(equalTo: ponllbruCiuLetterFormld.centerYAnchor),
            aerErstflckinkNozzleCraft.widthAnchor.constraint(equalToConstant: 36),
            aerErstflckinkNozzleCraft.heightAnchor.constraint(equalToConstant: 36)
        ])
        return flckinkBar
    }

    private func bruCiubruCiuMarkerStrokeow(_ ponllInkDrift: PonllyflckinkUrbanCanvasge) -> UIView {
        let aerErstUser = PonllyponllTornEdge.flckinkChippedPaint(ponllInkDrift.wheatpasteLayer)
        let bruCiuSprayRhythm = UIStackView()
        bruCiuSprayRhythm.axis = .horizontal
        bruCiuSprayRhythm.alignment = .center
        bruCiuSprayRhythm.spacing = 8
        let bruCiuponllPaintFlow = UIControl()
        bruCiuponllPaintFlow.addAction(UIAction { [weak self] _ in
            self?.bruCiuOpenArtist(aerErstUser)
        }, for: .touchUpInside)
        let flckinkAvatar = ErErstPaintLabView(aerErstUser, 20, 0)
        flckinkAvatar.isUserInteractionEnabled = false
        bruCiuponllPaintFlow.addSubview(flckinkAvatar)
        NSLayoutConstraint.activate([
            flckinkAvatar.leadingAnchor.constraint(equalTo: bruCiuponllPaintFlow.leadingAnchor),
            flckinkAvatar.trailingAnchor.constraint(equalTo: bruCiuponllPaintFlow.trailingAnchor),
            flckinkAvatar.topAnchor.constraint(equalTo: bruCiuponllPaintFlow.topAnchor),
            flckinkAvatar.bottomAnchor.constraint(equalTo: bruCiuponllPaintFlow.bottomAnchor),
            bruCiuponllPaintFlow.widthAnchor.constraint(equalToConstant: 20),
            bruCiuponllPaintFlow.heightAnchor.constraint(equalToConstant: 20)
        ])
        bruCiuSprayRhythm.addArrangedSubview(bruCiuponllPaintFlow)
        let bruCiuBody = UILabel()
        let aerErstInkAura = NSMutableAttributedString(
            string: aerErstUser.aerosolDream,
            attributes: [
                .foregroundColor: aerErstUser.inkDrift[1],
                .font: PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .bold)
            ]
        )
        aerErstInkAura.append(NSAttributedString(
            string: "  \(ponllInkDrift.muralGrid)",
            attributes: [
                .foregroundColor: UIColor.white,
                .font: PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
            ]
        ))
        bruCiuBody.attributedText = aerErstInkAura
        bruCiuBody.numberOfLines = 1
        bruCiuBody.lineBreakMode = .byTruncatingTail
        bruCiuSprayRhythm.addArrangedSubview(bruCiuBody)
        return bruCiuSprayRhythm
    }

    private func bruCiuOpenArtist(_ flckinkaerErstWallCraft: PonllyaerErstTwoToneFillr) {
        guard flckinkaerErstWallCraft.graffitiPulse != PonllyponllTornEdge.cnowpaintokwinId else { return }
        let aerErstProfile = FlckinkPrimerCoatController(flckinkaerErstWallCraft)
        aerErstProfile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(aerErstProfile, animated: true)
    }

    private func ponllRoundButton(_ bruCiuSymbol: String, action flckinkAction: Selector) -> UIButton {
        let aerErstButton = UIButton(type: .system)
        aerErstButton.setImage(UIImage(systemName: bruCiuSymbol), for: .normal)
        aerErstButton.tintColor = .white
        aerErstButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        aerErstButton.layer.cornerRadius = 18
        aerErstButton.layer.borderWidth = 1
        aerErstButton.layer.borderColor = PonllyPalette.line.cgColor
        aerErstButton.translatesAutoresizingMaskIntoConstraints = false
        aerErstButton.addTarget(self, action: flckinkAction, for: .touchUpInside)
        aerErstButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
        aerErstButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        return aerErstButton
    }

    private func bruCiuControlButton(_ bruCiuSymbol: String, color flckinkColor: UIColor, tint aerErstTint: UIColor, size ponllSize: CGFloat, action bruCiuAction: Selector) -> UIButton {
        let flckinkButton = UIButton(type: .system)
        flckinkButton.setImage(UIImage(systemName: bruCiuSymbol), for: .normal)
        flckinkButton.tintColor = aerErstTint
        flckinkButton.backgroundColor = flckinkColor
        flckinkButton.layer.cornerRadius = ponllSize / 2
        flckinkButton.layer.borderWidth = 1
        flckinkButton.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        flckinkButton.imageView?.contentMode = .scaleAspectFit
        flckinkButton.translatesAutoresizingMaskIntoConstraints = false
        flckinkButton.addTarget(self, action: bruCiuAction, for: .touchUpInside)
        NSLayoutConstraint.activate([
            flckinkButton.widthAnchor.constraint(equalToConstant: ponllSize),
            flckinkButton.heightAnchor.constraint(equalToConstant: ponllSize)
        ])
        return flckinkButton
    }

    private func ponllSmallLabel(_ bruCiuText: String, color flckinkColor: UIColor) -> UILabel {
        let aerErstLabel = UILabel()
        aerErstLabel.text = bruCiuText
        aerErstLabel.textColor = flckinkColor
        aerErstLabel.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        aerErstLabel.textAlignment = .center
        aerErstLabel.numberOfLines = 1
        return aerErstLabel
    }

    private func ponllStyleCue(_ bruCiuStyleMap: PonllyVoLobbyCategory) -> String {
        switch bruCiuStyleMap {
        case .bruCiuSolidFill:
            return "Gqrwaefrftiytuii oTpaqlwke".ponllPaintaerErstHours
        case .ponllGritSurface:
            return "Fqowlelrotwyiunigo".ponllPaintaerErstHours
        case .critique:
            return "Bqawtetrltey uDiiospcquwsesritoynu".ponllPaintaerErstHours
        case .lateWall:
            return "Mquwseirct".ponllPaintaerErstHours
        }
    }

    private func ponllRefreshflckinkStreetMural() {
        bruCiuponllLineBurst.setImage(UIImage(systemName: aerErstSketchRush ? "mic.slash.fill" : "mic.fill"), for: .normal)
        bruCiuponllLineBurst.tintColor = .white
        bruCiuponllLineBurst.backgroundColor = flckinkIsOnSeat ? PonllyPalette.pink : PonllyPalette.pink.withAlphaComponent(0.46)
        bruCiuponllLineBurst.layer.borderColor = PonllyPalette.cyan.cgColor
        bruCiuponllLineBurst.isEnabled = flckinkIsOnSeat
        bruCiuponllLineBurst.alpha = flckinkIsOnSeat ? 1 : 0.62
    }

    private func bruCiubruCiuAerosolDream(_ flckinkCompletion: @escaping (Bool) -> Void) {
        if #available(iOS 17.0, *) {
            AVAudioApplication.requestRecordPermission { aerErstAllowed in
                DispatchQueue.main.async { flckinkCompletion(aerErstAllowed) }
            }
        } else {
            AVAudioSession.sharedInstance().requestRecordPermission { ponllAllowed in
                DispatchQueue.main.async { flckinkCompletion(ponllAllowed) }
            }
        }
    }

    @objc private func ponllJoinSeatTapped() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            guard self.flckinkIsOnSeat || self.ponllflckinkWallTexture.paintCloud.count < self.ponllflckinkWallTexture.ponllStenciloutlineLab else { return }
            self.flckinkPrimerCoatponlu("R5e6q7u8e9satbicndge fmgihcirjokplhmonnoep.q.r.s".ponllPaintaerErstHours)
            self.bruCiubruCiuAerosolDream { bruCiuAllowed in
                guard bruCiuAllowed else {
                    self.ponllyShowThemeAlert(title: "MtiucvrwoxpyhzoAnBeC DNEeFeGdHeIdJ".ponllPaintaerErstHours, message: "AKlLlMoNwO PmQiRcSrToUpVhWoXnYeZ 0a1c2c3e4s5s6 7t8o9 ajbocidne fag hriojokml msneoaptq.r".ponllPaintaerErstHours, actionTitle: "Gsottu vIwtx".ponllPaintaerErstHours, style: .ponllWhiteEdge)
                    return
                }
                self.flckinkIsOnSeat = true
                self.aerErstSketchRush = false
                self.flckinkponllGraffitiPulse()
                self.flckinkReloadSeats()
                self.ponllRefreshflckinkStreetMural()
                self.flckinkPrimerCoatponlu("SyezaAtB CjDoEiFnGeHdI".ponllPaintaerErstHours)
            }
        }
    }

    private func flckinkponllGraffitiPulse() {
        if let aerErstIndex = ponllflckinkWallTexture.paintCloud.firstIndex(where: { $0.wheatpasteLayer == PonllyponllTornEdge.cnowpaintokwinId }) {
            ponllflckinkWallTexture.paintCloud[aerErstIndex].wallMark = aerErstSketchRush
        } else {
            ponllflckinkWallTexture.paintCloud.append(PonllyponllPaperLayerSeat(wheatpasteLayer: PonllyponllTornEdge.cnowpaintokwinId, wallMark: aerErstSketchRush))
        }
        PonllyponllTornEdge.updatebruCiuHardOutline(ponllflckinkWallTexture)
    }

    @objc private func flckinkMicTapped() {
        guard flckinkIsOnSeat else {
            ponllyShowThemeAlert(title: "JJoKiLnM NAO PSQeRaStT UFViWrXsYtZ".ponllPaintaerErstHours, message: "T0a1p2 3t4h5e6 7h8a9nadb cbduetftgohni jbkelfmonroep qurssitnugv wtxhyez AmBiCcDrEoFpGhHoInJeK.L".ponllPaintaerErstHours, actionTitle: "GMoNtO PIQtR".ponllPaintaerErstHours, style: .bruCiuSilverSheen)
            return
        }
        aerErstSketchRush.toggle()
        flckinkponllGraffitiPulse()
        flckinkReloadSeats()
        ponllRefreshflckinkStreetMural()
        flckinkPrimerCoatponlu(aerErstSketchRush ? "MSiTcUrVoWpXhYoZn0e1 2m3u4t5e6d7".ponllPaintaerErstHours : "M8i9carbocpdheofngeh iojpkelnm".ponllPaintaerErstHours)
    }

    @objc private func aerErstSendTapped() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let textureEcho = (self.ponllbruCiuLetterFormld.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
            guard !textureEcho.isEmpty else {
                self.aerErstSketchRush("Andodp qar sntoutvew xbyezfAoBrCeD EsFeGnHdIiJnKgL.M".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
                return
            }
            self.ponllbruCiuLetterFormld.text = ""
            let textureAura = PonllyflckinkUrbanCanvasge(wheatpasteLayer: PonllyponllTornEdge.cnowpaintokwinId, pasteupEcho: "nNoOwP".ponllPaintaerErstHours, muralGrid: textureEcho)
            self.ponllflckinkWallTexture.nozzleMist.append(textureAura)
            PonllyponllTornEdge.updatebruCiuHardOutline(self.ponllflckinkWallTexture)
            self.flckinkponllPaintLayer.addArrangedSubview(self.bruCiubruCiuMarkerStrokeow(textureAura))
            self.flckinkPrimerCoatponlu("NQoRtSeT UsVeWnXtY".ponllPaintaerErstHours)
            self.view.layoutIfNeeded()
            let flckinkBottom = CGPoint(x: 0, y: max(self.aerErstaerErstStrokeWeight.contentSize.height - self.aerErstaerErstStrokeWeight.bounds.height, 0))
            self.aerErstaerErstStrokeWeight.setContentOffset(flckinkBottom, animated: true)
        }
    }

    @objc private func bruCiuMtextureVeil() {
        let aerErstReport = PonllyroughFillController(lineSpray: ponllflckinkWallTexture)
        aerErstReport.fadeSpray = { [weak self] in
            self?.aerErstSketchRush("RZe0p1o2r3t4 5s6u7b8m9iatbtcedde".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
        }
        aerErstReport.modalPresentationStyle = .overFullScreen
        aerErstReport.modalTransitionStyle = .crossDissolve
        present(aerErstReport, animated: true)
    }

    @objc private func flckinkLeaveTapped() {
        flckinkPrimerCoatponlu("Lfegahviijnkgl mrnooopmq.r.s.t".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) { [weak self] in
            self?.bruCiuPaintPeel()
        }
    }

    @objc private func ponlltextureTrail() {
        bruCiuPaintPeel()
    }

    private func bruCiuPaintPeel() {
        guard !ponllWallPeel else { return }
        ponllWallPeel = true

        guard ponllflckinkWallTexture.gradientFill == PonllyponllTornEdge.cnowpaintokwinId else {
            navigationController?.popViewController(animated: true)
            return
        }

        PonllyponllTornEdge.flckinkPaintPeel(ponllflckinkWallTexture.graffitiPulse)
        if let aerErstCreationHub = navigationController?.viewControllers.first(where: { $0 is ErstWeatheredPaperController }) {
            navigationController?.popToViewController(aerErstCreationHub, animated: true)
            return
        }

        let flckinkCreationTabs = tabBarController
        navigationController?.popToRootViewController(animated: false)
        guard let flckinkCreationTabs else { return }
        flckinkCreationTabs.selectedIndex = 2
        let ponllCreationPath = flckinkCreationTabs.viewControllers?[2] as? UINavigationController
        ponllCreationPath?.popToRootViewController(animated: false)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        aerErstSendTapped()
        return true
    }

    @objc private func flckinkKeysketchContrast(_ bruCiuNote: Notification) {
        guard let aerErstFrame = bruCiuNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        UIView.animate(withDuration: 0.22) {
            self.view.transform = CGAffineTransform(translationX: 0, y: -max(aerErstFrame.height - self.view.safeAreaInsets.bottom - 34, 0))
        }
    }

    @objc private func aerErstsketchTexturee(_ ponllNote: Notification) {
        UIView.animate(withDuration: 0.22) {
            self.view.transform = .identity
        }
    }
}
