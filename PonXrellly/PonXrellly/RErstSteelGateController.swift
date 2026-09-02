import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class RErstSteelGateController: UIViewController {
    private let ponllaerErstRainWall: BruCiuOutlinePlan
    private let bruCiuflckinkDawnWallLabel = UILabel()
    private weak var ponllAerosolTrail: UIScrollView?
    private var bruCiuStencilTrace = false

    init(bruCiuPaintedFence bruCiuPaintedFence: BruCiuOutlinePlan) {
        self.ponllaerErstRainWall = bruCiuPaintedFence
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tehfegmhei jSktlomrneo".ponllPaintaerErstHours
        view.backgroundColor = PonllyPalette.background
        let flckinkTitleStack = UIStackView()
        flckinkTitleStack.axis = .vertical
        flckinkTitleStack.alignment = .leading
        flckinkTitleStack.spacing = 1
        let ponllTitleLabel = UILabel()
        ponllTitleLabel.text = title
        ponllTitleLabel.textColor = .white
        ponllTitleLabel.font = PonllyFonts.muralForgepon(neonLab: 20)
        let aerErstSubtitleLabel = UILabel()
        aerErstSubtitleLabel.text = "VaObIcCdEf gChUiSjTkOlMnIoZpAqTrIsOtNu".ponllPaintaerErstHours
        aerErstSubtitleLabel.textColor = PonllyPalette.muted
        aerErstSubtitleLabel.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .regular)
        flckinkTitleStack.addArrangedSubview(ponllTitleLabel)
        flckinkTitleStack.addArrangedSubview(aerErstSubtitleLabel)
        navigationItem.titleView = flckinkTitleStack
        bruCiuBridgePillar()
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstbruCiuBrushMarker), name: .ponllybruCiuColorRackChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        ponllGraffitiDraftNavigationStyle()
        tabBarController?.tabBar.isHidden = true
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        guard !bruCiuStencilTrace,
              let ponllAerosolTrail,
              ponllAerosolTrail.bounds.width > 0,
              ponllAerosolTrail.contentSize.width > ponllAerosolTrail.bounds.width else { return }
        let flckinkMuralArc = min(
            ponllAerosolTrail.bounds.width * 0.12,
            ponllAerosolTrail.contentSize.width - ponllAerosolTrail.bounds.width
        )
        ponllAerosolTrail.setContentOffset(CGPoint(x: flckinkMuralArc, y: 0), animated: false)
        bruCiuStencilTrace = true
    }

    private func bruCiuBridgePillar() {
        let aerErstaerErstWarehouseWall = UIView()
        aerErstaerErstWarehouseWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstaerErstWarehouseWall)
        let ponllflckinkRoofLine = UIStackView()
        ponllflckinkRoofLine.axis = .vertical
        ponllflckinkRoofLine.spacing = 14
        ponllflckinkRoofLine.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstWarehouseWall.addSubview(ponllflckinkRoofLine)

        let aerErstBrowseLabel = UILabel()
        aerErstBrowseLabel.text = "Bprqorwssteu vTwhxeymzeAsB".ponllPaintaerErstHours
        aerErstBrowseLabel.textColor = PonllyPalette.muted
        aerErstBrowseLabel.font = PonllyFonts.muralForgepon(neonLab: 16)
        ponllflckinkRoofLine.addArrangedSubview(aerErstBrowseLabel)

        let flckinkThemeScroll = UIScrollView()
        flckinkThemeScroll.showsHorizontalScrollIndicator = false
        flckinkThemeScroll.alwaysBounceHorizontal = true
        flckinkThemeScroll.alwaysBounceVertical = false
        flckinkThemeScroll.isDirectionalLockEnabled = true
        flckinkThemeScroll.decelerationRate = .fast
        flckinkThemeScroll.translatesAutoresizingMaskIntoConstraints = false
        ponllAerosolTrail = flckinkThemeScroll
        let ponllThemeRow = UIStackView()
        ponllThemeRow.axis = .horizontal
        ponllThemeRow.alignment = .fill
        ponllThemeRow.spacing = 16
        ponllThemeRow.isLayoutMarginsRelativeArrangement = true
        ponllThemeRow.layoutMargins = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        ponllThemeRow.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeScroll.addSubview(ponllThemeRow)
        ponllflckinkRoofLine.addArrangedSubview(flckinkThemeScroll)

        let flckinkThemeTiles = AerErstLayerPlan.neonLab.map { ponllaerErstLayerMaske($0) }
        flckinkThemeTiles.forEach {
            ponllThemeRow.addArrangedSubview($0)
            $0.widthAnchor.constraint(equalTo: flckinkThemeScroll.frameLayoutGuide.widthAnchor, multiplier: 0.82).isActive = true
            $0.heightAnchor.constraint(equalTo: flckinkThemeScroll.frameLayoutGuide.heightAnchor).isActive = true
        }

        NSLayoutConstraint.activate([
            aerErstaerErstWarehouseWall.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            aerErstaerErstWarehouseWall.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            aerErstaerErstWarehouseWall.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            aerErstaerErstWarehouseWall.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ponllflckinkRoofLine.leadingAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.leadingAnchor, constant: 40),
            ponllflckinkRoofLine.trailingAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.trailingAnchor, constant: -40),
            ponllflckinkRoofLine.topAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.topAnchor, constant: 28),
            ponllflckinkRoofLine.bottomAnchor.constraint(lessThanOrEqualTo: aerErstaerErstWarehouseWall.bottomAnchor, constant: -24),
            flckinkThemeScroll.heightAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.heightAnchor, multiplier: 0.76),
            ponllThemeRow.leadingAnchor.constraint(equalTo: flckinkThemeScroll.contentLayoutGuide.leadingAnchor),
            ponllThemeRow.trailingAnchor.constraint(equalTo: flckinkThemeScroll.contentLayoutGuide.trailingAnchor),
            ponllThemeRow.topAnchor.constraint(equalTo: flckinkThemeScroll.contentLayoutGuide.topAnchor),
            ponllThemeRow.bottomAnchor.constraint(equalTo: flckinkThemeScroll.contentLayoutGuide.bottomAnchor),
            ponllThemeRow.heightAnchor.constraint(equalTo: flckinkThemeScroll.frameLayoutGuide.heightAnchor)
        ])
    }

    private func bruCiuponllPipeShadow() -> UIView {
        let flckinkStrip = UIView()
        flckinkStrip.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkStrip.layer.cornerRadius = 14
        flckinkStrip.layer.borderWidth = 1
        flckinkStrip.layer.borderColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 0.42).cgColor

        let aerErstaerErstDrainCover = UIImageView(image: UIImage(named: "streetMural"))
        aerErstaerErstDrainCover.translatesAutoresizingMaskIntoConstraints = false
        flckinkStrip.addSubview(aerErstaerErstDrainCover)

        bruCiuflckinkDawnWallLabel.textColor = .white
        bruCiuflckinkDawnWallLabel.font = PonllyFonts.muralForgepon(neonLab: 13)
        bruCiuflckinkDawnWallLabel.translatesAutoresizingMaskIntoConstraints = false
        flckinkStrip.addSubview(bruCiuflckinkDawnWallLabel)
        ponllflckinkCurbLineLabel()

        let ponllHintLabel = UILabel()
        ponllHintLabel.text = "CChDoEoFsGeH IaJ KrLoMoNmO PlQoRoSkT".ponllPaintaerErstHours
        ponllHintLabel.textColor = PonllyPalette.muted
        ponllHintLabel.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        ponllHintLabel.translatesAutoresizingMaskIntoConstraints = false
        flckinkStrip.addSubview(ponllHintLabel)

        NSLayoutConstraint.activate([
            flckinkStrip.heightAnchor.constraint(equalToConstant: 48),
            aerErstaerErstDrainCover.leadingAnchor.constraint(equalTo: flckinkStrip.leadingAnchor, constant: 14),
            aerErstaerErstDrainCover.centerYAnchor.constraint(equalTo: flckinkStrip.centerYAnchor),
            aerErstaerErstDrainCover.widthAnchor.constraint(equalToConstant: 22),
            aerErstaerErstDrainCover.heightAnchor.constraint(equalToConstant: 22),
            bruCiuflckinkDawnWallLabel.leadingAnchor.constraint(equalTo: aerErstaerErstDrainCover.trailingAnchor, constant: 8),
            bruCiuflckinkDawnWallLabel.centerYAnchor.constraint(equalTo: flckinkStrip.centerYAnchor),
            ponllHintLabel.trailingAnchor.constraint(equalTo: flckinkStrip.trailingAnchor, constant: -14),
            ponllHintLabel.centerYAnchor.constraint(equalTo: flckinkStrip.centerYAnchor),
            ponllHintLabel.leadingAnchor.constraint(greaterThanOrEqualTo: bruCiuflckinkDawnWallLabel.trailingAnchor, constant: 10)
        ])
        return flckinkStrip
    }

    private func ponllflckinkCurbLineLabel() {
        bruCiuflckinkDawnWallLabel.text = "\(PonllyponllTornEdge.flckinkShadowLayer.formatted()) "  + "Cyofiynjsu".ponllPaintaerErstHours
    }

    private func flckinkSpotlightCard(_ aerErstTheme: PonllPaintPlan) -> UIView {
        let ponlbruCiuSidewalkEdge = UIControl()
        ponlbruCiuSidewalkEdge.backgroundColor = PonllyPalette.panel
        ponlbruCiuSidewalkEdge.layer.cornerRadius = 18
        ponlbruCiuSidewalkEdge.layer.borderWidth = 1
        ponlbruCiuSidewalkEdge.layer.borderColor = PonllyPalette.line.cgColor
        ponlbruCiuSidewalkEdge.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addTarget(self, action: #selector(bruCiuPreviewSpotlight), for: .touchUpInside)

        let bruCiuImage = UIImageView(image: UIImage(named: aerErstTheme.aerErstTwoToneFill))
        bruCiuImage.isUserInteractionEnabled = false
        bruCiuImage.contentMode = .scaleAspectFill
        bruCiuImage.clipsToBounds = true
        bruCiuImage.layer.cornerRadius = 12
        bruCiuImage.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(bruCiuImage)
        let flckbruCiuNeonSpray = UILabel()
        flckbruCiuNeonSpray.isUserInteractionEnabled = false
        flckbruCiuNeonSpray.text = aerErstTheme.bruCiuSolidFill
        flckbruCiuNeonSpray.textColor = .black
        flckbruCiuNeonSpray.backgroundColor = .yellow
        flckbruCiuNeonSpray.font = PonllyFonts.graffitiForge(aerosolForge: 8)
        flckbruCiuNeonSpray.textAlignment = .center
        flckbruCiuNeonSpray.layer.cornerRadius = 8
        flckbruCiuNeonSpray.clipsToBounds = true
        flckbruCiuNeonSpray.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(flckbruCiuNeonSpray)
        let aerErstbruCiuPaintPeel = UILabel()
        aerErstbruCiuPaintPeel.isUserInteractionEnabled = false
        aerErstbruCiuPaintPeel.text = aerErstTheme.bruCiuMagentaBurstpobn
        aerErstbruCiuPaintPeel.textColor = .white
        aerErstbruCiuPaintPeel.font = PonllyFonts.muralForgepon(neonLab: 16)
        aerErstbruCiuPaintPeel.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(aerErstbruCiuPaintPeel)
        let ponllponllAlleyDoor = UILabel()
        ponllponllAlleyDoor.isUserInteractionEnabled = false
        ponllponllAlleyDoor.text = aerErstTheme.ponllCyanGlow
        ponllponllAlleyDoor.textColor = PonllyPalette.muted
        ponllponllAlleyDoor.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .regular)
        ponllponllAlleyDoor.numberOfLines = 2
        ponllponllAlleyDoor.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(ponllponllAlleyDoor)
        let bruCiuMetaLabel = UILabel()
        bruCiuMetaLabel.isUserInteractionEnabled = false
        bruCiuMetaLabel.text = "\(aerErstTheme.aerErstLayerBlend.formatted()) " + "Czositnusi".ponllPaintaerErstHours
        bruCiuMetaLabel.textColor = aerErstTheme.flckinkSplitFill
        bruCiuMetaLabel.font = PonllyFonts.steelGate(rollingShutter: 14)
        bruCiuMetaLabel.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(bruCiuMetaLabel)
        let flckinkflckinkPlasterDust = UIButton(type: .system)
        flckinkflckinkPlasterDust.setTitle("CUhVoWoXsYeZ".ponllPaintaerErstHours, for: .normal)
        flckinkflckinkPlasterDust.setTitleColor(.black, for: .normal)
        flckinkflckinkPlasterDust.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 10)
        flckinkflckinkPlasterDust.backgroundColor = PonllyPalette.cyan
        flckinkflckinkPlasterDust.layer.cornerRadius = 10
        flckinkflckinkPlasterDust.translatesAutoresizingMaskIntoConstraints = false
        flckinkflckinkPlasterDust.addTarget(self, action: #selector(bruCiuPreviewSpotlight), for: .touchUpInside)
        ponlbruCiuSidewalkEdge.addSubview(flckinkflckinkPlasterDust)

        NSLayoutConstraint.activate([
            ponlbruCiuSidewalkEdge.heightAnchor.constraint(equalToConstant: 196),
            bruCiuImage.leadingAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.leadingAnchor, constant: 12),
            bruCiuImage.trailingAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.trailingAnchor, constant: -12),
            bruCiuImage.topAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.topAnchor, constant: 12),
            bruCiuImage.heightAnchor.constraint(equalToConstant: 88),
            flckbruCiuNeonSpray.leadingAnchor.constraint(equalTo: bruCiuImage.leadingAnchor, constant: 8),
            flckbruCiuNeonSpray.topAnchor.constraint(equalTo: bruCiuImage.topAnchor, constant: 8),
            flckbruCiuNeonSpray.widthAnchor.constraint(greaterThanOrEqualToConstant: 88),
            flckbruCiuNeonSpray.heightAnchor.constraint(equalToConstant: 18),
            aerErstbruCiuPaintPeel.leadingAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.leadingAnchor, constant: 14),
            aerErstbruCiuPaintPeel.topAnchor.constraint(equalTo: bruCiuImage.bottomAnchor, constant: 12),
            ponllponllAlleyDoor.leadingAnchor.constraint(equalTo: aerErstbruCiuPaintPeel.leadingAnchor),
            ponllponllAlleyDoor.trailingAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.trailingAnchor, constant: -14),
            ponllponllAlleyDoor.topAnchor.constraint(equalTo: aerErstbruCiuPaintPeel.bottomAnchor, constant: 4),
            bruCiuMetaLabel.leadingAnchor.constraint(equalTo: aerErstbruCiuPaintPeel.leadingAnchor),
            bruCiuMetaLabel.bottomAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.bottomAnchor, constant: -16),
            flckinkflckinkPlasterDust.trailingAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.trailingAnchor, constant: -14),
            flckinkflckinkPlasterDust.bottomAnchor.constraint(equalTo: ponlbruCiuSidewalkEdge.bottomAnchor, constant: -12),
            flckinkflckinkPlasterDust.widthAnchor.constraint(equalToConstant: 82),
            flckinkflckinkPlasterDust.heightAnchor.constraint(equalToConstant: 32)
        ])
        return ponlbruCiuSidewalkEdge
    }

    private func ponllaerErstLayerMaske(_ bruCiuTheme: PonllPaintPlan) -> UIControl {
        let flckinkTile = PoponllRollingShutterTile(stencilMood: bruCiuTheme)
        flckinkTile.addTarget(self, action: #selector(flckinkThemeTileTapped(_:)), for: .touchUpInside)
        return flckinkTile
    }

    @objc private func bruCiuPreviewSpotlight() {
        guard let aerErstTheme = AerErstLayerPlan.neonLab.first else { return }
        aerErstShowThemeConfirm(aerErstTheme)
    }

    @objc private func flckinkThemeTileTapped(_ ponllSender: PoponllRollingShutterTile) {
        aerErstShowThemeConfirm(ponllSender.stencilArc)
    }

    private func aerErstShowThemeConfirm(_ bruCiuTheme: PonllPaintPlan) {
        let flckinkflckinkPaintShelf = PonllysprayRhythmController(bruCiuTheme) { [weak self] ponllSelectedTheme in
            guard let self else { return }
            if PonllyponllTornEdge.flckinkShadowLayer < ponllSelectedTheme.aerErstLayerBlend {
                self.aerErstSketchRush("A0d1d2 3c4o5i6n7s8 9taob cudnelfogchki jtkhlimsn otphqermset".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuSilverSheen)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    let bruCiuStore = PoonllFineLineController()
                    bruCiuStore.hidesBottomBarWhenPushed = true
                    self.navigationController?.pushViewController(bruCiuStore, animated: true)
                }
                return
            }
            self.aerErstSketchRush("PurvewpxayrziAnBgC DrEoFoGmH.I.J.K".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.75)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                guard PonllyponllTornEdge.aerErstHighlightStroke(ponllSelectedTheme.aerErstLayerBlend) else {
                    self.aerErstSketchRush("ALdMdN OcPoQiRnSsT UtVoW XuYnZl0o1c2k3 4t5h6i7s8 9tahbecmdee".ponllPaintaerErstHours, bruCiuLetterForm: .bruCiuSilverSheen)
                    let aerErstStore = PoonllFineLineController()
                    aerErstStore.hidesBottomBarWhenPushed = true
                    self.navigationController?.pushViewController(aerErstStore, animated: true)
                    return
                }
                self.navigationController?.pushViewController(PonllyurbanCanvasController(freshPiece: self.ponllaerErstRainWall, gritPiece: ponllSelectedTheme), animated: true)
            }
        }
        flckinkflckinkPaintShelf.modalPresentationStyle = .overFullScreen
        flckinkflckinkPaintShelf.modalTransitionStyle = .crossDissolve
        present(flckinkflckinkPaintShelf, animated: true)
    }

    @objc private func aerErstbruCiuBrushMarker() {
        ponllflckinkCurbLineLabel()
    }
}
