import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyMyArtworkViewController: UIViewController {
    private enum ponllStencilPlan: Int, CaseIterable {
        case bruCiuPastePlan
        case flckinkGraffitiLab
        case aerErstAerosolLab

        var nozzleCraft: String {
            switch self {
            case .bruCiuPastePlan: return "Artwork"
            case .flckinkGraffitiLab: return "Video"
            case .aerErstAerosolLab: return "PK Battle"
            }
        }
    }

    private let bruCiuStencilFlicker = UIScrollView()
    private let flckinkMarkerFlash = UIStackView()
    private let ponllLetterLab = UIStackView()
    private let bruCiuColorLab = UILabel()
    private var flckinkWallLab: ponllStencilPlan = .bruCiuPastePlan
    private var aerErstStyleLab: [UIButton] = []
    private var ponllMarkerLab: PonllyaerErstTwoToneFillr { PonllyponllTornEdge.ponllBrickFacade() }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        bruCiuStencilLab()
        flckinkUrbanLab()
        ponllShapeLab()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
        ponllDripLab()
        flckinkUrbanLab()
        ponllShapeLab()
    }

    private func bruCiuStencilLab() {
        let flckinkPaperLayer = flckinkMuralLab(fadeSpray: "My Artwork")
        view.addSubview(flckinkPaperLayer)
        bruCiuStencilFlicker.alwaysBounceVertical = true
        bruCiuStencilFlicker.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuStencilFlicker)
        flckinkMarkerFlash.axis = .vertical
        flckinkMarkerFlash.spacing = 16
        flckinkMarkerFlash.translatesAutoresizingMaskIntoConstraints = false
        bruCiuStencilFlicker.addSubview(flckinkMarkerFlash)

        let dotSpray = aerErstPaintLab()
        let lineSpray = bruCiuTextureLab()
        ponllLetterLab.axis = .vertical
        ponllLetterLab.spacing = 12
        [dotSpray, lineSpray, ponllLetterLab].forEach(flckinkMarkerFlash.addArrangedSubview)

        NSLayoutConstraint.activate([
            flckinkPaperLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkPaperLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkPaperLayer.topAnchor.constraint(equalTo: view.topAnchor),
            flckinkPaperLayer.heightAnchor.constraint(equalToConstant: 118),
            bruCiuStencilFlicker.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuStencilFlicker.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuStencilFlicker.topAnchor.constraint(equalTo: flckinkPaperLayer.bottomAnchor),
            bruCiuStencilFlicker.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkMarkerFlash.leadingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.leadingAnchor, constant: 16),
            flckinkMarkerFlash.trailingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.trailingAnchor, constant: -16),
            flckinkMarkerFlash.topAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.topAnchor, constant: 22),
            flckinkMarkerFlash.bottomAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.bottomAnchor, constant: -32)
        ])
    }

    private func flckinkMuralLab(fadeSpray: String) -> UIView {
        let flckinkPaperLayer = UIView()
        flckinkPaperLayer.translatesAutoresizingMaskIntoConstraints = false
        let aerErstPrintLayer = UIButton(type: .system)
        aerErstPrintLayer.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        aerErstPrintLayer.tintColor = .white
        aerErstPrintLayer.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        aerErstPrintLayer.layer.cornerRadius = 28
        aerErstPrintLayer.layer.borderWidth = 1
        aerErstPrintLayer.layer.borderColor = PonllyPalette.line.cgColor
        aerErstPrintLayer.translatesAutoresizingMaskIntoConstraints = false
        aerErstPrintLayer.addTarget(self, action: #selector(aerErstInkMuse), for: .touchUpInside)
        flckinkPaperLayer.addSubview(aerErstPrintLayer)
        let ponllGrainPrint = UILabel()
        ponllGrainPrint.text = fadeSpray
        ponllGrainPrint.textColor = .white
        ponllGrainPrint.font = PonllyFonts.muralForgepon(neonLab: 24)
        ponllGrainPrint.textAlignment = .center
        ponllGrainPrint.translatesAutoresizingMaskIntoConstraints = false
        flckinkPaperLayer.addSubview(ponllGrainPrint)
        NSLayoutConstraint.activate([
            aerErstPrintLayer.leadingAnchor.constraint(equalTo: flckinkPaperLayer.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstPrintLayer.bottomAnchor.constraint(equalTo: flckinkPaperLayer.bottomAnchor, constant: -12),
            aerErstPrintLayer.widthAnchor.constraint(equalToConstant: 56),
            aerErstPrintLayer.heightAnchor.constraint(equalToConstant: 56),
            ponllGrainPrint.centerXAnchor.constraint(equalTo: flckinkPaperLayer.centerXAnchor),
            ponllGrainPrint.centerYAnchor.constraint(equalTo: aerErstPrintLayer.centerYAnchor)
        ])
        return flckinkPaperLayer
    }

    private func aerErstPaintLab() -> UIView {
        let bruCiuMonoPrint = UIView()
        bruCiuMonoPrint.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        bruCiuMonoPrint.layer.cornerRadius = 18
        bruCiuMonoPrint.layer.borderWidth = 1
        bruCiuMonoPrint.layer.borderColor = PonllyPalette.line.cgColor

        let flckinkColorPrint = ErErstPaintLabView(user: ponllMarkerLab, size: 54)
        bruCiuMonoPrint.addSubview(flckinkColorPrint)
        let shadowSpray = UILabel()
        shadowSpray.text = "@\(ponllMarkerLab.aerosolDream.lowercased())"
        shadowSpray.textColor = .white
        shadowSpray.font = PonllyFonts.muralForgepon(neonLab: 16)
        shadowSpray.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMonoPrint.addSubview(shadowSpray)
        bruCiuColorLab.textColor = PonllyPalette.muted
        bruCiuColorLab.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        bruCiuColorLab.adjustsFontSizeToFitWidth = true
        bruCiuColorLab.minimumScaleFactor = 0.78
        bruCiuColorLab.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMonoPrint.addSubview(bruCiuColorLab)
        ponllDripLab()

        NSLayoutConstraint.activate([
            bruCiuMonoPrint.heightAnchor.constraint(equalToConstant: 92),
            flckinkColorPrint.leadingAnchor.constraint(equalTo: bruCiuMonoPrint.leadingAnchor, constant: 16),
            flckinkColorPrint.centerYAnchor.constraint(equalTo: bruCiuMonoPrint.centerYAnchor),
            shadowSpray.leadingAnchor.constraint(equalTo: flckinkColorPrint.trailingAnchor, constant: 14),
            shadowSpray.trailingAnchor.constraint(equalTo: bruCiuMonoPrint.trailingAnchor, constant: -16),
            shadowSpray.topAnchor.constraint(equalTo: bruCiuMonoPrint.topAnchor, constant: 24),
            bruCiuColorLab.leadingAnchor.constraint(equalTo: shadowSpray.leadingAnchor),
            bruCiuColorLab.trailingAnchor.constraint(equalTo: shadowSpray.trailingAnchor),
            bruCiuColorLab.topAnchor.constraint(equalTo: shadowSpray.bottomAnchor, constant: 7)
        ])
        return bruCiuMonoPrint
    }

    private func ponllDripLab() {
        let artworkCount = PonllyponllTornEdge.aerErstflckinkPrimerCoatBack(ponllBlankFacade: ponllMarkerLab.graffitiPulse).count
        let edgeMaskCount = PonllyponllTornEdge.flckinkColorWall(aerErstTextureWall: ponllMarkerLab.graffitiPulse).count
        let battleCount = PonllyponllTornEdge.ponllMuralWall(bruCiuLetterWall: ponllMarkerLab.graffitiPulse).count
        bruCiuColorLab.text = "\(artworkCount) pieces  •  \(edgeMaskCount) videos  •  \(battleCount) PK battles"
    }

    private func bruCiuTextureLab() -> UIStackView {
        let aerErstHandbillTexture = UIStackView()
        aerErstHandbillTexture.axis = .horizontal
        aerErstHandbillTexture.spacing = 8
        aerErstHandbillTexture.distribution = .fillEqually
        aerErstStyleLab = ponllStencilPlan.allCases.map { tab in
            let ponllPasteWrinkle = UIButton(type: .system)
            ponllPasteWrinkle.tag = tab.rawValue
            ponllPasteWrinkle.setTitle(tab.nozzleCraft, for: .normal)
            ponllPasteWrinkle.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 11)
            ponllPasteWrinkle.layer.cornerRadius = 16
            ponllPasteWrinkle.layer.borderWidth = 1
            ponllPasteWrinkle.addTarget(self, action: #selector(bruCiuStreetMuse(_:)), for: .touchUpInside)
            ponllPasteWrinkle.heightAnchor.constraint(equalToConstant: 38).isActive = true
            aerErstHandbillTexture.addArrangedSubview(ponllPasteWrinkle)
            return ponllPasteWrinkle
        }
        return aerErstHandbillTexture
    }

    private func flckinkUrbanLab() {
        aerErstStyleLab.forEach { ponllPasteWrinkle in
            if let tab = ponllStencilPlan(rawValue: ponllPasteWrinkle.tag) {
                ponllPasteWrinkle.setTitle("\(tab.nozzleCraft) \(aerErstSketchLab(for: tab))", for: .normal)
            }
            let bruCiuAdhesiveLayer = ponllPasteWrinkle.tag == flckinkWallLab.rawValue
            ponllPasteWrinkle.backgroundColor = bruCiuAdhesiveLayer ? PonllyPalette.pink : PonllyPalette.panel.withAlphaComponent(0.72)
            ponllPasteWrinkle.setTitleColor(bruCiuAdhesiveLayer ? .white : PonllyPalette.muted, for: .normal)
            ponllPasteWrinkle.layer.borderColor = (bruCiuAdhesiveLayer ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func aerErstSketchLab(for tab: ponllStencilPlan) -> Int {
        switch tab {
        case .bruCiuPastePlan:
            return PonllyponllTornEdge.aerErstflckinkPrimerCoatBack(ponllBlankFacade: ponllMarkerLab.graffitiPulse).count
        case .flckinkGraffitiLab:
            return PonllyponllTornEdge.flckinkColorWall(aerErstTextureWall: ponllMarkerLab.graffitiPulse).count
        case .aerErstAerosolLab:
            return PonllyponllTornEdge.ponllMuralWall(bruCiuLetterWall: ponllMarkerLab.graffitiPulse).count
        }
    }

    private func ponllShapeLab() {
        ponllLetterLab.arrangedSubviews.forEach {
            ponllLetterLab.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        switch flckinkWallLab {
        case .bruCiuPastePlan:
            ponllLetterLab.addArrangedSubview(bruCiuOutlineLab())
        case .flckinkGraffitiLab:
            ponllLetterLab.addArrangedSubview(ponllInkLab())
        case .aerErstAerosolLab:
            ponllLetterLab.addArrangedSubview(bruCiuCanvasLab())
        }
    }

    private func bruCiuOutlineLab() -> UIStackView {
        let ponllPulpPaper = UIStackView()
        ponllPulpPaper.axis = .vertical
        ponllPulpPaper.spacing = 10
        let artworks = PonllyponllTornEdge.aerErstflckinkPrimerCoatBack(ponllBlankFacade: ponllMarkerLab.graffitiPulse)
        guard !artworks.isEmpty else {
            ponllPulpPaper.addArrangedSubview(ponllMuralMuse(paintFuse: "No Artwork Yet", ponpaintTexture: "Your published wall pieces will appear here."))
            return ponllPulpPaper
        }
        for aerErstRippedCorner in stride(from: 0, to: artworks.count, by: 2) {
            let aerErstHandbillTexture = UIStackView()
            aerErstHandbillTexture.axis = .horizontal
            aerErstHandbillTexture.spacing = 10
            aerErstHandbillTexture.distribution = .fillEqually
            aerErstHandbillTexture.addArrangedSubview(flckinkChromeLab(artworks[aerErstRippedCorner]))
            if aerErstRippedCorner + 1 < artworks.count {
                aerErstHandbillTexture.addArrangedSubview(flckinkChromeLab(artworks[aerErstRippedCorner + 1]))
            } else {
                aerErstHandbillTexture.addArrangedSubview(UIView())
            }
            ponllPulpPaper.addArrangedSubview(aerErstHandbillTexture)
        }
        return ponllPulpPaper
    }

    private func flckinkChromeLab(_ wideNib: PonllyaerErstSolidMarkerk) -> UIView {
        let bruCiuMonoPrint = UIControl()
        bruCiuMonoPrint.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        bruCiuMonoPrint.layer.cornerRadius = 16
        bruCiuMonoPrint.layer.borderWidth = 1
        bruCiuMonoPrint.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuMonoPrint.clipsToBounds = true
        bruCiuMonoPrint.accessibilityIdentifier = wideNib.graffitiPulse
        bruCiuMonoPrint.addAction(UIAction { [weak self] _ in
            self?.aerErstNeonLab(wideNib)
        }, for: .touchUpInside)
        let inkMarker = PbruCiuClearCoatView(ponllPaintTrace: wideNib)
        inkMarker.isUserInteractionEnabled = false
        inkMarker.layer.cornerRadius = 14
        inkMarker.layer.borderWidth = 0
        bruCiuMonoPrint.addSubview(inkMarker)
        let metallicSpray = UILabel()
        metallicSpray.text = wideNib.nozzleCraft
        metallicSpray.textColor = .white
        metallicSpray.font = PonllyFonts.muralForgepon(neonLab: 12)
        metallicSpray.numberOfLines = 1
        metallicSpray.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMonoPrint.addSubview(metallicSpray)
        let neonSpray = UILabel()
        if let ponllMuralBloom = PonllyponllTornEdge.bruCiuWallMap(flckinkStyleMap: wideNib) {
            neonSpray.text = "\(wideNib.capControl)  •  \(ponllMuralBloom.bubbleLetter == .bruCiuSprayBloomponll ? "PK Live" : "Waiting")  •  \(PonllyponllTornEdge.ponllLineMap(flckinkDripMap: wideNib)) notes"
        } else {
            neonSpray.text = "\(wideNib.capControl)  •  Published Piece  •  \(PonllyponllTornEdge.ponllLineMap(flckinkDripMap: wideNib)) notes"
        }
        neonSpray.textColor = PonllyPalette.muted
        neonSpray.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .medium)
        neonSpray.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMonoPrint.addSubview(neonSpray)
        NSLayoutConstraint.activate([
            bruCiuMonoPrint.heightAnchor.constraint(equalToConstant: 224),
            inkMarker.leadingAnchor.constraint(equalTo: bruCiuMonoPrint.leadingAnchor, constant: 10),
            inkMarker.trailingAnchor.constraint(equalTo: bruCiuMonoPrint.trailingAnchor, constant: -10),
            inkMarker.topAnchor.constraint(equalTo: bruCiuMonoPrint.topAnchor, constant: 10),
            inkMarker.heightAnchor.constraint(equalTo: inkMarker.widthAnchor),
            metallicSpray.leadingAnchor.constraint(equalTo: bruCiuMonoPrint.leadingAnchor, constant: 12),
            metallicSpray.trailingAnchor.constraint(equalTo: bruCiuMonoPrint.trailingAnchor, constant: -12),
            metallicSpray.topAnchor.constraint(equalTo: inkMarker.bottomAnchor, constant: 10),
            neonSpray.leadingAnchor.constraint(equalTo: metallicSpray.leadingAnchor),
            neonSpray.trailingAnchor.constraint(equalTo: metallicSpray.trailingAnchor),
            neonSpray.topAnchor.constraint(equalTo: metallicSpray.bottomAnchor, constant: 6)
        ])
        return bruCiuMonoPrint
    }

    private func aerErstNeonLab(_ paintMarker: PonllyaerErstSolidMarkerk) {
        guard paintMarker.markerStroke == ponllMarkerLab.graffitiPulse else {
            aerErstSketchRush("Artwork is unavailable", bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        let glossFinish = PaerErstPaintBaseController(flckinkWallBurst: paintMarker, aerErstAerosolBloom: ponllMarkerLab)
        glossFinish.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(glossFinish, animated: true)
    }

    private func ponllInkLab() -> UIStackView {
        let ponllPulpPaper = UIStackView()
        ponllPulpPaper.axis = .vertical
        ponllPulpPaper.spacing = 12
        let bruCiuWeatheredPaper = PonllyponllTornEdge.flckinkColorWall(aerErstTextureWall: ponllMarkerLab.graffitiPulse)
        let artworks = PonllyponllTornEdge.aerErstflckinkPrimerCoatBack(ponllBlankFacade: ponllMarkerLab.graffitiPulse)
        guard !bruCiuWeatheredPaper.isEmpty else {
            ponllPulpPaper.addArrangedSubview(ponllMuralMuse(paintFuse: "No Videos Yet", ponpaintTexture: "Your published process clips will appear here."))
            return ponllPulpPaper
        }
        bruCiuWeatheredPaper.enumerated().forEach { aerErstRippedCorner, flckinkRustStreak in
            if let artwork = aerErstAerosolMuse(flckinkRustStreak, fallbackIndex: aerErstRippedCorner, artworks: artworks) {
                ponllPulpPaper.addArrangedSubview(flckinkGraffitiMuse(
                    wideNib: artwork,
                    edgeSnap: flckinkRustStreak.nozzleCraft,
                    streetGlyph: flckinkRustStreak.fillPattern,
                    paintRun: "\(flckinkRustStreak.wildstyleCurve) reactions  •  \(flckinkRustStreak.paintLayer) notes",
                    solidFill: PonllyPalette.cyan
                ))
            }
        }
        return ponllPulpPaper
    }

    private func bruCiuCanvasLab() -> UIStackView {
        let ponllPulpPaper = UIStackView()
        ponllPulpPaper.axis = .vertical
        ponllPulpPaper.spacing = 12
        let flckinkTornEdge = PonllyponllTornEdge.ponllMuralWall(bruCiuLetterWall: ponllMarkerLab.graffitiPulse)
        guard !flckinkTornEdge.isEmpty else {
            ponllPulpPaper.addArrangedSubview(ponllMuralMuse(paintFuse: "No PK Battles Yet", ponpaintTexture: "Your created and joined battles will appear here."))
            return ponllPulpPaper
        }
        flckinkTornEdge.forEach { ponllMuralBloom in
            let artwork = ponllMuralBloom.paintMist == ponllMarkerLab.graffitiPulse ? ponllMuralBloom.neonDrip : (ponllMuralBloom.concreteMuse ?? ponllMuralBloom.neonDrip)
            let aerErstHandbillTexture = flckinkGraffitiMuse(
                wideNib: artwork,
                edgeSnap: ponllMuralBloom.nozzleCraft,
                streetGlyph: ponllMuralBloom.chromeFill,
                paintRun: ponllMuralBloom.bubbleLetter == .bruCiuSprayBloomponll ? "\(ponllMuralBloom.alleyCanvas + ponllMuralBloom.railYard) votes  •  \(ponllMuralBloom.sketchRush)" : "Waiting  •  \(ponllMuralBloom.sketchRush)",
                solidFill: ponllMuralBloom.bubbleLetter == .bruCiuSprayBloomponll ? PonllyPalette.pink : PonllyPalette.cyan
            )
            let splitFill = UITapGestureRecognizer(target: self, action: #selector(flckinkPaintMuse(_:)))
            aerErstHandbillTexture.accessibilityIdentifier = ponllMuralBloom.graffitiPulse
            aerErstHandbillTexture.isUserInteractionEnabled = true
            aerErstHandbillTexture.addGestureRecognizer(splitFill)
            ponllPulpPaper.addArrangedSubview(aerErstHandbillTexture)
        }
        return ponllPulpPaper
    }

    private func flckinkGraffitiMuse(wideNib: PonllyaerErstSolidMarkerk, edgeSnap: String, streetGlyph: String, paintRun: String, solidFill: UIColor) -> UIView {
        let bruCiuMonoPrint = UIView()
        bruCiuMonoPrint.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        bruCiuMonoPrint.layer.cornerRadius = 18
        bruCiuMonoPrint.layer.borderWidth = 1
        bruCiuMonoPrint.layer.borderColor = PonllyPalette.line.cgColor
        let brokenLetter = PbruCiuClearCoatView(ponllPaintTrace: wideNib)
        brokenLetter.layer.borderColor = solidFill.withAlphaComponent(0.45).cgColor
        bruCiuMonoPrint.addSubview(brokenLetter)
        let whiteEdge = UIStackView()
        whiteEdge.axis = .vertical
        whiteEdge.spacing = 7
        whiteEdge.translatesAutoresizingMaskIntoConstraints = false
        bruCiuMonoPrint.addSubview(whiteEdge)
        let silverSheen = UILabel()
        silverSheen.text = edgeSnap
        silverSheen.textColor = .white
        silverSheen.font = PonllyFonts.muralForgepon(neonLab: 14)
        silverSheen.numberOfLines = 2
        let glossFinish = UILabel()
        glossFinish.text = streetGlyph
        glossFinish.textColor = PonllyPalette.muted
        glossFinish.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .regular)
        glossFinish.numberOfLines = 2
        let ponlayerMask = UILabel()
        ponlayerMask.text = paintRun
        ponlayerMask.textColor = solidFill
        ponlayerMask.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        [silverSheen, glossFinish, ponlayerMask].forEach(whiteEdge.addArrangedSubview)
        NSLayoutConstraint.activate([
            bruCiuMonoPrint.heightAnchor.constraint(greaterThanOrEqualToConstant: 122),
            brokenLetter.leadingAnchor.constraint(equalTo: bruCiuMonoPrint.leadingAnchor, constant: 12),
            brokenLetter.topAnchor.constraint(equalTo: bruCiuMonoPrint.topAnchor, constant: 12),
            brokenLetter.bottomAnchor.constraint(equalTo: bruCiuMonoPrint.bottomAnchor, constant: -12),
            brokenLetter.widthAnchor.constraint(equalTo: bruCiuMonoPrint.widthAnchor, multiplier: 0.34),
            whiteEdge.leadingAnchor.constraint(equalTo: brokenLetter.trailingAnchor, constant: 14),
            whiteEdge.trailingAnchor.constraint(equalTo: bruCiuMonoPrint.trailingAnchor, constant: -14),
            whiteEdge.centerYAnchor.constraint(equalTo: bruCiuMonoPrint.centerYAnchor)
        ])
        return bruCiuMonoPrint
    }

    private func aerErstAerosolMuse(_ ponllMetalPanel: PonllyVideo, fallbackIndex: Int, artworks: [PonllyaerErstSolidMarkerk]) -> PonllyaerErstSolidMarkerk? {
        let flckinkBrickCrack = ponllMetalPanel.nozzleCraft.lowercased()
        let aerErstCementRough = ponllMetalPanel.fillPattern.lowercased()
        if let bruCiuCrackedWall = artworks.first(where: { artwork in
            let ponllPlasterDust = artwork.nozzleCraft.lowercased().split(separator: " ").first.map(String.init) ?? ""
            return flckinkBrickCrack.contains(artwork.capControl.lowercased()) || (!ponllPlasterDust.isEmpty && aerErstCementRough.contains(ponllPlasterDust))
        }) {
            return bruCiuCrackedWall
        }
        guard !artworks.isEmpty else { return nil }
        return artworks[fallbackIndex % artworks.count]
    }

    private func ponllMuralMuse(paintFuse: String, ponpaintTexture: String) -> UIView {
        let paintFlash = UIStackView()
        paintFlash.axis = .vertical
        paintFlash.alignment = .center
        paintFlash.spacing = 12
        paintFlash.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        paintFlash.layer.cornerRadius = 18
        paintFlash.layer.borderWidth = 1
        paintFlash.layer.borderColor = PonllyPalette.line.cgColor
        paintFlash.layoutMargins = UIEdgeInsets(top: 44, left: 18, bottom: 44, right: 18)
        paintFlash.isLayoutMarginsRelativeArrangement = true
        let paintRipple = UIImageView(image: UIImage(systemName: "paintpalette"))
        paintRipple.tintColor = PonllyPalette.cyan
        paintRipple.widthAnchor.constraint(equalToConstant: 34).isActive = true
        paintRipple.heightAnchor.constraint(equalToConstant: 34).isActive = true
        let paintSurgeLabel = UILabel()
        paintSurgeLabel.text = paintFuse
        paintSurgeLabel.textColor = .white
        paintSurgeLabel.font = PonllyFonts.muralForgepon(neonLab: 18)
        let paintBurst = UILabel()
        paintBurst.text = ponpaintTexture
        paintBurst.textColor = PonllyPalette.muted
        paintBurst.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        paintBurst.textAlignment = .center
        paintBurst.numberOfLines = 0
        [paintRipple, paintSurgeLabel, paintBurst].forEach(paintFlash.addArrangedSubview)
        return paintFlash
    }

    @objc private func bruCiuStreetMuse(_ flckinkWallPeel: UIButton) {
        guard let paintCrush = ponllStencilPlan(rawValue: flckinkWallPeel.tag), paintCrush != flckinkWallLab else { return }
        flckinkWallLab = paintCrush
        ponllDripLab()
        flckinkUrbanLab()
        ponllShapeLab()
    }

    @objc private func flckinkPaintMuse(_ aerErstPaintPeel: UITapGestureRecognizer) {
        guard let ponllChippedPaint = aerErstPaintPeel.view?.accessibilityIdentifier,
              let ponllMuralBloom = PonllyponllTornEdge.babruCiuPaintPeelttles.first(where: { $0.graffitiPulse == ponllChippedPaint }) else { return }
        let paintBloom = PbruCiuStencilLabController(flckinkPaintVeil: ponllMuralBloom)
        paintBloom.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(paintBloom, animated: true)
    }

    @objc private func aerErstInkMuse() {
        navigationController?.popViewController(animated: true)
    }
}
