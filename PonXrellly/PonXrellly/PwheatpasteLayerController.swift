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

    init(aerErstConcreteMuse aerErstConcreteMuse: PonllyaerErstWeatheredPaperm) {
        var bruCiuPreparedRoom = aerErstConcreteMuse
        bruCiuPreparedRoom.paintCloud = aerErstConcreteMuse.paintCloud.map { flckinkSeat in
            guard flckinkSeat.wheatpasteLayer != PonllyponllTornEdge.currentUserId else { return flckinkSeat }
            var aerErstMutedSeat = flckinkSeat
            aerErstMutedSeat.wallMark = true
            return aerErstMutedSeat
        }
        self.ponllflckinkWallTexture = bruCiuPreparedRoom
        if let ponllCurrentSeat = bruCiuPreparedRoom.paintCloud.first(where: { $0.wheatpasteLayer == PonllyponllTornEdge.currentUserId }) {
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
        let flckinkbruCiuColorSplash = UIImageView(image: UIImage(named: ponllflckinkWallTexture.aerosolHaze))
        flckinkbruCiuColorSplash.contentMode = .scaleAspectFill
        flckinkbruCiuColorSplash.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkbruCiuColorSplash)
        let aerErstVeil = PonllyponllCyanGlowView(bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.45), PonllyPalette.background.withAlphaComponent(0.96)], CGPoint(x: 0.5, y: 0), CGPoint(x: 0.5, y: 1))
        view.addSubview(aerErstVeil)
        aerErstVeil.woodPanelPonlly(steelGate: view)

        let ponllBackButton = ponllRoundButton("chevron.left", action: #selector(ponlltextureTrail))
        let bruCiuMoreButton = ponllRoundButton("ellipsis", action: #selector(bruCiuMtextureVeil))
        view.addSubview(ponllBackButton)
        view.addSubview(bruCiuMoreButton)

        let flckinkponllPaintMistel = UILabel()
        flckinkponllPaintMistel.text = ponllflckinkWallTexture.nozzleCraft
        flckinkponllPaintMistel.textColor = .white
        flckinkponllPaintMistel.textAlignment = .center
        flckinkponllPaintMistel.font = PonllyFonts.muralForgepon(neonLab: 21)
        flckinkponllPaintMistel.numberOfLines = 2
        flckinkponllPaintMistel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkponllPaintMistel)
        let aerErstTopicLabel = UILabel()
        aerErstTopicLabel.text = ponllflckinkWallTexture.colorFade
        aerErstTopicLabel.textColor = PonllyPalette.muted
        aerErstTopicLabel.textAlignment = .center
        aerErstTopicLabel.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        aerErstTopicLabel.numberOfLines = 2
        aerErstTopicLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstTopicLabel)

        bruCiuSeatsStack.axis = .vertical
        bruCiuSeatsStack.spacing = 14
        bruCiuSeatsStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuSeatsStack)
        flckinkReloadSeats()

        let ponllaerErstDropShadown = PonllyNeonButton("Join Seat")
        ponllaerErstDropShadown.addTarget(self, action: #selector(ponllJoinSeatTapped), for: .touchUpInside)
        view.addSubview(ponllaerErstDropShadown)

        aerErstaerErstStrokeWeight.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstaerErstStrokeWeight)
        flckinkponllPaintLayer.axis = .vertical
        flckinkponllPaintLayer.spacing = 10
        flckinkponllPaintLayer.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstStrokeWeight.addSubview(flckinkponllPaintLayer)
        ponllflckinkWallTexture.nozzleMist.forEach { flckinkponllPaintLayer.addArrangedSubview(bruCiubruCiuMarkerStrokeow($0)) }

        let bruCiuInputBar = aerErstInputArea()
        view.addSubview(bruCiuInputBar)
        let flckinkflckinkOutlineGlowon = UIButton(type: .system)
        flckinkflckinkOutlineGlowon.setTitle("Leave Room", for: .normal)
        flckinkflckinkOutlineGlowon.setTitleColor(PonllyPalette.pink, for: .normal)
        flckinkflckinkOutlineGlowon.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        flckinkflckinkOutlineGlowon.layer.cornerRadius = 16
        flckinkflckinkOutlineGlowon.layer.borderWidth = 1
        flckinkflckinkOutlineGlowon.layer.borderColor = PonllyPalette.pink.cgColor
        flckinkflckinkOutlineGlowon.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        flckinkflckinkOutlineGlowon.translatesAutoresizingMaskIntoConstraints = false
        flckinkflckinkOutlineGlowon.addTarget(self, action: #selector(flckinkLeaveTapped), for: .touchUpInside)
        view.addSubview(flckinkflckinkOutlineGlowon)

        NSLayoutConstraint.activate([
            flckinkbruCiuColorSplash.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkbruCiuColorSplash.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkbruCiuColorSplash.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkbruCiuColorSplash.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.48),
            ponllBackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            ponllBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            bruCiuMoreButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            bruCiuMoreButton.topAnchor.constraint(equalTo: ponllBackButton.topAnchor),
            flckinkponllPaintMistel.leadingAnchor.constraint(equalTo: ponllBackButton.trailingAnchor, constant: 12),
            flckinkponllPaintMistel.trailingAnchor.constraint(equalTo: bruCiuMoreButton.leadingAnchor, constant: -12),
            flckinkponllPaintMistel.centerYAnchor.constraint(equalTo: ponllBackButton.centerYAnchor),
            aerErstTopicLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            aerErstTopicLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            aerErstTopicLabel.topAnchor.constraint(equalTo: flckinkponllPaintMistel.bottomAnchor, constant: 18),
            bruCiuSeatsStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            bruCiuSeatsStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            bruCiuSeatsStack.topAnchor.constraint(equalTo: aerErstTopicLabel.bottomAnchor, constant: 22),
            ponllaerErstDropShadown.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            ponllaerErstDropShadown.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            ponllaerErstDropShadown.topAnchor.constraint(equalTo: bruCiuSeatsStack.bottomAnchor, constant: 18),
            ponllaerErstDropShadown.heightAnchor.constraint(equalToConstant: 54),
            bruCiuInputBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuInputBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuInputBar.bottomAnchor.constraint(equalTo: flckinkflckinkOutlineGlowon.topAnchor, constant: -10),
            bruCiuInputBar.heightAnchor.constraint(equalToConstant: 72),
            flckinkflckinkOutlineGlowon.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            flckinkflckinkOutlineGlowon.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            flckinkflckinkOutlineGlowon.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            flckinkflckinkOutlineGlowon.heightAnchor.constraint(equalToConstant: 46),
            aerErstaerErstStrokeWeight.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstaerErstStrokeWeight.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstaerErstStrokeWeight.topAnchor.constraint(equalTo: ponllaerErstDropShadown.bottomAnchor, constant: 16),
            aerErstaerErstStrokeWeight.bottomAnchor.constraint(equalTo: bruCiuInputBar.topAnchor, constant: -10),
            flckinkponllPaintLayer.leadingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.frameLayoutGuide.leadingAnchor),
            flckinkponllPaintLayer.trailingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.frameLayoutGuide.trailingAnchor),
            flckinkponllPaintLayer.topAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.topAnchor),
            flckinkponllPaintLayer.bottomAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.bottomAnchor)
        ])
        ponllRefreshflckinkStreetMural()
    }

    private func flckinkReloadSeats() {
        bruCiuSeatsStack.arrangedSubviews.forEach {
            bruCiuSeatsStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let aerErstSeats = ponllflckinkWallTexture.paintCloud + bruCiuOpenSeats(ponllBubbleLetter: max(4 - ponllflckinkWallTexture.paintCloud.count, 1))
        for ponllRowIndex in stride(from: 0, to: aerErstSeats.count, by: 2) {
            let bruCiuRow = UIStackView()
            bruCiuRow.axis = .horizontal
            bruCiuRow.spacing = 18
            bruCiuRow.distribution = .fillEqually
            bruCiuRow.addArrangedSubview(flckinkaerErstWildstyleCurveew(aerErstSeats[ponllRowIndex]))
            if ponllRowIndex + 1 < aerErstSeats.count {
                bruCiuRow.addArrangedSubview(flckinkaerErstWildstyleCurveew(aerErstSeats[ponllRowIndex + 1]))
            } else {
                bruCiuRow.addArrangedSubview(UIView())
            }
            bruCiuSeatsStack.addArrangedSubview(bruCiuRow)
        }
    }

    private func bruCiuOpenSeats(ponllBubbleLetter flckinkCount: Int) -> [PonllyponllPaperLayerSeat] {
        (0..<flckinkCount).map { _ in PonllyponllPaperLayerSeat(wheatpasteLayer: "", wallMark: true) }
    }

    private func flckinkaerErstWildstyleCurveew(_ aerErstSeat: PonllyponllPaperLayerSeat) -> UIControl {
        let flckinkMuralGrid = UIControl()
        flckinkMuralGrid.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.66)
        flckinkMuralGrid.layer.cornerRadius = 18
        flckinkMuralGrid.layer.borderWidth = 1
        flckinkMuralGrid.layer.borderColor = PonllyPalette.line.cgColor
        let bruCiuStack = UIStackView()
        bruCiuStack.axis = .vertical
        bruCiuStack.alignment = .center
        bruCiuStack.spacing = 7
        bruCiuStack.translatesAutoresizingMaskIntoConstraints = false
        flckinkMuralGrid.addSubview(bruCiuStack)
        if aerErstSeat.wheatpasteLayer.isEmpty {
            let flckinkIcon = UIImageView(image: UIImage(systemName: "plus"))
            flckinkIcon.tintColor = PonllyPalette.cyan
            flckinkIcon.widthAnchor.constraint(equalToConstant: 32).isActive = true
            flckinkIcon.heightAnchor.constraint(equalToConstant: 32).isActive = true
            let aerbruCiuWheatpasteLayer = ponllSmallLabel("Open Seat", color: PonllyPalette.muted)
            bruCiuStack.addArrangedSubview(flckinkIcon)
            bruCiuStack.addArrangedSubview(aerbruCiuWheatpasteLayer)
            flckinkMuralGrid.addTarget(self, action: #selector(ponllJoinSeatTapped), for: .touchUpInside)
        } else {
            let ponllponllStencilBloom = PonllyponllTornEdge.flckinkChippedPaint(aerErstSeat.wheatpasteLayer)
            let bruCiuaerErstCapControl = ErErstPaintLabView(user: ponllponllStencilBloom, size: 54)
            bruCiuStack.addArrangedSubview(bruCiuaerErstCapControl)
            let flckinkName = ponllSmallLabel(ponllponllStencilBloom.aerosolDream, color: .white)
            bruCiuStack.addArrangedSubview(flckinkName)
            let aerErstMuted = UIImageView(image: UIImage(systemName: aerErstSeat.wallMark ? "mic.slash.fill" : "mic.fill"))
            aerErstMuted.tintColor = aerErstSeat.wallMark ? PonllyPalette.pink : PonllyPalette.cyan
            aerErstMuted.widthAnchor.constraint(equalToConstant: 18).isActive = true
            aerErstMuted.heightAnchor.constraint(equalToConstant: 18).isActive = true
            bruCiuStack.addArrangedSubview(aerErstMuted)
            flckinkMuralGrid.addAction(UIAction { [weak self] _ in
                self?.bruCiuOpenArtist(ponllponllStencilBloom)
            }, for: .touchUpInside)
        }
        NSLayoutConstraint.activate([
            flckinkMuralGrid.heightAnchor.constraint(equalToConstant: 126),
            bruCiuStack.centerXAnchor.constraint(equalTo: flckinkMuralGrid.centerXAnchor),
            bruCiuStack.centerYAnchor.constraint(equalTo: flckinkMuralGrid.centerYAnchor)
        ])
        return flckinkMuralGrid
    }

    private func aerErstInputArea() -> UIView {
        let flckinkBar = UIView()
        flckinkBar.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.95)
        flckinkBar.layer.borderWidth = 1
        flckinkBar.layer.borderColor = PonllyPalette.line.cgColor
        flckinkBar.translatesAutoresizingMaskIntoConstraints = false
        ponllbruCiuLetterFormld.attributedPlaceholder = NSAttributedString(string: "Add a room note...", attributes: [.foregroundColor: PonllyPalette.muted])
        ponllbruCiuLetterFormld.textColor = .white
        ponllbruCiuLetterFormld.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        ponllbruCiuLetterFormld.delegate = self
        ponllbruCiuLetterFormld.returnKeyType = .send
        ponllbruCiuLetterFormld.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        ponllbruCiuLetterFormld.layer.cornerRadius = 18
        ponllbruCiuLetterFormld.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 1))
        ponllbruCiuLetterFormld.leftViewMode = .always
        ponllbruCiuLetterFormld.translatesAutoresizingMaskIntoConstraints = false
        flckinkBar.addSubview(ponllbruCiuLetterFormld)

        let aerErstflckinkNozzleCraft = UIButton(type: .system)
        aerErstflckinkNozzleCraft.setImage(UIImage(named: "send_horizontal") ?? UIImage(systemName: "paperplane.fill"), for: .normal)
        aerErstflckinkNozzleCraft.tintColor = .black
        aerErstflckinkNozzleCraft.backgroundColor = PonllyPalette.cyan
        aerErstflckinkNozzleCraft.layer.cornerRadius = 22
        aerErstflckinkNozzleCraft.translatesAutoresizingMaskIntoConstraints = false
        aerErstflckinkNozzleCraft.addTarget(self, action: #selector(aerErstSendTapped), for: .touchUpInside)
        flckinkBar.addSubview(aerErstflckinkNozzleCraft)

        bruCiuponllLineBurst.translatesAutoresizingMaskIntoConstraints = false
        bruCiuponllLineBurst.layer.cornerRadius = 22
        bruCiuponllLineBurst.layer.borderWidth = 1
        bruCiuponllLineBurst.addTarget(self, action: #selector(flckinkMicTapped), for: .touchUpInside)
        flckinkBar.addSubview(bruCiuponllLineBurst)

        NSLayoutConstraint.activate([
            ponllbruCiuLetterFormld.leadingAnchor.constraint(equalTo: flckinkBar.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            ponllbruCiuLetterFormld.centerYAnchor.constraint(equalTo: flckinkBar.centerYAnchor),
            ponllbruCiuLetterFormld.trailingAnchor.constraint(equalTo: bruCiuponllLineBurst.leadingAnchor, constant: -10),
            ponllbruCiuLetterFormld.heightAnchor.constraint(equalToConstant: 44),
            bruCiuponllLineBurst.trailingAnchor.constraint(equalTo: aerErstflckinkNozzleCraft.leadingAnchor, constant: -10),
            bruCiuponllLineBurst.centerYAnchor.constraint(equalTo: ponllbruCiuLetterFormld.centerYAnchor),
            bruCiuponllLineBurst.widthAnchor.constraint(equalToConstant: 44),
            bruCiuponllLineBurst.heightAnchor.constraint(equalToConstant: 44),
            aerErstflckinkNozzleCraft.trailingAnchor.constraint(equalTo: flckinkBar.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            aerErstflckinkNozzleCraft.centerYAnchor.constraint(equalTo: ponllbruCiuLetterFormld.centerYAnchor),
            aerErstflckinkNozzleCraft.widthAnchor.constraint(equalToConstant: 44),
            aerErstflckinkNozzleCraft.heightAnchor.constraint(equalToConstant: 44)
        ])
        return flckinkBar
    }

    private func bruCiubruCiuMarkerStrokeow(_ ponllInkDrift: PonllyflckinkUrbanCanvasge) -> UIView {
        let aerErstUser = PonllyponllTornEdge.flckinkChippedPaint(ponllInkDrift.wheatpasteLayer)
        let bruCiuSprayRhythm = UIStackView()
        bruCiuSprayRhythm.axis = .horizontal
        bruCiuSprayRhythm.alignment = .top
        bruCiuSprayRhythm.spacing = 10
        let bruCiuponllPaintFlow = UIControl()
        bruCiuponllPaintFlow.addAction(UIAction { [weak self] _ in
            self?.bruCiuOpenArtist(aerErstUser)
        }, for: .touchUpInside)
        let flckinkAvatar = ErErstPaintLabView(user: aerErstUser, size: 34)
        flckinkAvatar.isUserInteractionEnabled = false
        bruCiuponllPaintFlow.addSubview(flckinkAvatar)
        NSLayoutConstraint.activate([
            flckinkAvatar.leadingAnchor.constraint(equalTo: bruCiuponllPaintFlow.leadingAnchor),
            flckinkAvatar.trailingAnchor.constraint(equalTo: bruCiuponllPaintFlow.trailingAnchor),
            flckinkAvatar.topAnchor.constraint(equalTo: bruCiuponllPaintFlow.topAnchor),
            flckinkAvatar.bottomAnchor.constraint(equalTo: bruCiuponllPaintFlow.bottomAnchor),
            bruCiuponllPaintFlow.widthAnchor.constraint(equalToConstant: 34),
            bruCiuponllPaintFlow.heightAnchor.constraint(equalToConstant: 34)
        ])
        bruCiuSprayRhythm.addArrangedSubview(bruCiuponllPaintFlow)
        let aerErstTextStack = UIStackView()
        aerErstTextStack.axis = .vertical
        aerErstTextStack.spacing = 4
        let ponllName = ponllSmallLabel("\(aerErstUser.aerosolDream)  \(ponllInkDrift.pasteupEcho)", color: ponllflckinkWallTexture.whitePop)
        let bruCiuBody = UILabel()
        bruCiuBody.text = ponllInkDrift.muralGrid
        bruCiuBody.textColor = .white
        bruCiuBody.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        bruCiuBody.numberOfLines = 0
        aerErstTextStack.addArrangedSubview(ponllName)
        aerErstTextStack.addArrangedSubview(bruCiuBody)
        bruCiuSprayRhythm.addArrangedSubview(aerErstTextStack)
        return bruCiuSprayRhythm
    }

    private func bruCiuOpenArtist(_ flckinkaerErstWallCraft: PonllyaerErstTwoToneFillr) {
        guard flckinkaerErstWallCraft.graffitiPulse != PonllyponllTornEdge.currentUserId else { return }
        let aerErstProfile = FlckinkPrimerCoatController(user: flckinkaerErstWallCraft)
        aerErstProfile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(aerErstProfile, animated: true)
    }

    private func ponllRoundButton(_ bruCiuSymbol: String, action flckinkAction: Selector) -> UIButton {
        let aerErstButton = UIButton(type: .system)
        aerErstButton.setImage(UIImage(systemName: bruCiuSymbol), for: .normal)
        aerErstButton.tintColor = .white
        aerErstButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        aerErstButton.layer.cornerRadius = 26
        aerErstButton.layer.borderWidth = 1
        aerErstButton.layer.borderColor = PonllyPalette.line.cgColor
        aerErstButton.translatesAutoresizingMaskIntoConstraints = false
        aerErstButton.addTarget(self, action: flckinkAction, for: .touchUpInside)
        aerErstButton.widthAnchor.constraint(equalToConstant: 52).isActive = true
        aerErstButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        return aerErstButton
    }

    private func ponllSmallLabel(_ bruCiuText: String, color flckinkColor: UIColor) -> UILabel {
        let aerErstLabel = UILabel()
        aerErstLabel.text = bruCiuText
        aerErstLabel.textColor = flckinkColor
        aerErstLabel.font = PonllyFonts.muralForgepon(neonLab: 11)
        aerErstLabel.textAlignment = .center
        aerErstLabel.numberOfLines = 1
        return aerErstLabel
    }

    private func ponllRefreshflckinkStreetMural() {
        bruCiuponllLineBurst.setImage(UIImage(systemName: aerErstSketchRush ? "mic.slash.fill" : "mic.fill"), for: .normal)
        bruCiuponllLineBurst.tintColor = aerErstSketchRush ? PonllyPalette.pink : PonllyPalette.cyan
        bruCiuponllLineBurst.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        bruCiuponllLineBurst.layer.borderColor = (aerErstSketchRush ? PonllyPalette.pink : PonllyPalette.cyan).cgColor
        bruCiuponllLineBurst.isEnabled = flckinkIsOnSeat
        bruCiuponllLineBurst.alpha = flckinkIsOnSeat ? 1 : 0.45
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
            self.flckinkPrimerCoatponlu("Requesting microphone...")
            self.bruCiubruCiuAerosolDream { bruCiuAllowed in
                guard bruCiuAllowed else {
                    self.ponllyShowThemeAlert(title: "Microphone Needed", message: "Allow microphone access to join a room seat.", actionTitle: "Got It", style: .ponllWhiteEdge)
                    return
                }
                self.flckinkIsOnSeat = true
                self.aerErstSketchRush = false
                self.flckinkponllGraffitiPulse()
                self.flckinkReloadSeats()
                self.ponllRefreshflckinkStreetMural()
                self.flckinkPrimerCoatponlu("Seat joined")
            }
        }
    }

    private func flckinkponllGraffitiPulse() {
        if let aerErstIndex = ponllflckinkWallTexture.paintCloud.firstIndex(where: { $0.wheatpasteLayer == PonllyponllTornEdge.currentUserId }) {
            ponllflckinkWallTexture.paintCloud[aerErstIndex].wallMark = aerErstSketchRush
        } else {
            ponllflckinkWallTexture.paintCloud.append(PonllyponllPaperLayerSeat(wheatpasteLayer: PonllyponllTornEdge.currentUserId, wallMark: aerErstSketchRush))
        }
        PonllyponllTornEdge.updatebruCiuHardOutline(ponllflckinkWallTexture)
    }

    @objc private func flckinkMicTapped() {
        guard flckinkIsOnSeat else {
            ponllyShowThemeAlert(title: "Join A Seat First", message: "Take an open seat before using the microphone.", actionTitle: "Got It", style: .bruCiuSilverSheen)
            return
        }
        aerErstSketchRush.toggle()
        ponllRefreshflckinkStreetMural()
        flckinkPrimerCoatponlu(aerErstSketchRush ? "Microphone muted" : "Microphone open")
    }

    @objc private func aerErstSendTapped() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let textureEcho = (self.ponllbruCiuLetterFormld.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
            guard !textureEcho.isEmpty else {
                self.aerErstSketchRush("Add a note before sending.", bruCiuLetterForm: .ponllWhiteEdge)
                return
            }
            self.ponllbruCiuLetterFormld.text = ""
            let textureAura = PonllyflckinkUrbanCanvasge(wheatpasteLayer: PonllyponllTornEdge.currentUserId, pasteupEcho: "now", muralGrid: textureEcho)
            self.ponllflckinkWallTexture.nozzleMist.append(textureAura)
            PonllyponllTornEdge.updatebruCiuHardOutline(self.ponllflckinkWallTexture)
            self.flckinkponllPaintLayer.addArrangedSubview(self.bruCiubruCiuMarkerStrokeow(textureAura))
            self.flckinkPrimerCoatponlu("Note sent")
            self.view.layoutIfNeeded()
            let flckinkBottom = CGPoint(x: 0, y: max(self.aerErstaerErstStrokeWeight.contentSize.height - self.aerErstaerErstStrokeWeight.bounds.height, 0))
            self.aerErstaerErstStrokeWeight.setContentOffset(flckinkBottom, animated: true)
        }
    }

    @objc private func bruCiuMtextureVeil() {
        let aerErstReport = PonllyroughFillController(lineSpray: ponllflckinkWallTexture)
        aerErstReport.fadeSpray = { [weak self] in
            self?.aerErstSketchRush("Report submitted", bruCiuLetterForm: .flckinkSplitFill)
        }
        aerErstReport.modalPresentationStyle = .overFullScreen
        aerErstReport.modalTransitionStyle = .crossDissolve
        present(aerErstReport, animated: true)
    }

    @objc private func flckinkLeaveTapped() {
        flckinkPrimerCoatponlu("Leaving room...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.navigationController?.popViewController(animated: true)
        }
    }

    @objc private func ponlltextureTrail() {
        navigationController?.popViewController(animated: true)
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
