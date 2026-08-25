import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class InkUnderpassMuralController: UIViewController {
    private let aerErstInkSketch = UIScrollView()
    private let ponllWallSketch = UIStackView()
    private let bruCiuColorSketch = UIButton(type: .system)
    private let flckinkStyleSketch = UIButton(type: .system)
    private var aerErstShadowSketch: PonllyBattleStatus = .bruCiuSprayBloomponll

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        navigationController?.navigationBar.isHidden = true
        ponllOutlineSketch()
        bruCiuStencilSketch()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkMarkerSketch), name: .ponllyBattlesponllNozzleSet, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        bruCiuStencilSketch()
    }

    private func ponllOutlineSketch() {
        let aerErstTextureSketch = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.background, UIColor(red: 13/255, green: 16/255, blue: 22/255, alpha: 1)])
        view.addSubview(aerErstTextureSketch)
        aerErstTextureSketch.woodPanelPonlly(steelGate: view)

        aerErstInkSketch.alwaysBounceVertical = true
        aerErstInkSketch.delaysContentTouches = false
        aerErstInkSketch.canCancelContentTouches = true
        view.addSubview(aerErstInkSketch)
        aerErstInkSketch.woodPanelPonlly(steelGate: view)

        ponllWallSketch.axis = .vertical
        ponllWallSketch.spacing = 16
        ponllWallSketch.translatesAutoresizingMaskIntoConstraints = false
        aerErstInkSketch.addSubview(ponllWallSketch)

        let ponllUrbanSketch = UIView()
        ponllUrbanSketch.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuChromeSketch = UILabel()
        bruCiuChromeSketch.text = "PwoxnylzlAyB".ponllPaintaerErstHours
        bruCiuChromeSketch.font = PonllyFonts.muralForgepon(neonLab: 22)
        bruCiuChromeSketch.textColor = .white
        bruCiuChromeSketch.layer.shadowColor = PonllyPalette.pink.cgColor
        bruCiuChromeSketch.layer.shadowOpacity = 0.35
        bruCiuChromeSketch.layer.shadowRadius = 10
        bruCiuChromeSketch.translatesAutoresizingMaskIntoConstraints = false
        ponllUrbanSketch.addSubview(bruCiuChromeSketch)

        let flckinkNeonSketch = UIButton(type: .system)
        flckinkNeonSketch.setImage(UIImage(named: "stencilBloom")?.withRenderingMode(.alwaysOriginal), for: .normal)
        flckinkNeonSketch.imageView?.contentMode = .scaleAspectFit
        flckinkNeonSketch.translatesAutoresizingMaskIntoConstraints = false
        flckinkNeonSketch.addTarget(self, action: #selector(aerErstPasteSketch), for: .touchUpInside)
        ponllUrbanSketch.addSubview(flckinkNeonSketch)

        let ponllDripSketch = UIStackView(arrangedSubviews: [bruCiuColorSketch, flckinkStyleSketch])
        ponllDripSketch.axis = .horizontal
        ponllDripSketch.spacing = 10
        ponllDripSketch.translatesAutoresizingMaskIntoConstraints = false
        ponllUrbanSketch.addSubview(ponllDripSketch)

        flckinkAerosolPiece(bruCiuColorSketch, bruCiuGraffitiPiece: "HCoDtE FBGaHtItJlKeLsM".ponllPaintaerErstHours, flckinkQuickPiece: .bruCiuSprayBloomponll)
        flckinkAerosolPiece(flckinkStyleSketch, bruCiuGraffitiPiece: "WNaOiPtQiRnSgT UfVoWrX YCZh0a1l2l3e4n5g6e7".ponllPaintaerErstHours, flckinkQuickPiece: .flckinkWallTexturepoj)

        ponllWallSketch.addArrangedSubview(ponllUrbanSketch)

        NSLayoutConstraint.activate([
            ponllWallSketch.leadingAnchor.constraint(equalTo: aerErstInkSketch.frameLayoutGuide.leadingAnchor, constant: 16),
            ponllWallSketch.trailingAnchor.constraint(equalTo: aerErstInkSketch.frameLayoutGuide.trailingAnchor, constant: -16),
            ponllWallSketch.topAnchor.constraint(equalTo: aerErstInkSketch.contentLayoutGuide.topAnchor, constant: 22),
            ponllWallSketch.bottomAnchor.constraint(equalTo: aerErstInkSketch.contentLayoutGuide.bottomAnchor, constant: -30),
            ponllUrbanSketch.heightAnchor.constraint(equalToConstant: 116),
            bruCiuChromeSketch.leadingAnchor.constraint(equalTo: ponllUrbanSketch.leadingAnchor, constant: 4),
            bruCiuChromeSketch.topAnchor.constraint(equalTo: ponllUrbanSketch.topAnchor),
            flckinkNeonSketch.trailingAnchor.constraint(equalTo: ponllUrbanSketch.trailingAnchor, constant: -4),
            flckinkNeonSketch.topAnchor.constraint(equalTo: ponllUrbanSketch.topAnchor, constant: 2),
            flckinkNeonSketch.widthAnchor.constraint(equalToConstant: 52),
            flckinkNeonSketch.heightAnchor.constraint(equalToConstant: 52),
            ponllDripSketch.leadingAnchor.constraint(equalTo: ponllUrbanSketch.leadingAnchor, constant: 4),
            ponllDripSketch.trailingAnchor.constraint(lessThanOrEqualTo: ponllUrbanSketch.trailingAnchor, constant: -4),
            ponllDripSketch.topAnchor.constraint(equalTo: bruCiuChromeSketch.bottomAnchor, constant: 18),
            bruCiuColorSketch.heightAnchor.constraint(equalToConstant: 48),
            flckinkStyleSketch.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    private func flckinkAerosolPiece(_ aerErstCleanPiece: UIButton, bruCiuGraffitiPiece: String, flckinkQuickPiece: PonllyBattleStatus) {
        aerErstCleanPiece.setTitle(bruCiuGraffitiPiece, for: .normal)
        aerErstCleanPiece.titleLabel?.font = flckinkQuickPiece == .bruCiuSprayBloomponll ? PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium) : PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        aerErstCleanPiece.titleLabel?.adjustsFontSizeToFitWidth = true
        aerErstCleanPiece.titleLabel?.minimumScaleFactor = 0.86
        aerErstCleanPiece.layer.cornerRadius = 24
        aerErstCleanPiece.layer.borderWidth = 1.5
        aerErstCleanPiece.tag = flckinkQuickPiece == .bruCiuSprayBloomponll ? 0 : 1
        aerErstCleanPiece.addTarget(self, action: #selector(bruCiuCleanPiece(_:)), for: .touchUpInside)
        aerErstCleanPiece.widthAnchor.constraint(equalToConstant: flckinkQuickPiece == .bruCiuSprayBloomponll ? 106 : 174).isActive = true
    }

    private func bruCiuStencilSketch() {
        while ponllWallSketch.arrangedSubviews.count > 1 {
            ponllWallSketch.arrangedSubviews.last?.removeFromSuperview()
        }
        aerErstRoughPiece()
        ponllWallSketch.addArrangedSubview(bruCiuSoftPiece())
        let ponllBoldPiece = PonllyponllTornEdge.flckinkPaintRun(aerErstDripTrail: aerErstShadowSketch)
        for bruCiuSharpPiece in ponllBoldPiece {
            if aerErstShadowSketch == .flckinkWallTexturepoj {
                let flckinkWidePiece = PonllyWaitingBattleCardView(fencePiece: bruCiuSharpPiece)
                flckinkWidePiece.paintQuest = { [weak self] in self?.aerErstTallPiece(bruCiuSharpPiece) }
                flckinkWidePiece.zMotion = { [weak self] ponllCompactPiece in self?.bruCiuFlowPiece(ponllCompactPiece) }
                flckinkWidePiece.styleNoise = { [weak self] in self?.flckinkAnglePiece(bruCiuSharpPiece) }
                ponllWallSketch.addArrangedSubview(flckinkWidePiece)
            } else {
                let aerErstCurvePiece = CkinkMuralLabView(flckinkWallPaste: bruCiuSharpPiece)
                aerErstCurvePiece.bruCiuSilverSheen = { [weak self] in self?.aerErstTallPiece(bruCiuSharpPiece) }
                aerErstCurvePiece.flckinkPrimerCoat = { [weak self] in self?.ponllArrowPiece(for: bruCiuSharpPiece) }
                aerErstCurvePiece.aerErstPaintBase = { [weak self] bruCiuHaloPiece in self?.bruCiuFlowPiece(bruCiuHaloPiece) }
                ponllWallSketch.addArrangedSubview(aerErstCurvePiece)
            }
        }
    }

    private func bruCiuSoftPiece() -> UIView {
        let flckinkBurstPiece = UILabel()
        flckinkBurstPiece.text = aerErstShadowSketch == .bruCiuSprayBloomponll ? "H8o9ta bBcadtetflgehsi".ponllPaintaerErstHours : "Wjakiltminnogp qFrosrt uCvhwaxlylzeAnBgCeD".ponllPaintaerErstHours
        flckinkBurstPiece.textColor = .white
        flckinkBurstPiece.font = PonllyFonts.muralForgepon(neonLab: 12)
        return flckinkBurstPiece
    }

    private func aerErstRoughPiece() {
        let aerErstFadePiece = aerErstShadowSketch == .bruCiuSprayBloomponll
        bruCiuColorSketch.backgroundColor = aerErstFadePiece ? PonllyPalette.pink : .clear
        bruCiuColorSketch.setTitleColor(.white, for: .normal)
        bruCiuColorSketch.layer.borderColor = aerErstFadePiece ? PonllyPalette.pink.cgColor : UIColor.white.withAlphaComponent(0.35).cgColor
        flckinkStyleSketch.backgroundColor = aerErstFadePiece ? .clear : PonllyPalette.pink
        flckinkStyleSketch.setTitleColor(.white, for: .normal)
        flckinkStyleSketch.layer.borderColor = aerErstFadePiece ? UIColor.white.withAlphaComponent(0.35).cgColor : PonllyPalette.pink.cgColor
    }

    private func aerErstTallPiece(_ ponllGlowPiece: PonllyBattle) {
        let bruCiuGrimePiece = PonllyponllTornEdge.flckinkPaintRun().first { $0.graffitiPulse == ponllGlowPiece.graffitiPulse } ?? ponllGlowPiece
        let flckinkGritPiece = PbruCiuStencilLabController(flckinkPaintVeil: bruCiuGrimePiece)
        flckinkGritPiece.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(flckinkGritPiece, animated: true)
    }

    private func bruCiuFlowPiece(_ aerErstFreshPiece: PonllyaerErstTwoToneFillr) {
        let ponllLayerPiece = FlckinkPrimerCoatController(user: aerErstFreshPiece)
        ponllLayerPiece.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(ponllLayerPiece, animated: true)
    }

    private func flckinkAnglePiece(_ bruCiuNightPiece: PonllyBattle) {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let aerErstDawnPiece = BruCiuSilverSheenController(ponllPrimerCoat: bruCiuNightPiece)
            aerErstDawnPiece.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(aerErstDawnPiece, animated: true)
        }
    }

    private func ponllArrowPiece(for flckinkRailPiece: PonllyBattle) {
        let ponllTunnelPiece = UIAlertController(title: "BEaFtGtHlIeJ KOLpMtNiOoPnQsR".ponllPaintaerErstHours, message: flckinkRailPiece.nozzleCraft, preferredStyle: .actionSheet)
        ponllTunnelPiece.addAction(UIAlertAction(title: "RSeTpUoVrWtX YCZh0a1l2l3e4n5g6e7".ponllPaintaerErstHours, style: .destructive) { _ in
            FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
                let bruCiuAlleyPiece = PonllyroughFillController(blackOutline: flckinkRailPiece)
                bruCiuAlleyPiece.fadeSpray = { [weak self] in
                    self?.aerErstSketchRush("R8e9paobrctd esfugbhmiijtktlemdn".ponllPaintaerErstHours, bruCiuLetterForm: .flckinkSplitFill)
                }
                bruCiuAlleyPiece.modalPresentationStyle = .overFullScreen
                bruCiuAlleyPiece.modalTransitionStyle = .crossDissolve
                self.present(bruCiuAlleyPiece, animated: true)
            }
        })
        ponllTunnelPiece.addAction(UIAlertAction(title: "Nooptq rIsnttuevrwexsytzeAdB".ponllPaintaerErstHours, style: .default) { _ in
            self.flckinkPrimerCoatponlu("UCpDdEaFtGeHdI".ponllPaintaerErstHours)
        })
        ponllTunnelPiece.addAction(UIAlertAction(title: "CJaKnLcMeNlO".ponllPaintaerErstHours, style: .cancel))
        if let flckinkBridgePiece = ponllTunnelPiece.popoverPresentationController {
            flckinkBridgePiece.sourceView = view
            flckinkBridgePiece.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.maxY - 80, width: 1, height: 1)
        }
        present(ponllTunnelPiece, animated: true)
    }

    @objc private func bruCiuCleanPiece(_ aerErstBrickPiece: UIButton) {
        aerErstShadowSketch = aerErstBrickPiece.tag == 0 ? .bruCiuSprayBloomponll : .flckinkWallTexturepoj
        bruCiuStencilSketch()
    }

    @objc private func aerErstPasteSketch() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let ponllSteelPiece = PonllyDirectInboxViewController(keepsTabBarVisible: false)
            ponllSteelPiece.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(ponllSteelPiece, animated: true)
        }
    }

    @objc private func flckinkMarkerSketch() {
        aerErstShadowSketch = .bruCiuSprayBloomponll
        bruCiuStencilSketch()
    }
}
