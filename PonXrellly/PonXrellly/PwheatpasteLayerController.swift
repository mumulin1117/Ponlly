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
        let aerErstVeil = PonllyponllCyanGlowView(bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.08), UIColor.black.withAlphaComponent(0.18), PonllyPalette.background.withAlphaComponent(0.52)], CGPoint(x: 0.5, y: 0), CGPoint(x: 0.5, y: 1))
        view.addSubview(aerErstVeil)
        aerErstVeil.woodPanelPonlly(steelGate: view)

        let ponllBackButton = ponllRoundButton("chevron.left", action: #selector(ponlltextureTrail))
        let bruCiuMoreButton = ponllRoundButton("ellipsis", action: #selector(bruCiuMtextureVeil))
        view.addSubview(ponllBackButton)
        view.addSubview(bruCiuMoreButton)

        let flckinkRoomHeader = UIView()
        flckinkRoomHeader.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        flckinkRoomHeader.layer.cornerRadius = 34
        flckinkRoomHeader.layer.borderWidth = 1
        flckinkRoomHeader.layer.borderColor = UIColor.white.withAlphaComponent(0.12).cgColor
        flckinkRoomHeader.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkRoomHeader)
        let aerErstHost = PonllyponllTornEdge.flckinkChippedPaint(ponllflckinkWallTexture.gradientFill)
        let ponllHostAvatar = ErErstPaintLabView(user: aerErstHost, size: 48)
        ponllHostAvatar.translatesAutoresizingMaskIntoConstraints = false
        flckinkRoomHeader.addSubview(ponllHostAvatar)
        let bruCiuHeaderStack = UIStackView()
        bruCiuHeaderStack.axis = .vertical
        bruCiuHeaderStack.spacing = 4
        bruCiuHeaderStack.translatesAutoresizingMaskIntoConstraints = false
        flckinkRoomHeader.addSubview(bruCiuHeaderStack)
        let flckinkRoomTitle = UILabel()
        flckinkRoomTitle.text = ponllflckinkWallTexture.nozzleCraft
        flckinkRoomTitle.textColor = .white
        flckinkRoomTitle.font = PonllyFonts.muralForgepon(neonLab: 15)
        flckinkRoomTitle.adjustsFontSizeToFitWidth = true
        flckinkRoomTitle.minimumScaleFactor = 0.72
        let aerErstListening = UILabel()
        aerErstListening.text = "● \(max(ponllflckinkWallTexture.sprayHalo.count * 73, 124)) Listening"
        aerErstListening.textColor = PonllyPalette.pink
        aerErstListening.font = PonllyFonts.steelGate(rollingShutter: 12)
        bruCiuHeaderStack.addArrangedSubview(flckinkRoomTitle)
        bruCiuHeaderStack.addArrangedSubview(aerErstListening)

        let aerErstTopicLabel = UILabel()
        aerErstTopicLabel.text = ponllflckinkWallTexture.chromeShine.rawValue
        aerErstTopicLabel.textColor = PonllyPalette.cyan
        aerErstTopicLabel.textAlignment = .center
        aerErstTopicLabel.font = PonllyFonts.muralForgepon(neonLab: 13)
        aerErstTopicLabel.layer.cornerRadius = 8
        aerErstTopicLabel.layer.borderWidth = 1.4
        aerErstTopicLabel.layer.borderColor = PonllyPalette.cyan.cgColor
        aerErstTopicLabel.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        aerErstTopicLabel.clipsToBounds = true
        aerErstTopicLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstTopicLabel)

        bruCiuSeatsStack.axis = .vertical
        bruCiuSeatsStack.spacing = 16
        bruCiuSeatsStack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuSeatsStack)
        flckinkReloadSeats()

        aerErstaerErstStrokeWeight.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstStrokeWeight.backgroundColor = UIColor.black.withAlphaComponent(0.34)
        aerErstaerErstStrokeWeight.layer.cornerRadius = 18
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
        flckinkControlBar.layer.cornerRadius = 28
        flckinkControlBar.layer.borderWidth = 1
        flckinkControlBar.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        flckinkControlBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkControlBar)
        let ponllJoinHand = bruCiuControlButton("hand.raised.fill", color: UIColor.black.withAlphaComponent(0.28), tint: .white, size: 58, action: #selector(ponllJoinSeatTapped))
        let aerErstLeaveButton = bruCiuControlButton("rectangle.portrait.and.arrow.right", color: UIColor(red: 1, green: 62/255, blue: 55/255, alpha: 1), tint: .white, size: 58, action: #selector(flckinkLeaveTapped))
        bruCiuponllLineBurst.layer.cornerRadius = 44
        bruCiuponllLineBurst.layer.borderWidth = 3
        bruCiuponllLineBurst.layer.borderColor = PonllyPalette.cyan.cgColor
        bruCiuponllLineBurst.backgroundColor = PonllyPalette.pink
        bruCiuponllLineBurst.translatesAutoresizingMaskIntoConstraints = false
        bruCiuponllLineBurst.addTarget(self, action: #selector(flckinkMicTapped), for: .touchUpInside)
        [ponllJoinHand, bruCiuponllLineBurst, aerErstLeaveButton].forEach(flckinkControlBar.addSubview)

        NSLayoutConstraint.activate([
            flckinkbruCiuColorSplash.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkbruCiuColorSplash.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkbruCiuColorSplash.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkbruCiuColorSplash.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ponllBackButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            ponllBackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            bruCiuMoreButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            bruCiuMoreButton.topAnchor.constraint(equalTo: ponllBackButton.topAnchor),
            flckinkRoomHeader.leadingAnchor.constraint(equalTo: ponllBackButton.trailingAnchor, constant: 10),
            flckinkRoomHeader.trailingAnchor.constraint(equalTo: bruCiuMoreButton.leadingAnchor, constant: -10),
            flckinkRoomHeader.centerYAnchor.constraint(equalTo: ponllBackButton.centerYAnchor),
            flckinkRoomHeader.heightAnchor.constraint(equalToConstant: 68),
            ponllHostAvatar.leadingAnchor.constraint(equalTo: flckinkRoomHeader.leadingAnchor, constant: 18),
            ponllHostAvatar.centerYAnchor.constraint(equalTo: flckinkRoomHeader.centerYAnchor),
            bruCiuHeaderStack.leadingAnchor.constraint(equalTo: ponllHostAvatar.trailingAnchor, constant: 14),
            bruCiuHeaderStack.trailingAnchor.constraint(equalTo: flckinkRoomHeader.trailingAnchor, constant: -18),
            bruCiuHeaderStack.centerYAnchor.constraint(equalTo: flckinkRoomHeader.centerYAnchor),
            aerErstTopicLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            aerErstTopicLabel.topAnchor.constraint(equalTo: flckinkRoomHeader.bottomAnchor, constant: 18),
            aerErstTopicLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 180),
            aerErstTopicLabel.heightAnchor.constraint(equalToConstant: 38),
            bruCiuSeatsStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            bruCiuSeatsStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            bruCiuSeatsStack.topAnchor.constraint(equalTo: aerErstTopicLabel.bottomAnchor, constant: 18),
            bruCiuInputBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bruCiuInputBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bruCiuInputBar.bottomAnchor.constraint(equalTo: flckinkControlBar.topAnchor, constant: -10),
            bruCiuInputBar.heightAnchor.constraint(equalToConstant: 64),
            flckinkControlBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkControlBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkControlBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkControlBar.heightAnchor.constraint(equalToConstant: 126),
            ponllJoinHand.leadingAnchor.constraint(equalTo: flckinkControlBar.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            ponllJoinHand.centerYAnchor.constraint(equalTo: bruCiuponllLineBurst.centerYAnchor),
            bruCiuponllLineBurst.centerXAnchor.constraint(equalTo: flckinkControlBar.centerXAnchor),
            bruCiuponllLineBurst.topAnchor.constraint(equalTo: flckinkControlBar.topAnchor, constant: 22),
            bruCiuponllLineBurst.widthAnchor.constraint(equalToConstant: 88),
            bruCiuponllLineBurst.heightAnchor.constraint(equalToConstant: 88),
            aerErstLeaveButton.trailingAnchor.constraint(equalTo: flckinkControlBar.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            aerErstLeaveButton.centerYAnchor.constraint(equalTo: bruCiuponllLineBurst.centerYAnchor),
            aerErstaerErstStrokeWeight.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstaerErstStrokeWeight.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstaerErstStrokeWeight.topAnchor.constraint(greaterThanOrEqualTo: bruCiuSeatsStack.bottomAnchor, constant: 12),
            aerErstaerErstStrokeWeight.bottomAnchor.constraint(equalTo: bruCiuInputBar.topAnchor, constant: -10),
            aerErstaerErstStrokeWeight.heightAnchor.constraint(greaterThanOrEqualToConstant: 148),
            flckinkponllPaintLayer.leadingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.leadingAnchor, constant: 16),
            flckinkponllPaintLayer.trailingAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.trailingAnchor, constant: -16),
            flckinkponllPaintLayer.topAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.topAnchor, constant: 14),
            flckinkponllPaintLayer.bottomAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.contentLayoutGuide.bottomAnchor, constant: -14),
            flckinkponllPaintLayer.widthAnchor.constraint(equalTo: aerErstaerErstStrokeWeight.frameLayoutGuide.widthAnchor, constant: -32)
        ])
        ponllRefreshflckinkStreetMural()
    }

    private func flckinkReloadSeats() {
        bruCiuSeatsStack.arrangedSubviews.forEach {
            bruCiuSeatsStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let aerErstSeats = ponllflckinkWallTexture.paintCloud + bruCiuOpenSeats(ponllBubbleLetter: max(6 - ponllflckinkWallTexture.paintCloud.count, 2))
        let ponllFirstRow = Array(aerErstSeats.prefix(2))
        bruCiuSeatsStack.addArrangedSubview(ponllSeatRow(ponllFirstRow, count: 2, compact: false))
        let bruCiuRemainingSeats = Array(aerErstSeats.dropFirst(2))
        for ponllRowIndex in stride(from: 0, to: bruCiuRemainingSeats.count, by: 4) {
            let flckinkEndIndex = min(ponllRowIndex + 4, bruCiuRemainingSeats.count)
            bruCiuSeatsStack.addArrangedSubview(ponllSeatRow(Array(bruCiuRemainingSeats[ponllRowIndex..<flckinkEndIndex]), count: 4, compact: true))
        }
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
            flckinkIcon.font = UIFont.systemFont(ofSize: 34, weight: .light)
            flckinkIcon.backgroundColor = UIColor.white.withAlphaComponent(0.28)
            flckinkIcon.layer.cornerRadius = flckinkCompact ? 26 : 35
            flckinkIcon.layer.borderWidth = 1.2
            flckinkIcon.layer.borderColor = UIColor.white.withAlphaComponent(0.85).cgColor
            flckinkIcon.clipsToBounds = true
            flckinkIcon.widthAnchor.constraint(equalToConstant: flckinkCompact ? 52 : 70).isActive = true
            flckinkIcon.heightAnchor.constraint(equalToConstant: flckinkCompact ? 52 : 70).isActive = true
            let aerbruCiuWheatpasteLayer = ponllSmallLabel("Join Seat", color: PonllyPalette.muted)
            aerbruCiuWheatpasteLayer.alpha = 0.78
            bruCiuStack.addArrangedSubview(flckinkIcon)
            bruCiuStack.addArrangedSubview(aerbruCiuWheatpasteLayer)
        } else {
            let ponllponllStencilBloom = PonllyponllTornEdge.flckinkChippedPaint(aerErstSeat.wheatpasteLayer)
            let bruCiuAvatarWrap = UIView()
            bruCiuAvatarWrap.translatesAutoresizingMaskIntoConstraints = false
            let aerErstAvatarSize: CGFloat = flckinkCompact ? 44 : 56
            let bruCiuaerErstCapControl = ErErstPaintLabView(user: ponllponllStencilBloom, size: aerErstAvatarSize)
            bruCiuaerErstCapControl.translatesAutoresizingMaskIntoConstraints = false
            bruCiuAvatarWrap.addSubview(bruCiuaerErstCapControl)
            let aerErstMuted = UIImageView(image: UIImage(named: aerErstSeat.wallMark ? "voice_mic_muted" : "voice_mic_on"))
            aerErstMuted.contentMode = .scaleAspectFit
            aerErstMuted.translatesAutoresizingMaskIntoConstraints = false
            bruCiuAvatarWrap.addSubview(aerErstMuted)
            NSLayoutConstraint.activate([
                bruCiuAvatarWrap.widthAnchor.constraint(equalToConstant: aerErstAvatarSize + 8),
                bruCiuAvatarWrap.heightAnchor.constraint(equalToConstant: aerErstAvatarSize + 8),
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
            flckinkMuralGrid.heightAnchor.constraint(equalToConstant: flckinkCompact ? 92 : 114),
            bruCiuStack.centerXAnchor.constraint(equalTo: flckinkMuralGrid.centerXAnchor),
            bruCiuStack.centerYAnchor.constraint(equalTo: flckinkMuralGrid.centerYAnchor)
        ])
        return flckinkMuralGrid
    }

    private func aerErstInputArea() -> UIView {
        let flckinkBar = UIView()
        flckinkBar.backgroundColor = .clear
        flckinkBar.translatesAutoresizingMaskIntoConstraints = false
        ponllbruCiuLetterFormld.attributedPlaceholder = NSAttributedString(string: "Say something...", attributes: [.foregroundColor: PonllyPalette.muted])
        ponllbruCiuLetterFormld.textColor = .white
        ponllbruCiuLetterFormld.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        ponllbruCiuLetterFormld.delegate = self
        ponllbruCiuLetterFormld.returnKeyType = .send
        ponllbruCiuLetterFormld.backgroundColor = UIColor.black.withAlphaComponent(0.36)
        ponllbruCiuLetterFormld.layer.cornerRadius = 30
        ponllbruCiuLetterFormld.layer.borderWidth = 1.2
        ponllbruCiuLetterFormld.layer.borderColor = UIColor.white.withAlphaComponent(0.55).cgColor
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

        NSLayoutConstraint.activate([
            ponllbruCiuLetterFormld.leadingAnchor.constraint(equalTo: flckinkBar.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            ponllbruCiuLetterFormld.centerYAnchor.constraint(equalTo: flckinkBar.centerYAnchor),
            ponllbruCiuLetterFormld.trailingAnchor.constraint(equalTo: aerErstflckinkNozzleCraft.leadingAnchor, constant: -10),
            ponllbruCiuLetterFormld.heightAnchor.constraint(equalToConstant: 54),
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
        aerErstLabel.font = PonllyFonts.muralForgepon(neonLab: 11)
        aerErstLabel.textAlignment = .center
        aerErstLabel.numberOfLines = 1
        return aerErstLabel
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
            ponllyShowThemeAlert(title: "Join A Seat First", message: "Tap the hand button before using the microphone.", actionTitle: "Got It", style: .bruCiuSilverSheen)
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
