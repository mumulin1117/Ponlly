import UIKit

@MainActor
final class PbruCiuStencilLabController: UIViewController {
    private var ponllMuralBloom: PonllyBattle
    private let bruCiuStencilFlicker = UIScrollView()
    private let flckinkMarkerFlash = UIStackView()
    private let aerErstChromeFuse = UITextField()
    private weak var ponllNeonTrace: UIStackView?
    private weak var bruCiuTextureTrail: UILabel?
    private weak var ponllPaintFlow: UIView?
    private weak var bruCiuPaintBloom: UIView?
    private weak var aerErstPaintBloom: UIView?

    var flckinkPaintFlow: UIView? {
        view.layoutIfNeeded()
        return ponllPaintFlow
    }

    init(flckinkPaintVeil: PonllyBattle) {
        self.ponllMuralBloom = flckinkPaintVeil
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        ponllInkAura()
        bruCiuWallEcho()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkInkMotion(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstWallCascade(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        ponllGraffitiDraftNavigationStyle()
        tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard isMovingFromParent else { return }

        navigationController?.setNavigationBarHidden(true, animated: false)
        transitionCoordinator?.animate(alongsideTransition: nil) { [weak self] aerErstPaintMotion in
            guard aerErstPaintMotion.isCancelled else { return }
            self?.navigationController?.setNavigationBarHidden(false, animated: false)
            self?.ponllGraffitiDraftNavigationStyle()
        }
    }

    private func ponllInkAura() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: PonllyFonts.muralForgepon(neonLab: 16)
        ]
        title = ponllMuralBloom.nozzleCraft
        let bruCiuDripMuse = UIButton(type: .system)
        bruCiuDripMuse.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        bruCiuDripMuse.ponllGraffitiDraftBackStyle()
        bruCiuDripMuse.tintColor = .white
        bruCiuDripMuse.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        bruCiuDripMuse.layer.cornerRadius = 18
        bruCiuDripMuse.layer.borderWidth = 1
        bruCiuDripMuse.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuDripMuse.translatesAutoresizingMaskIntoConstraints = false
        bruCiuDripMuse.addTarget(self, action: #selector(ponllDripMuse), for: .touchUpInside)
        bruCiuDripMuse.widthAnchor.constraint(equalToConstant: 36).isActive = true
        bruCiuDripMuse.heightAnchor.constraint(equalToConstant: 36).isActive = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: bruCiuDripMuse)
        let ponllDripPiece = UIButton(type: .system)
        ponllDripPiece.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        ponllDripPiece.tintColor = .white
        ponllDripPiece.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        ponllDripPiece.layer.cornerRadius = 18
        ponllDripPiece.layer.borderWidth = 1
        ponllDripPiece.layer.borderColor = PonllyPalette.line.cgColor
        ponllDripPiece.translatesAutoresizingMaskIntoConstraints = false
        ponllDripPiece.addTarget(self, action: #selector(bruCiuSketchRhythm), for: .touchUpInside)
        ponllDripPiece.widthAnchor.constraint(equalToConstant: 36).isActive = true
        ponllDripPiece.heightAnchor.constraint(equalToConstant: 36).isActive = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: ponllDripPiece)
    }

    @objc private func ponllDripMuse() {
        navigationController?.popViewController(animated: true)
    }

    private func bruCiuWallEcho() {
        let aerErstLayerMask = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 13/255, green: 18/255, blue: 20/255, alpha: 1)])
        view.addSubview(aerErstLayerMask)
        aerErstLayerMask.woodPanelPonlly(steelGate: view)
        bruCiuStencilFlicker.keyboardDismissMode = .interactive
        view.addSubview(bruCiuStencilFlicker)
        bruCiuStencilFlicker.woodPanelPonlly(steelGate: view)
        let ponllInkSpark = UITapGestureRecognizer(target: self, action: #selector(aerErstColorGlow))
        ponllInkSpark.cancelsTouchesInView = false
        view.addGestureRecognizer(ponllInkSpark)
        flckinkMarkerFlash.axis = .vertical
        flckinkMarkerFlash.spacing = 24
        flckinkMarkerFlash.translatesAutoresizingMaskIntoConstraints = false
        bruCiuStencilFlicker.addSubview(flckinkMarkerFlash)
        NSLayoutConstraint.activate([
            flckinkMarkerFlash.leadingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.leadingAnchor, constant: 16),
            flckinkMarkerFlash.trailingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.trailingAnchor, constant: -16),
            flckinkMarkerFlash.topAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.topAnchor, constant: 24),
            flckinkMarkerFlash.bottomAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.bottomAnchor, constant: -40)
        ])

        let ponllPaintBloom = flckinkAerosolSignal()
        bruCiuPaintBloom = ponllPaintBloom
        flckinkMarkerFlash.addArrangedSubview(ponllPaintBloom)
        let flckinkPaintFlow = aerErstMuralQuest()
        ponllPaintFlow = flckinkPaintFlow
        flckinkMarkerFlash.addArrangedSubview(flckinkPaintFlow)
        flckinkMarkerFlash.addArrangedSubview(ponllStencilCue())
        if ponllMuralBloom.bubbleLetter == .flckinkWallTexturepoj || ponllMuralBloom.colorSplash == nil {
            flckinkMarkerFlash.addArrangedSubview(aerErstPaintLean())
        } else {
            flckinkMarkerFlash.addArrangedSubview(flckinkSketchKick())
        }
        let flckinkRollerPaste = PonllybruCiuUtilityBoxView(aVotes: ponllMuralBloom.alleyCanvas, bVotes: ponllMuralBloom.railYard)
        flckinkRollerPaste.heightAnchor.constraint(equalToConstant: 42).isActive = true
        aerErstPaintBloom = flckinkRollerPaste
        flckinkMarkerFlash.addArrangedSubview(flckinkRollerPaste)
        flckinkMarkerFlash.addArrangedSubview(ponllWallTwist())
        flckinkMarkerFlash.addArrangedSubview(bruCiuInkWeave())
        flckinkMarkerFlash.addArrangedSubview(ponllStencilGrit())
    }

    func ponllPaintBloom() {
        [bruCiuPaintBloom, aerErstPaintBloom].forEach {
            $0?.alpha = 0
            $0?.transform = CGAffineTransform(translationX: 0, y: 18)
        }
        navigationController?.navigationBar.alpha = 0
        navigationController?.navigationBar.transform = CGAffineTransform(translationX: 0, y: 12)
    }

    func flckinkPaintBloom() {
        UIView.animate(
            withDuration: 0.42,
            delay: 0,
            usingSpringWithDamping: 0.82,
            initialSpringVelocity: 0.3,
            options: [.curveEaseOut, .allowUserInteraction]
        ) {
            self.bruCiuPaintBloom?.alpha = 1
            self.bruCiuPaintBloom?.transform = .identity
            self.navigationController?.navigationBar.alpha = 1
            self.navigationController?.navigationBar.transform = .identity
        }
        UIView.animate(
            withDuration: 0.42,
            delay: 0.08,
            usingSpringWithDamping: 0.82,
            initialSpringVelocity: 0.3,
            options: [.curveEaseOut, .allowUserInteraction]
        ) {
            self.aerErstPaintBloom?.alpha = 1
            self.aerErstPaintBloom?.transform = .identity
        }
    }

    private func flckinkAerosolSignal() -> UIView {
        let aerErstWallPaste = UIStackView()
        aerErstWallPaste.axis = .horizontal
        aerErstWallPaste.distribution = .equalSpacing
        let aerErstWeatheredPaper = UILabel()
        aerErstWeatheredPaper.text = "●I JLKiLvMeN OVPoQtRiSnTgU".ponllPaintaerErstHours
        aerErstWeatheredPaper.textColor = PonllyPalette.green
        aerErstWeatheredPaper.font = PonllyFonts.steelGate(rollingShutter: 12)
        let bruCiuRippedCorner = UILabel()
        bruCiuRippedCorner.text = "◷ \(bruCiuRemainingWindow())"
        bruCiuRippedCorner.textColor = PonllyPalette.pink
        bruCiuRippedCorner.font = PonllyFonts.steelGate(rollingShutter: 12)
        aerErstWallPaste.addArrangedSubview(aerErstWeatheredPaper)
        aerErstWallPaste.addArrangedSubview(bruCiuRippedCorner)
        return aerErstWallPaste
    }

    private func bruCiuRemainingWindow() -> String {
        let ponllHours = max(aerErstRemainingHours(), 1)
        let flckinkDays = ponllHours / 24
        let aerErstHours = ponllHours % 24
        if flckinkDays > 0 && aerErstHours > 0 {
            return "\(flckinkDays)d \(aerErstHours)h left"
        }
        if flckinkDays > 0 {
            return "\(flckinkDays)d left"
        }
        return "\(aerErstHours)h left"
    }

    private func aerErstRemainingHours() -> Int {
        let ponllText = ponllMuralBloom.sketchRush.lowercased()
        if let bruCiuDays = bruCiuFirstNumber(in: ponllText, before: "d") {
            let flckinkHours = bruCiuFirstNumber(in: ponllText, before: "h") ?? 0
            return bruCiuDays * 24 + flckinkHours
        }
        if let aerErstHours = bruCiuFirstNumber(in: ponllText, before: "h") {
            return aerErstHours
        }
        let flckinkDuration = ponllMuralBloom.dropShadow.lowercased()
        if let ponllDurationDays = bruCiuFirstNumber(in: flckinkDuration, before: "d") {
            return ponllDurationDays * 24
        }
        if let bruCiuDurationHours = bruCiuFirstNumber(in: flckinkDuration, before: "h") {
            return bruCiuDurationHours
        }
        return 24
    }

    private func bruCiuFirstNumber(in ponllText: String, before bruCiuUnit: Character) -> Int? {
        guard let flckinkUnitIndex = ponllText.firstIndex(of: bruCiuUnit) else { return nil }
        let aerErstPrefix = ponllText[..<flckinkUnitIndex]
        let ponllDigits = aerErstPrefix.reversed().prefix { $0.isNumber }.reversed()
        return Int(String(ponllDigits))
    }

    private func aerErstMuralQuest() -> UIView {
        let flckinkPasteWrinkle = UIView()
        flckinkPasteWrinkle.translatesAutoresizingMaskIntoConstraints = false
        let aerErstAdhesiveLayer = PbruCiuClearCoatView(ponllPaintTrace: ponllMuralBloom.neonDrip)
        let ponllWallPeel = ponllMuralBloom.concreteMuse.map { PbruCiuClearCoatView(ponllPaintTrace: $0) } ?? PonllyEmptyOpponentView()
        aerErstAdhesiveLayer.ponllMuralCue()
        aerErstAdhesiveLayer.aerErstMuralCue = { [weak self] in
            self?.aerErstWallMap()
        }
        if ponllMuralBloom.concreteMuse != nil {
            (ponllWallPeel as? PbruCiuClearCoatView)?.ponllMuralCue()
            (ponllWallPeel as? PbruCiuClearCoatView)?.aerErstMuralCue = { [weak self] in
                self?.ponllWallMap()
            }
        }
        [aerErstAdhesiveLayer, ponllWallPeel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            flckinkPasteWrinkle.addSubview($0)
        }
        let bruCiuPaintPeel = UIImageView(image: UIImage(named: "chromeShine"))
        bruCiuPaintPeel.contentMode = .scaleAspectFit
        bruCiuPaintPeel.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addSubview(bruCiuPaintPeel)
        NSLayoutConstraint.activate([
            flckinkPasteWrinkle.heightAnchor.constraint(equalToConstant: 320),
            aerErstAdhesiveLayer.leadingAnchor.constraint(equalTo: flckinkPasteWrinkle.leadingAnchor),
            aerErstAdhesiveLayer.topAnchor.constraint(equalTo: flckinkPasteWrinkle.topAnchor),
            aerErstAdhesiveLayer.bottomAnchor.constraint(equalTo: flckinkPasteWrinkle.bottomAnchor),
            aerErstAdhesiveLayer.widthAnchor.constraint(equalTo: flckinkPasteWrinkle.widthAnchor, multiplier: 0.5),
            ponllWallPeel.trailingAnchor.constraint(equalTo: flckinkPasteWrinkle.trailingAnchor),
            ponllWallPeel.topAnchor.constraint(equalTo: flckinkPasteWrinkle.topAnchor),
            ponllWallPeel.bottomAnchor.constraint(equalTo: flckinkPasteWrinkle.bottomAnchor),
            ponllWallPeel.widthAnchor.constraint(equalTo: flckinkPasteWrinkle.widthAnchor, multiplier: 0.5),
            bruCiuPaintPeel.centerXAnchor.constraint(equalTo: flckinkPasteWrinkle.centerXAnchor),
            bruCiuPaintPeel.centerYAnchor.constraint(equalTo: flckinkPasteWrinkle.centerYAnchor),
            bruCiuPaintPeel.widthAnchor.constraint(equalToConstant: 84),
            bruCiuPaintPeel.heightAnchor.constraint(equalToConstant: 84)
        ])
        return flckinkPasteWrinkle
    }

    @objc private func aerErstWallMap() {
        let bruCiuStyleMap = PonllyponllTornEdge.flckinkChippedPaint(ponllMuralBloom.paintMist)
        flckinkMuralWall(ponllMuralBloom.neonDrip, bruCiuStyleMap: bruCiuStyleMap)
    }

    @objc private func ponllWallMap() {
        guard let bruCiuPaintMap = ponllMuralBloom.concreteMuse,
              let flckinkStyleMap = ponllMuralBloom.colorSplash else { return }
        let aerErstStyleMap = PonllyponllTornEdge.flckinkChippedPaint(flckinkStyleMap)
        flckinkMuralWall(bruCiuPaintMap, bruCiuStyleMap: aerErstStyleMap)
    }

    private func flckinkMuralWall(_ ponllPaintMap: PonllyaerErstSolidMarkerk, bruCiuStyleMap: PonllyaerErstTwoToneFillr) {
        let aerErstMuralWall = PonllMuralWallController(ponllPaintMap: ponllPaintMap, bruCiuStyleMap: bruCiuStyleMap)
        aerErstMuralWall.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(aerErstMuralWall, animated: true)
    }

    private func ponllStencilCue() -> UIView {
        let flckinkChippedPaint = UIStackView()
        flckinkChippedPaint.axis = .horizontal
        flckinkChippedPaint.distribution = .equalSpacing
        flckinkChippedPaint.addArrangedSubview(bruCiuChromePath(flckinkNeonArc: ponllMuralBloom.paintMist, aerErstTextureBend: false))
        flckinkChippedPaint.addArrangedSubview(bruCiuChromePath(flckinkNeonArc: ponllMuralBloom.colorSplash, aerErstTextureBend: true))
        return flckinkChippedPaint
    }

    private func bruCiuChromePath(flckinkNeonArc: String?, aerErstTextureBend: Bool) -> UIView {
        guard let flckinkNeonArc, !flckinkNeonArc.isEmpty else {
            let aerErstCrackedWall = UIStackView()
            aerErstCrackedWall.axis = .vertical
            aerErstCrackedWall.alignment = aerErstTextureBend ? .trailing : .leading
            aerErstCrackedWall.spacing = 4
            let ponllBrickCrack = UILabel()
            ponllBrickCrack.text = "W0A1I2T3I4N5G6 7A8R9TaIbScTd".ponllPaintaerErstHours
            ponllBrickCrack.textColor = PonllyPalette.muted
            ponllBrickCrack.font = PonllyFonts.muralForgepon(neonLab: 14)
            let bruCiuCementRough = UILabel()
            bruCiuCementRough.text = "Oepfegnh icjhkallmlneonpgqer sstluovtw".ponllPaintaerErstHours
            bruCiuCementRough.textColor = PonllyPalette.muted
            bruCiuCementRough.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
            aerErstCrackedWall.addArrangedSubview(ponllBrickCrack)
            aerErstCrackedWall.addArrangedSubview(bruCiuCementRough)
            return aerErstCrackedWall
        }

        let flckinkPlasterDust = PonllyponllTornEdge.flckinkChippedPaint(flckinkNeonArc)
        let aerErstRustStreak = UIControl()
        let ponllMetalPanel = UIStackView()
        ponllMetalPanel.axis = aerErstTextureBend ? .horizontal : .horizontal
        ponllMetalPanel.alignment = .center
        ponllMetalPanel.spacing = 10
        ponllMetalPanel.isUserInteractionEnabled = false
        ponllMetalPanel.translatesAutoresizingMaskIntoConstraints = false
        aerErstRustStreak.addSubview(ponllMetalPanel)
        let bruCiuGarageDoor = UIStackView()
        bruCiuGarageDoor.axis = .vertical
        bruCiuGarageDoor.alignment = aerErstTextureBend ? .trailing : .leading
        let flckinkShutterPanel = UILabel()
        flckinkShutterPanel.text = flckinkPlasterDust.aerosolDream.uppercased()
        flckinkShutterPanel.textColor = .white
        flckinkShutterPanel.font = PonllyFonts.muralForgepon(neonLab: 14)
        let aerErstFreightPanel = UILabel()
        aerErstFreightPanel.text = flckinkPlasterDust.wallCraft
        aerErstFreightPanel.textColor = PonllyPalette.muted
        aerErstFreightPanel.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)
        bruCiuGarageDoor.addArrangedSubview(flckinkShutterPanel)
        bruCiuGarageDoor.addArrangedSubview(aerErstFreightPanel)
        let ponllPaintFlow = ErErstPaintLabView(flckinkPlasterDust, 48)
        ponllPaintFlow.accessibilityIdentifier = flckinkPlasterDust.graffitiPulse
        if aerErstTextureBend {
            ponllMetalPanel.addArrangedSubview(bruCiuGarageDoor)
            ponllMetalPanel.addArrangedSubview(ponllPaintFlow)
        } else {
            ponllMetalPanel.addArrangedSubview(ponllPaintFlow)
            ponllMetalPanel.addArrangedSubview(bruCiuGarageDoor)
        }
        aerErstRustStreak.addAction(UIAction { [weak self, weak ponllPaintFlow] _ in
            self?.aerErstMuralGlow(flckinkPlasterDust, ponllPaintFlow: ponllPaintFlow)
        }, for: .touchUpInside)
        NSLayoutConstraint.activate([
            ponllMetalPanel.leadingAnchor.constraint(equalTo: aerErstRustStreak.leadingAnchor),
            ponllMetalPanel.trailingAnchor.constraint(equalTo: aerErstRustStreak.trailingAnchor),
            ponllMetalPanel.topAnchor.constraint(equalTo: aerErstRustStreak.topAnchor),
            ponllMetalPanel.bottomAnchor.constraint(equalTo: aerErstRustStreak.bottomAnchor),
            aerErstRustStreak.heightAnchor.constraint(equalToConstant: 56)
        ])
        return aerErstRustStreak
    }

    private func flckinkSketchKick() -> UIView {
        let bruCiuSidewalkEdge = UIStackView()
        bruCiuSidewalkEdge.axis = .horizontal
        bruCiuSidewalkEdge.spacing = 18
        bruCiuSidewalkEdge.distribution = .fillEqually
        let aPercent = ponllMuralBloom.alleyCanvas * 100 / max(ponllMuralBloom.alleyCanvas + ponllMuralBloom.railYard, 1)
        let bPercent = 100 - aPercent
        let flckinkCurbLine = PonllyNeonButton("Support A\n\(aPercent)%", PonllyPalette.pink)
        flckinkCurbLine.titleLabel?.numberOfLines = 2
        flckinkCurbLine.setTitleColor(.white, for: .normal)
        let aerErstDrainCover = PonllyNeonButton("Support B\n\(bPercent)%", PonllyPalette.cyan)
        aerErstDrainCover.titleLabel?.numberOfLines = 2
        flckinkCurbLine.addTarget(self, action: #selector(bruCiuChromeNoise), for: .touchUpInside)
        aerErstDrainCover.addTarget(self, action: #selector(bruCiuChromeNoise), for: .touchUpInside)
        bruCiuSidewalkEdge.addArrangedSubview(flckinkCurbLine)
        bruCiuSidewalkEdge.addArrangedSubview(aerErstDrainCover)
        flckinkCurbLine.heightAnchor.constraint(equalToConstant: 86).isActive = true
        return bruCiuSidewalkEdge
    }

    private func aerErstPaintLean() -> UIView {
        let ponllPipeShadow = PonllyNeonButton("AxcyczeApBtC DCEhFaGlHlIeJnKgLeM".ponllPaintaerErstHours, PonllyPalette.cyan)
        ponllPipeShadow.addTarget(self, action: #selector(flckinkNeonTexture), for: .touchUpInside)
        ponllPipeShadow.heightAnchor.constraint(equalToConstant: 62).isActive = true
        return ponllPipeShadow
    }

    private func ponllWallTwist() -> UIView {
        let bruCiuFireEscape = UIView()
        bruCiuFireEscape.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.85)
        bruCiuFireEscape.layer.cornerRadius = 16
        bruCiuFireEscape.layer.borderWidth = 1
        bruCiuFireEscape.layer.borderColor = PonllyPalette.line.cgColor
        let flckinkMarkerFlash = UIStackView()
        flckinkMarkerFlash.axis = .vertical
        flckinkMarkerFlash.spacing = 10
        bruCiuFireEscape.addSubview(flckinkMarkerFlash)
        flckinkMarkerFlash.woodPanelPonlly(steelGate: bruCiuFireEscape, bruCiuClearCoat: UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18))
        let aerErstWarehouseWall = UILabel()
        aerErstWarehouseWall.text = "CNhOaPlQlReSnTgUeV WTXhYeZm0e1".ponllPaintaerErstHours
        aerErstWarehouseWall.textColor = PonllyPalette.green
        aerErstWarehouseWall.font = PonllyFonts.muralForgepon(neonLab: 14)
        let ponllTunnelWall = UILabel()
        ponllTunnelWall.text = ponllMuralBloom.outlineGlow
        ponllTunnelWall.textColor = .white
        ponllTunnelWall.numberOfLines = 0
        ponllTunnelWall.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .semibold)
        flckinkMarkerFlash.addArrangedSubview(aerErstWarehouseWall)
        flckinkMarkerFlash.addArrangedSubview(ponllTunnelWall)
        return bruCiuFireEscape
    }

    private func bruCiuInkWeave() -> UIView {
        let bruCiuBridgePillar = UIStackView()
        bruCiuBridgePillar.axis = .vertical
        bruCiuBridgePillar.spacing = 12
        let aerErstConcreteColumn = UIStackView()
        aerErstConcreteColumn.axis = .horizontal
        aerErstConcreteColumn.distribution = .equalSpacing
        let flckinkUnderpassBeam = UILabel()
        flckinkUnderpassBeam.text = "Arena Chat (\(ponllMuralBloom.underpassMural.count))"
        flckinkUnderpassBeam.textColor = .white
        flckinkUnderpassBeam.font = PonllyFonts.muralForgepon(neonLab: 16)
        bruCiuTextureTrail = flckinkUnderpassBeam
        aerErstConcreteColumn.addArrangedSubview(flckinkUnderpassBeam)
        bruCiuBridgePillar.addArrangedSubview(aerErstConcreteColumn)
        ponllNeonTrace = bruCiuBridgePillar
        for (ponllColorMap, comment) in ponllMuralBloom.underpassMural.enumerated() {
            bruCiuBridgePillar.addArrangedSubview(flckinkAerosolDepth(comment, colorMap: ponllColorMap))
        }
        return bruCiuBridgePillar
    }

    private func flckinkAerosolDepth(_ comment: PonllyBattleComment, colorMap ponllColorMap: Int) -> UIView {
        let flckinkTrafficBarrier = UIStackView()
        flckinkTrafficBarrier.axis = .horizontal
        flckinkTrafficBarrier.alignment = .top
        flckinkTrafficBarrier.spacing = 10
        let ponllBlankFacade = PonllyponllTornEdge.flckinkChippedPaint(comment.wheatpasteLayer)
        let bruCiuNightWall = UIControl()
        let flckinkDawnWall = ErErstPaintLabView(ponllBlankFacade, 34)
        flckinkDawnWall.accessibilityIdentifier = ponllBlankFacade.graffitiPulse
        flckinkDawnWall.isUserInteractionEnabled = false
        bruCiuNightWall.addSubview(flckinkDawnWall)
        bruCiuNightWall.addAction(UIAction { [weak self, weak flckinkDawnWall] _ in
            self?.aerErstMuralGlow(ponllBlankFacade, ponllPaintFlow: flckinkDawnWall)
        }, for: .touchUpInside)
        NSLayoutConstraint.activate([
            flckinkDawnWall.leadingAnchor.constraint(equalTo: bruCiuNightWall.leadingAnchor),
            flckinkDawnWall.trailingAnchor.constraint(equalTo: bruCiuNightWall.trailingAnchor),
            flckinkDawnWall.topAnchor.constraint(equalTo: bruCiuNightWall.topAnchor),
            flckinkDawnWall.bottomAnchor.constraint(equalTo: bruCiuNightWall.bottomAnchor),
            bruCiuNightWall.widthAnchor.constraint(equalToConstant: 34),
            bruCiuNightWall.heightAnchor.constraint(equalToConstant: 34)
        ])
        flckinkTrafficBarrier.addArrangedSubview(bruCiuNightWall)
        let aerErstRainWall = UIStackView()
        aerErstRainWall.axis = .vertical
        let aerErstSketchWall = UILabel()
        aerErstSketchWall.text = "\(ponllBlankFacade.aerosolDream)   \(comment.pasteupEcho)"
        aerErstSketchWall.textColor = .white
        aerErstSketchWall.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        let ponllMuralWall = UILabel()
        ponllMuralWall.text = comment.muralGrid
        ponllMuralWall.textColor = PonllyPalette.muted
        ponllMuralWall.numberOfLines = 0
        ponllMuralWall.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        aerErstRainWall.addArrangedSubview(aerErstSketchWall)
        aerErstRainWall.addArrangedSubview(ponllMuralWall)
        flckinkTrafficBarrier.addArrangedSubview(aerErstRainWall)
        flckinkTrafficBarrier.addArrangedSubview(bruCiuInkAura(comment.wallTexture, count: comment.wildstyleCurve, colorMap: ponllColorMap))
        return flckinkTrafficBarrier
    }

    private func bruCiuInkAura(_ flckinkInkEcho: Bool, count aerErstInkSignal: Int, colorMap ponllColorMap: Int) -> UIStackView {
        let ponllInkQuest = UIStackView()
        ponllInkQuest.axis = .vertical
        ponllInkQuest.alignment = .center
        ponllInkQuest.spacing = 0
        ponllInkQuest.widthAnchor.constraint(equalToConstant: 36).isActive = true

        let bruCiuInkSeed = UIButton(type: .custom)
        bruCiuInkSeed.setImage(UIImage(named: flckinkInkEcho ? "inkAura" : "inkEcho"), for: .normal)
        bruCiuInkSeed.imageView?.contentMode = .scaleAspectFit
        bruCiuInkSeed.translatesAutoresizingMaskIntoConstraints = false
        bruCiuInkSeed.widthAnchor.constraint(equalToConstant: 36).isActive = true
        bruCiuInkSeed.heightAnchor.constraint(equalToConstant: 28).isActive = true

        let flckinkInkSpark = UILabel()
        flckinkInkSpark.text = "\(ponllInkMood(aerErstInkSignal))"
        flckinkInkSpark.textColor = PonllyPalette.muted
        flckinkInkSpark.font = PonllyFonts.steelGate(rollingShutter: 10)
        flckinkInkSpark.textAlignment = .center

        bruCiuInkSeed.addAction(UIAction { [weak self, weak bruCiuInkSeed, weak flckinkInkSpark] _ in
            guard let self, let bruCiuInkSeed, let flckinkInkSpark else { return }
            self.aerErstInkglossFinish(colorMap: ponllColorMap, inkSeed: bruCiuInkSeed, inkSpark: flckinkInkSpark)
        }, for: .touchUpInside)

        ponllInkQuest.addArrangedSubview(bruCiuInkSeed)
        ponllInkQuest.addArrangedSubview(flckinkInkSpark)
        return ponllInkQuest
    }

    private func aerErstInkglossFinish(colorMap ponllColorMap: Int, inkSeed bruCiuInkSeed: UIButton, inkSpark flckinkInkSpark: UILabel) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) { [weak self, weak bruCiuInkSeed, weak flckinkInkSpark] in
            guard let self,
                  let bruCiuInkSeed,
                  let flckinkInkSpark,
                  self.ponllMuralBloom.underpassMural.indices.contains(ponllColorMap) else { return }
            var ponllInkPath = self.ponllMuralBloom.underpassMural[ponllColorMap]
            let flckinkInkEcho = !ponllInkPath.wallTexture
            let aerErstInkSignal = self.ponllInkMood(ponllInkPath.wildstyleCurve)
            ponllInkPath.wallTexture = flckinkInkEcho
            ponllInkPath.wildstyleCurve = flckinkInkEcho ? min(5, aerErstInkSignal + 1) : max(0, aerErstInkSignal - 1)
            self.ponllMuralBloom.underpassMural[ponllColorMap] = ponllInkPath
            bruCiuInkSeed.setImage(UIImage(named: flckinkInkEcho ? "inkAura" : "inkEcho"), for: .normal)
            flckinkInkSpark.text = "\(ponllInkPath.wildstyleCurve)"
            PonllyponllTornEdge.ponllOutlinePlan(self.ponllMuralBloom)
            bruCiuInkSeed.ponllPaintBurst(flckinkInkEcho)
        }
    }

    private func ponllInkMood(_ bruCiuInkPath: Int) -> Int {
        min(5, max(0, bruCiuInkPath))
    }

    private func aerErstMuralGlow(_ bruCiuLetterWall: PonllyaerErstTwoToneFillr, ponllPaintFlow: UIView?) {
        guard bruCiuLetterWall.graffitiPulse != PonllyponllTornEdge.cnowpaintokwinId else { return }
        let flckinkColorWall = FlckinkPrimerCoatController(bruCiuLetterWall)
        flckinkColorWall.hidesBottomBarWhenPushed = true
        ponllPaintFlowPush(
            flckinkColorWall,
            bruCiuPaintFlow: ponllPaintFlow,
            aerErstGraffitiPulse: bruCiuLetterWall.graffitiPulse
        )
    }

    private func ponllStencilGrit() -> UIView {
        let aerErstTextureWall = UIView()
        aerErstTextureWall.backgroundColor = UIColor(red: 43/255, green: 43/255, blue: 55/255, alpha: 1)
        aerErstTextureWall.layer.cornerRadius = 24
        aerErstTextureWall.translatesAutoresizingMaskIntoConstraints = false
        aerErstChromeFuse.placeholder = "Acddde ftgoh itjhkel manroepnqar sbtuuzvzw.x.y.z".ponllPaintaerErstHours
        aerErstChromeFuse.attributedPlaceholder = NSAttributedString(string: "AAdBdC DtEoF GtHhIeJ KaLrMeNnOaP QbRuSzTzU.V.W.X".ponllPaintaerErstHours, attributes: [.foregroundColor: PonllyPalette.muted])
        aerErstChromeFuse.textColor = .white
        aerErstChromeFuse.returnKeyType = .send
        aerErstChromeFuse.addTarget(self, action: #selector(aerErstTextureContrast), for: .primaryActionTriggered)
        aerErstChromeFuse.translatesAutoresizingMaskIntoConstraints = false
        aerErstTextureWall.addSubview(aerErstChromeFuse)
        let ponllPaintMap = UIButton(type: .system)
        ponllPaintMap.setImage(UIImage(named: "sprayBloom") ?? UIImage(systemName: "paperplane.fill"), for: .normal)
        ponllPaintMap.tintColor = PonllyPalette.pink
        ponllPaintMap.translatesAutoresizingMaskIntoConstraints = false
        ponllPaintMap.addTarget(self, action: #selector(aerErstTextureContrast), for: .touchUpInside)
        aerErstTextureWall.addSubview(ponllPaintMap)
        NSLayoutConstraint.activate([
            aerErstTextureWall.heightAnchor.constraint(equalToConstant: 54),
            aerErstChromeFuse.leadingAnchor.constraint(equalTo: aerErstTextureWall.leadingAnchor, constant: 18),
            aerErstChromeFuse.centerYAnchor.constraint(equalTo: aerErstTextureWall.centerYAnchor),
            ponllPaintMap.trailingAnchor.constraint(equalTo: aerErstTextureWall.trailingAnchor, constant: -16),
            ponllPaintMap.centerYAnchor.constraint(equalTo: aerErstTextureWall.centerYAnchor),
            ponllPaintMap.widthAnchor.constraint(equalToConstant: 30),
            ponllPaintMap.heightAnchor.constraint(equalToConstant: 30),
            aerErstChromeFuse.trailingAnchor.constraint(equalTo: ponllPaintMap.leadingAnchor, constant: -10)
        ])
        return aerErstTextureWall
    }

    @objc private func bruCiuChromeNoise() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            self.flckinkPrimerCoatponlu("SYuZb0m1i2t3t4i5n6g7 8v9oatbec.d.e.f".ponllPaintaerErstHours)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.flckinkPrimerCoatponlu("Vgohtiej kclomunnotpeqdr".ponllPaintaerErstHours)
            }
        }
    }

    @objc private func flckinkNeonTexture() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let bruCiuWallMap = BruCiuSilverSheenController(ponllPrimerCoat: self.ponllMuralBloom)
            bruCiuWallMap.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(bruCiuWallMap, animated: true)
        }
    }

    @objc private func aerErstTextureContrast() {
        let text = (aerErstChromeFuse.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !text.isEmpty else {
            aerErstSketchRush("Asdtdu vaw xfyezwA BwCoDrEdFsG HbIeJfKoLrMeN OsPeQnRdSiTnUgV.W".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            self.flckinkPrimerCoatponlu("SXeYnZd0i1n2g3.4.5.6".ponllPaintaerErstHours)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                self.ponllMuralBloom.underpassMural.append(PonllyBattleComment(wheatpasteLayer: PonllyponllTornEdge.cnowpaintokwinId, pasteupEcho: "J7u8s9ta bncodwe".ponllPaintaerErstHours, muralGrid: text, wildstyleCurve: 0))
                self.aerErstChromeFuse.text = ""
                self.aerErstChromeFuse.resignFirstResponder()
                self.ponllPainaerErstGlossFinish()
                self.flckinkPrimerCoatponlu("Cfogmhmiejnktl mandodpeqdr".ponllPaintaerErstHours)
            }
        }
    }

    @objc private func aerErstColorGlow() {
        view.endEditing(true)
    }

    private func ponllPainaerErstGlossFinish() {
        bruCiuTextureTrail?.text = "Arena Chat (\(ponllMuralBloom.underpassMural.count))"
        guard let ponllNeonTrace else { return }
        while ponllNeonTrace.arrangedSubviews.count > 1 {
            guard let row = ponllNeonTrace.arrangedSubviews.last else { break }
            ponllNeonTrace.removeArrangedSubview(row)
            row.removeFromSuperview()
        }
        ponllMuralBloom.underpassMural.enumerated().forEach {
            ponllNeonTrace.addArrangedSubview(flckinkAerosolDepth($0.element, colorMap: $0.offset))
        }
        view.layoutIfNeeded()
        let bottomY = max(0, bruCiuStencilFlicker.contentSize.height - bruCiuStencilFlicker.bounds.height + bruCiuStencilFlicker.adjustedContentInset.bottom)
        bruCiuStencilFlicker.setContentOffset(CGPoint(x: 0, y: bottomY), animated: true)
    }

    @objc private func bruCiuSketchRhythm() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let ponllMuralPiece = PonllyroughFillController(blackOutline: self.ponllMuralBloom)
            ponllMuralPiece.fadeSpray = { [weak self] in
                self?.aerErstSketchRush("RWeXpYoZr0t1 2s3u4b5m6i7t8t9eadb".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
            }
            ponllMuralPiece.modalPresentationStyle = .overFullScreen
            ponllMuralPiece.modalTransitionStyle = .crossDissolve
            self.present(ponllMuralPiece, animated: true)
        }
    }

    @objc private func flckinkInkMotion(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyboardFrame = view.convert(frame, from: nil)
        let bottom = max(view.bounds.maxY - keyboardFrame.minY - view.safeAreaInsets.bottom, 0) + 18
        bruCiuStencilFlicker.contentInset.bottom = bottom
        bruCiuStencilFlicker.verticalScrollIndicatorInsets.bottom = bottom
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.view.layoutIfNeeded()
        }
        let inputRect = aerErstChromeFuse.convert(aerErstChromeFuse.bounds.insetBy(dx: 0, dy: -22), to: bruCiuStencilFlicker)
        bruCiuStencilFlicker.scrollRectToVisible(inputRect, animated: true)
    }

    @objc private func aerErstWallCascade(_ note: Notification) {
        bruCiuStencilFlicker.contentInset.bottom = 0
        bruCiuStencilFlicker.verticalScrollIndicatorInsets.bottom = 0
    }
}
