import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class RErstSteelGateController: UIViewController {
    private let ponllaerErstRainWall: BruCiuOutlinePlan
    private let bruCiuflckinkDawnWallLabel = UILabel()

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
        title = "Theme Store"
        view.backgroundColor = PonllyPalette.background
        bruCiuBridgePillar()
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstbruCiuBrushMarker), name: .ponllybruCiuColorRackChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiuBridgePillar() {
        let aerErstaerErstWarehouseWall = UIScrollView()
        aerErstaerErstWarehouseWall.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstaerErstWarehouseWall)
        let ponllflckinkRoofLine = UIStackView()
        ponllflckinkRoofLine.axis = .vertical
        ponllflckinkRoofLine.spacing = 16
        ponllflckinkRoofLine.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstWarehouseWall.addSubview(ponllflckinkRoofLine)

        ponllflckinkRoofLine.addArrangedSubview(bruCiuponllPipeShadow())
        if let bruCiuSpotlight = AerErstLayerPlan.flckinkShapeStackopl.first {
            ponllflckinkRoofLine.addArrangedSubview(flckinkSpotlightCard(bruCiuSpotlight))
        }
        let aerErstBrowseLabel = UILabel()
        aerErstBrowseLabel.text = "Browse Themes"
        aerErstBrowseLabel.textColor = PonllyPalette.muted
        aerErstBrowseLabel.font = PonllyFonts.muralForgepon(neonLab: 11)
        ponllflckinkRoofLine.addArrangedSubview(aerErstBrowseLabel)

        let bruCiuThemeGrid = UIStackView()
        bruCiuThemeGrid.axis = .vertical
        bruCiuThemeGrid.spacing = 12
        let flckinkOtherThemes = Array(AerErstLayerPlan.flckinkShapeStackopl.dropFirst())
        for aerErstIndex in stride(from: 0, to: flckinkOtherThemes.count, by: 2) {
            let ponllThemeRow = UIStackView()
            ponllThemeRow.axis = .horizontal
            ponllThemeRow.spacing = 12
            ponllThemeRow.distribution = .fillEqually
            ponllThemeRow.addArrangedSubview(ponllaerErstLayerMaske(flckinkOtherThemes[aerErstIndex]))
            if aerErstIndex + 1 < flckinkOtherThemes.count {
                ponllThemeRow.addArrangedSubview(ponllaerErstLayerMaske(flckinkOtherThemes[aerErstIndex + 1]))
            } else {
                ponllThemeRow.addArrangedSubview(UIView())
            }
            bruCiuThemeGrid.addArrangedSubview(ponllThemeRow)
        }
        ponllflckinkRoofLine.addArrangedSubview(bruCiuThemeGrid)

        NSLayoutConstraint.activate([
            aerErstaerErstWarehouseWall.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            aerErstaerErstWarehouseWall.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            aerErstaerErstWarehouseWall.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            aerErstaerErstWarehouseWall.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ponllflckinkRoofLine.leadingAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.frameLayoutGuide.leadingAnchor, constant: 20),
            ponllflckinkRoofLine.trailingAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.frameLayoutGuide.trailingAnchor, constant: -20),
            ponllflckinkRoofLine.topAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.contentLayoutGuide.topAnchor, constant: 16),
            ponllflckinkRoofLine.bottomAnchor.constraint(equalTo: aerErstaerErstWarehouseWall.contentLayoutGuide.bottomAnchor, constant: -30)
        ])
    }

    private func bruCiuponllPipeShadow() -> UIView {
        let flckinkStrip = UIView()
        flckinkStrip.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkStrip.layer.cornerRadius = 14
        flckinkStrip.layer.borderWidth = 1
        flckinkStrip.layer.borderColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 0.42).cgColor

        let aerErstaerErstDrainCover = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        aerErstaerErstDrainCover.translatesAutoresizingMaskIntoConstraints = false
        flckinkStrip.addSubview(aerErstaerErstDrainCover)

        bruCiuflckinkDawnWallLabel.textColor = .white
        bruCiuflckinkDawnWallLabel.font = PonllyFonts.muralForgepon(neonLab: 13)
        bruCiuflckinkDawnWallLabel.translatesAutoresizingMaskIntoConstraints = false
        flckinkStrip.addSubview(bruCiuflckinkDawnWallLabel)
        ponllflckinkCurbLineLabel()

        let ponllHintLabel = UILabel()
        ponllHintLabel.text = "Choose a room look"
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
        bruCiuflckinkDawnWallLabel.text = "\(PonllyponllTornEdge.flckinkShadowLayer.formatted()) Coins"
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
        bruCiuMetaLabel.text = "\(aerErstTheme.aerErstLayerBlend.formatted()) Coins"
        bruCiuMetaLabel.textColor = aerErstTheme.flckinkSplitFill
        bruCiuMetaLabel.font = PonllyFonts.steelGate(rollingShutter: 14)
        bruCiuMetaLabel.translatesAutoresizingMaskIntoConstraints = false
        ponlbruCiuSidewalkEdge.addSubview(bruCiuMetaLabel)
        let flckinkflckinkPlasterDust = UIButton(type: .system)
        flckinkflckinkPlasterDust.setTitle("Choose", for: .normal)
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
        guard let aerErstTheme = AerErstLayerPlan.flckinkShapeStackopl.first else { return }
        aerErstShowThemeConfirm(aerErstTheme)
    }

    @objc private func flckinkThemeTileTapped(_ ponllSender: PoponllRollingShutterTile) {
        aerErstShowThemeConfirm(ponllSender.stencilArc)
    }

    private func aerErstShowThemeConfirm(_ bruCiuTheme: PonllPaintPlan) {
        let flckinkflckinkPaintShelf = PonllysprayRhythmController(bruCiuTheme) { [weak self] ponllSelectedTheme in
            guard let self else { return }
            if PonllyponllTornEdge.flckinkShadowLayer < ponllSelectedTheme.aerErstLayerBlend {
                self.aerErstSketchRush("Add coins to unlock this theme", bruCiuLetterForm: .bruCiuSilverSheen)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    let bruCiuStore = PoonllFineLineController()
                    bruCiuStore.hidesBottomBarWhenPushed = true
                    self.navigationController?.pushViewController(bruCiuStore, animated: true)
                }
                return
            }
            self.aerErstSketchRush("Preparing room...", bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.75)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                guard PonllyponllTornEdge.aerErstHighlightStroke(ponllSelectedTheme.aerErstLayerBlend) else {
                    self.aerErstSketchRush("Add coins to unlock this theme", bruCiuLetterForm: .bruCiuSilverSheen)
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
