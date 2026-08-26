import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystencilBloomController: UIViewController {
    private let ponllScrollCanvas = UIScrollView()
    private let bruCiuStackPath = UIStackView()
    private let flckinksqueezeMarkerColumn = UIStackView()
    private let ponllMarkerSignal = UIRefreshControl()
    private var bruCiuStencilSignal = false
    private var aerErstSelectedCategory: PonllyVoLobbyCategory = .bruCiuSolidFill
    private var ponllCategoryButtons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        bruCiuSetup()
        flckinkReloadRooms()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = false
        flckinkReloadRooms()
    }

    private func bruCiuSetup() {
        let ponllBackgroundWash = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 10/255, green: 12/255, blue: 17/255, alpha: 1)])
        view.addSubview(ponllBackgroundWash)
        ponllBackgroundWash.woodPanelPonlly(steelGate: view)

        let ponllHeaderCanvas = UIStackView()
        ponllHeaderCanvas.axis = .vertical
        ponllHeaderCanvas.spacing = 12
        ponllHeaderCanvas.backgroundColor = PonllyPalette.background.withAlphaComponent(0.98)
        ponllHeaderCanvas.layer.zPosition = 20
        ponllHeaderCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllHeaderCanvas)

        ponllScrollCanvas.alwaysBounceVertical = true
        aerErstChromeSignal()
        ponllScrollCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllScrollCanvas)

        bruCiuStackPath.axis = .vertical
        bruCiuStackPath.spacing = 18
        bruCiuStackPath.translatesAutoresizingMaskIntoConstraints = false
        ponllScrollCanvas.addSubview(bruCiuStackPath)

        let flckinkHeaderStack = UIStackView()
        flckinkHeaderStack.axis = .vertical
        flckinkHeaderStack.spacing = 6
        let aerErstTitleMark = UILabel()
        aerErstTitleMark.text = "VwoxiyczeA BRCoDoEmF".ponllPaintaerErstHours
        aerErstTitleMark.textColor = .white
        aerErstTitleMark.font = PonllyFonts.muralForgepon(neonLab: 32)
        let ponllSubtitleMark = UILabel()
        ponllSubtitleMark.text = "DGrHoIpJ KiLnMtNoO PwQaRlSlT-UtVaWlXkY Zs0e1s2s3i4o5n6s7 8w9iatbhc dwerfigtheirjsk,l mcnroiptqircsst,u vawnxdy zpArBoCcDeEsFsG HcIrJeKwLsM.N".ponllPaintaerErstHours
        ponllSubtitleMark.textColor = PonllyPalette.muted
        ponllSubtitleMark.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        ponllSubtitleMark.numberOfLines = 0
        flckinkHeaderStack.addArrangedSubview(aerErstTitleMark)
        flckinkHeaderStack.addArrangedSubview(ponllSubtitleMark)
        ponllHeaderCanvas.addArrangedSubview(flckinkHeaderStack)
        ponllHeaderCanvas.addArrangedSubview(ponllCategoryRow())
        flckinksqueezeMarkerColumn.axis = .vertical
        flckinksqueezeMarkerColumn.spacing = 14
        bruCiuStackPath.addArrangedSubview(flckinksqueezeMarkerColumn)

        NSLayoutConstraint.activate([
            ponllHeaderCanvas.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllHeaderCanvas.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            ponllHeaderCanvas.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            ponllScrollCanvas.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllScrollCanvas.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllScrollCanvas.topAnchor.constraint(equalTo: ponllHeaderCanvas.bottomAnchor, constant: 16),
            ponllScrollCanvas.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuStackPath.leadingAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.leadingAnchor, constant: 20),
            bruCiuStackPath.trailingAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.trailingAnchor, constant: -20),
            bruCiuStackPath.topAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.topAnchor),
            bruCiuStackPath.bottomAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.bottomAnchor, constant: -96)
        ])
    }

    private func aerErstChromeSignal() {
        ponllMarkerSignal.tintColor = PonllyPalette.cyan
        ponllMarkerSignal.attributedTitle = NSAttributedString(
            string: "Rpeofnrlelsbhriuncgi areoroemrss.t.f.l".ponllPaintaerErstHours,
            attributes: [
                .foregroundColor: PonllyPalette.muted,
                .font: PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
            ]
        )
        ponllMarkerSignal.addTarget(self, action: #selector(flckinkNeonSignal), for: .valueChanged)
        ponllScrollCanvas.refreshControl = ponllMarkerSignal
    }

    private func ponllCategoryRow() -> UIStackView {
        let bruCiuCategoryRow = UIStackView()
        bruCiuCategoryRow.axis = .horizontal
        bruCiuCategoryRow.spacing = 8
        bruCiuCategoryRow.distribution = .fillEqually
        ponllCategoryButtons = PonllyVoLobbyCategory.allCases.enumerated().map { flckinkIndex, aerErstCategory in
            let ponllCategoryButton = UIButton(type: .system)
            ponllCategoryButton.tag = flckinkIndex
            ponllCategoryButton.setTitle(aerErstCategory.rawValue, for: .normal)
            ponllCategoryButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 10)
            ponllCategoryButton.layer.cornerRadius = 17
            ponllCategoryButton.layer.borderWidth = 1
            ponllCategoryButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
            ponllCategoryButton.addTarget(self, action: #selector(bruCiuCategoryTapped(_:)), for: .touchUpInside)
            bruCiuCategoryRow.addArrangedSubview(ponllCategoryButton)
            return ponllCategoryButton
        }
        aerErstglossFinishCategories()
        return bruCiuCategoryRow
    }

    private func aerErstglossFinishCategories() {
        for (flckinkIndex, ponllCategoryButton) in ponllCategoryButtons.enumerated() {
            let bruCiuCategory = PonllyVoLobbyCategory.allCases[flckinkIndex]
            let aerErstSelected = bruCiuCategory == aerErstSelectedCategory
            ponllCategoryButton.backgroundColor = aerErstSelected ? PonllyPalette.pink : PonllyPalette.panel
            ponllCategoryButton.setTitleColor(aerErstSelected ? .white : PonllyPalette.muted, for: .normal)
            ponllCategoryButton.layer.borderColor = (aerErstSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func flckinkReloadRooms() {
        flckinksqueezeMarkerColumn.arrangedSubviews.forEach {
            flckinksqueezeMarkerColumn.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let ponllmatteFinish = PonllyponllTornEdge.aerErstSoftCap(ponllCleanOutline: aerErstSelectedCategory)
        guard !ponllmatteFinish.isEmpty else {
            flckinksqueezeMarkerColumn.addArrangedSubview(bruCiuEmptyState())
            return
        }
        ponllmatteFinish.forEach { flckinksqueezeMarkerColumn.addArrangedSubview(flckinkRoomCard($0)) }
    }

    private func flckinkRoomCard(_ ponllRoom: PonllyaerErstWeatheredPaperm) -> UIControl {
        let bruCiublackOutline = UIControl()
        bruCiublackOutline.backgroundColor = PonllyPalette.panel
        bruCiublackOutline.layer.cornerRadius = 22
        bruCiublackOutline.layer.borderWidth = 1
        bruCiublackOutline.layer.borderColor = PonllyPalette.line.cgColor
        bruCiublackOutline.clipsToBounds = true
        bruCiublackOutline.addAction(UIAction { [weak self] _ in
            self?.aerErstOpen(ponllRoom)
        }, for: .touchUpInside)

        let flckinklimeStroke = UIImageView(image: UIImage(named: ponllRoom.aerosolHaze))
        flckinklimeStroke.contentMode = .scaleAspectFill
        flckinklimeStroke.clipsToBounds = true
        flckinklimeStroke.isUserInteractionEnabled = false
        flckinklimeStroke.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(flckinklimeStroke)
        let aerErstShadeLayer = PonllyponllCyanGlowView(bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.05), UIColor.black.withAlphaComponent(0.78)], CGPoint(x: 0.5, y: 0), CGPoint(x: 0.5, y: 1))
        aerErstShadeLayer.isUserInteractionEnabled = false
        aerErstShadeLayer.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(aerErstShadeLayer)
        let ponllmagentaBurst = UIButton(type: .system)
        ponllmagentaBurst.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        ponllmagentaBurst.tintColor = .white
        ponllmagentaBurst.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.86)
        ponllmagentaBurst.layer.cornerRadius = 20
        ponllmagentaBurst.layer.borderWidth = 1
        ponllmagentaBurst.layer.borderColor = UIColor.white.withAlphaComponent(0.18).cgColor
        ponllmagentaBurst.translatesAutoresizingMaskIntoConstraints = false
        ponllmagentaBurst.addAction(UIAction { [weak self] _ in
            self?.ponllmuralGrid(pasteupEcho: ponllRoom)
        }, for: .touchUpInside)
        bruCiublackOutline.addSubview(ponllmagentaBurst)

        let bruCiuHost = PonllyponllTornEdge.flckinkChippedPaint(ponllRoom.gradientFill)
        let flckinkAvatarButton = UIControl()
        flckinkAvatarButton.translatesAutoresizingMaskIntoConstraints = false
        flckinkAvatarButton.addAction(UIAction { [weak self] _ in
            self?.bruCiuOpenArtist(bruCiuHost)
        }, for: .touchUpInside)
        bruCiublackOutline.addSubview(flckinkAvatarButton)
        let aerErstcolorFade = ErErstPaintLabView(user: bruCiuHost, size: 44)
        aerErstcolorFade.isUserInteractionEnabled = false
        flckinkAvatarButton.addSubview(aerErstcolorFade)
        let ponllroughFill = UILabel()
        ponllroughFill.text = ponllRoom.nozzleCraft
        ponllroughFill.textColor = .white
        ponllroughFill.font = PonllyFonts.muralForgepon(neonLab: 17)
        ponllroughFill.numberOfLines = 2
        ponllroughFill.isUserInteractionEnabled = false
        ponllroughFill.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(ponllroughFill)
        let bruCiuRoomTopic = UILabel()
        bruCiuRoomTopic.text = ponllRoom.colorFade
        bruCiuRoomTopic.textColor = UIColor.white.withAlphaComponent(0.76)
        bruCiuRoomTopic.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        bruCiuRoomTopic.numberOfLines = 2
        bruCiuRoomTopic.isUserInteractionEnabled = false
        bruCiuRoomTopic.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(bruCiuRoomTopic)
        let flckinklayerBlend = UILabel()
        flckinklayerBlend.text = "\(ponllRoom.paintCloud.count) seats  •  \(ponllRoom.sprayHalo.count) listening  •  \(bruCiuHost.aerosolDream)"
        flckinklayerBlend.textColor = ponllRoom.whitePop
        flckinklayerBlend.font = PonllyFonts.steelGate(rollingShutter: 11)
        flckinklayerBlend.isUserInteractionEnabled = false
        flckinklayerBlend.translatesAutoresizingMaskIntoConstraints = false
        bruCiublackOutline.addSubview(flckinklayerBlend)

        NSLayoutConstraint.activate([
            bruCiublackOutline.heightAnchor.constraint(equalToConstant: 210),
            flckinklimeStroke.leadingAnchor.constraint(equalTo: bruCiublackOutline.leadingAnchor),
            flckinklimeStroke.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor),
            flckinklimeStroke.topAnchor.constraint(equalTo: bruCiublackOutline.topAnchor),
            flckinklimeStroke.bottomAnchor.constraint(equalTo: bruCiublackOutline.bottomAnchor),
            aerErstShadeLayer.leadingAnchor.constraint(equalTo: bruCiublackOutline.leadingAnchor),
            aerErstShadeLayer.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor),
            aerErstShadeLayer.topAnchor.constraint(equalTo: bruCiublackOutline.topAnchor),
            aerErstShadeLayer.bottomAnchor.constraint(equalTo: bruCiublackOutline.bottomAnchor),
            ponllmagentaBurst.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -14),
            ponllmagentaBurst.topAnchor.constraint(equalTo: bruCiublackOutline.topAnchor, constant: 14),
            ponllmagentaBurst.widthAnchor.constraint(equalToConstant: 40),
            ponllmagentaBurst.heightAnchor.constraint(equalToConstant: 40),
            flckinkAvatarButton.leadingAnchor.constraint(equalTo: bruCiublackOutline.leadingAnchor, constant: 16),
            flckinkAvatarButton.bottomAnchor.constraint(equalTo: bruCiublackOutline.bottomAnchor, constant: -18),
            flckinkAvatarButton.widthAnchor.constraint(equalToConstant: 44),
            flckinkAvatarButton.heightAnchor.constraint(equalToConstant: 44),
            aerErstcolorFade.leadingAnchor.constraint(equalTo: flckinkAvatarButton.leadingAnchor),
            aerErstcolorFade.trailingAnchor.constraint(equalTo: flckinkAvatarButton.trailingAnchor),
            aerErstcolorFade.topAnchor.constraint(equalTo: flckinkAvatarButton.topAnchor),
            aerErstcolorFade.bottomAnchor.constraint(equalTo: flckinkAvatarButton.bottomAnchor),
            ponllroughFill.leadingAnchor.constraint(equalTo: flckinkAvatarButton.trailingAnchor, constant: 12),
            ponllroughFill.trailingAnchor.constraint(equalTo: ponllmagentaBurst.leadingAnchor, constant: -12),
            ponllroughFill.topAnchor.constraint(greaterThanOrEqualTo: bruCiublackOutline.topAnchor, constant: 94),
            bruCiuRoomTopic.leadingAnchor.constraint(equalTo: ponllroughFill.leadingAnchor),
            bruCiuRoomTopic.trailingAnchor.constraint(equalTo: bruCiublackOutline.trailingAnchor, constant: -16),
            bruCiuRoomTopic.topAnchor.constraint(equalTo: ponllroughFill.bottomAnchor, constant: 8),
            flckinklayerBlend.leadingAnchor.constraint(equalTo: ponllroughFill.leadingAnchor),
            flckinklayerBlend.trailingAnchor.constraint(equalTo: bruCiuRoomTopic.trailingAnchor),
            flckinklayerBlend.bottomAnchor.constraint(equalTo: flckinkAvatarButton.bottomAnchor)
        ])
        return bruCiublackOutline
    }

    private func bruCiuEmptyState() -> UIView {
        let aerErstEmptyPanel = UIStackView()
        aerErstEmptyPanel.axis = .vertical
        aerErstEmptyPanel.alignment = .center
        aerErstEmptyPanel.spacing = 12
        aerErstEmptyPanel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        aerErstEmptyPanel.layer.cornerRadius = 22
        aerErstEmptyPanel.layer.borderWidth = 1
        aerErstEmptyPanel.layer.borderColor = PonllyPalette.line.cgColor
        aerErstEmptyPanel.layoutMargins = UIEdgeInsets(top: 36, left: 20, bottom: 36, right: 20)
        aerErstEmptyPanel.isLayoutMarginsRelativeArrangement = true
        let ponllfatCap = UIImageView(image: UIImage(systemName: "mic.slash"))
        ponllfatCap.tintColor = PonllyPalette.cyan
        ponllfatCap.widthAnchor.constraint(equalToConstant: 38).isActive = true
        ponllfatCap.heightAnchor.constraint(equalToConstant: 38).isActive = true
        let bruCiuEmptyTitle = UILabel()
        bruCiuEmptyTitle.text = "NOoP QrRoSoTmUsV WfXrYoZm0 1f2o3l4l5o6w7e8d9 aabrctdiesftgsh".ponllPaintaerErstHours
        bruCiuEmptyTitle.textColor = .white
        bruCiuEmptyTitle.textAlignment = .center
        bruCiuEmptyTitle.font = PonllyFonts.muralForgepon(neonLab: 16)
        let flckinkpaintRun = UILabel()
        flckinkpaintRun.text = "Fiojlkllomwn ompoqrres twuavlwlx ywzrAiBtCeDrEsF GtHoI JsKeLeM NtOhPeQiRrS TlUiVvWeX YvZo0i1c2e3 4s5p6a7c8e9sa bhcedreef.g".ponllPaintaerErstHours
        flckinkpaintRun.textColor = PonllyPalette.muted
        flckinkpaintRun.textAlignment = .center
        flckinkpaintRun.numberOfLines = 0
        flckinkpaintRun.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        [ponllfatCap, bruCiuEmptyTitle, flckinkpaintRun].forEach(aerErstEmptyPanel.addArrangedSubview)
        return aerErstEmptyPanel
    }

    private func aerErstOpen(_ letterForm: PonllyaerErstWeatheredPaperm) {
        flckinkPrimerCoatponlu("Ehnitjekrlimnngo prqorosmt.u.v.w".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            let bruCiuconcreteMuse = PwheatpasteLayerController(aerErstConcreteMuse: letterForm)
            bruCiuconcreteMuse.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(bruCiuconcreteMuse, animated: true)
        }
    }

    private func bruCiuOpenArtist(_ neonDrip: PonllyaerErstTwoToneFillr) {
        guard neonDrip.graffitiPulse != PonllyponllTornEdge.currentUserId else { return }
        let flckinkcolorSplash = FlckinkPrimerCoatController(user: neonDrip)
        flckinkcolorSplash.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(flckinkcolorSplash, animated: true)
    }

    private func ponllmuralGrid(pasteupEcho bruCiuRoom: PonllyaerErstWeatheredPaperm) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let             capControl = PonllyroughFillController(lineSpray: bruCiuRoom)
                        capControl.fadeSpray = { [weak self] in
                self?.aerErstSketchRush("RxeypzoArBtC DsEuFbGmHiItJtKeLdM".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
            }
                        capControl.modalPresentationStyle = .overFullScreen
                        capControl.modalTransitionStyle = .crossDissolve
            self.present(            capControl, animated: true)
        }
    }

    @objc private func bruCiuCategoryTapped(_ flckinkSender: UIButton) {
        aerErstSelectedCategory = PonllyVoLobbyCategory.allCases[flckinkSender.tag]
        aerErstglossFinishCategories()
        flckinkReloadRooms()
    }

    @objc private func flckinkNeonSignal() {
        guard !bruCiuStencilSignal else { return }
        bruCiuStencilSignal = true
        aerErstSketchRush("Rpeofnrlelsbhriuncgi aveoriecres trfolocmksi.n.k.p".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.72)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.88) { [weak self] in
            guard let self else { return }
            self.flckinkReloadRooms()
            self.ponllMarkerSignal.endRefreshing()
            self.bruCiuStencilSignal = false
            self.aerErstSketchRush("Vpooinclel brrouocmisa eurpedrasttefdl".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill, flckinkFillPattern: 1.1)
        }
    }
}
