import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class RerosolTwistController: UIViewController {
    private let bruCiuEdgeSnap: PonllyaerErstTwoToneFillr
    private let bruCiuStencilFlicker = UIScrollView()
    private let flckinkMarkerFlash = UIStackView()

    init(bruCiuEdgeSnap: PonllyaerErstTwoToneFillr) {
        self.bruCiuEdgeSnap = bruCiuEdgeSnap
        super.init(nibName: nil, bundle: nil)
        title = "Wfogrhkisj".ponllPaintaerErstHours
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        ponllAngleBreak()
        flckinkAerosolHaze()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func ponllAngleBreak() {
        let aerErstNozzleMist = aerErstGradientFill()
        view.addSubview(aerErstNozzleMist)
        bruCiuStencilFlicker.alwaysBounceVertical = true
        bruCiuStencilFlicker.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuStencilFlicker)
        flckinkMarkerFlash.axis = .vertical
        flckinkMarkerFlash.spacing = 14
        flckinkMarkerFlash.translatesAutoresizingMaskIntoConstraints = false
        bruCiuStencilFlicker.addSubview(flckinkMarkerFlash)

        NSLayoutConstraint.activate([
            aerErstNozzleMist.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            aerErstNozzleMist.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            aerErstNozzleMist.topAnchor.constraint(equalTo: view.topAnchor),
            aerErstNozzleMist.heightAnchor.constraint(equalToConstant: 112),
            bruCiuStencilFlicker.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuStencilFlicker.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuStencilFlicker.topAnchor.constraint(equalTo: aerErstNozzleMist.bottomAnchor),
            bruCiuStencilFlicker.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkMarkerFlash.leadingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.leadingAnchor, constant: 18),
            flckinkMarkerFlash.trailingAnchor.constraint(equalTo: bruCiuStencilFlicker.frameLayoutGuide.trailingAnchor, constant: -18),
            flckinkMarkerFlash.topAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.topAnchor, constant: 2),
            flckinkMarkerFlash.bottomAnchor.constraint(equalTo: bruCiuStencilFlicker.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func flckinkAerosolHaze() {
        flckinkMarkerFlash.arrangedSubviews.forEach {
            flckinkMarkerFlash.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let bruCiuSprayHalo = PonllyponllTornEdge.ponllMuralWall(bruCiuLetterWall: bruCiuEdgeSnap.graffitiPulse)
        let ponllPaintCloud = UILabel()
        ponllPaintCloud.text = String(
            format: "%xdY qBVaztRtklLem NWpoTrskUsa".ponllPaintaerErstHours,
            bruCiuSprayHalo.count
        )
        ponllPaintCloud.textColor = PonllyPalette.muted
        ponllPaintCloud.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkMarkerFlash.addArrangedSubview(ponllPaintCloud)
        guard !bruCiuSprayHalo.isEmpty else {
            flckinkMarkerFlash.addArrangedSubview(bruCiuMarkerNib())
            return
        }
        bruCiuSprayHalo.forEach { flckinkMarkerFlash.addArrangedSubview(aerErstHighlightStroke($0)) }
    }

    private func aerErstGradientFill() -> UIView {
        let flckinkColorFade = UIView()
        flckinkColorFade.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuChromeShine = UIButton(type: .system)
        bruCiuChromeShine.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        bruCiuChromeShine.ponllGraffitiDraftBackStyle()
        bruCiuChromeShine.tintColor = .white
        bruCiuChromeShine.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        bruCiuChromeShine.layer.cornerRadius = 18
        bruCiuChromeShine.layer.borderWidth = 1
        bruCiuChromeShine.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuChromeShine.translatesAutoresizingMaskIntoConstraints = false
        bruCiuChromeShine.addTarget(self, action: #selector(aerErstBrickTone), for: .touchUpInside)
        flckinkColorFade.addSubview(bruCiuChromeShine)

        let ponllWhitePop = UILabel()
        ponllWhitePop.text = "Bkaltmtnloep qWrosrtkusv".ponllPaintaerErstHours
        ponllWhitePop.textColor = .white
        ponllWhitePop.font = PonllyFonts.muralForgepon(neonLab: 16)
        ponllWhitePop.ponllGraffitiDraftTitleStyle()
        ponllWhitePop.textAlignment = .center
        ponllWhitePop.translatesAutoresizingMaskIntoConstraints = false
        flckinkColorFade.addSubview(ponllWhitePop)

        NSLayoutConstraint.activate([
            bruCiuChromeShine.leadingAnchor.constraint(equalTo: flckinkColorFade.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            bruCiuChromeShine.topAnchor.constraint(equalTo: flckinkColorFade.safeAreaLayoutGuide.topAnchor, constant: 12),
            bruCiuChromeShine.widthAnchor.constraint(equalToConstant: 36),
            bruCiuChromeShine.heightAnchor.constraint(equalToConstant: 36),
            ponllWhitePop.centerXAnchor.constraint(equalTo: flckinkColorFade.centerXAnchor),
            ponllWhitePop.centerYAnchor.constraint(equalTo: bruCiuChromeShine.centerYAnchor)
        ])
        return flckinkColorFade
    }

    private func aerErstHighlightStroke(_ ponllMuralBloom: PonllyBattle) -> UIControl {
        let bruCiuHardOutline = UIControl()
        bruCiuHardOutline.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        bruCiuHardOutline.layer.cornerRadius = 18
        bruCiuHardOutline.layer.borderWidth = 1
        bruCiuHardOutline.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuHardOutline.addAction(UIAction { [weak self] _ in
            let detail = PbruCiuStencilLabController(flckinkPaintVeil: ponllMuralBloom)
            detail.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(detail, animated: true)
        }, for: .touchUpInside)

        let artwork = ponllMuralBloom.paintMist == bruCiuEdgeSnap.graffitiPulse ? ponllMuralBloom.neonDrip : (ponllMuralBloom.concreteMuse ?? ponllMuralBloom.neonDrip)
        let ponllCleanOutline = PbruCiuClearCoatView(ponllPaintTrace: artwork)
        ponllCleanOutline.isUserInteractionEnabled = false
        bruCiuHardOutline.addSubview(ponllCleanOutline)

        let aerErstSoftCap = UILabel()
        aerErstSoftCap.text = ponllMuralBloom.nozzleCraft
        aerErstSoftCap.textColor = .white
        aerErstSoftCap.font = PonllyFonts.muralForgepon(neonLab: 14)
        aerErstSoftCap.numberOfLines = 2
        aerErstSoftCap.translatesAutoresizingMaskIntoConstraints = false
        bruCiuHardOutline.addSubview(aerErstSoftCap)

        let flckinkSkinnyCap = UILabel()
        let bruCiuFatCap = ponllMuralBloom.alleyCanvas + ponllMuralBloom.railYard
        flckinkSkinnyCap.text = ponllMuralBloom.bubbleLetter == .bruCiuSprayBloomponll
            ? String(format: "%xdY qvVoztReksL m N•p T s%U@a".ponllPaintaerErstHours, bruCiuFatCap, ponllMuralBloom.sketchRush)
            : String(format: "WxaYiqtViznRgk L m•N p T%s@U".ponllPaintaerErstHours, ponllMuralBloom.sketchRush)
        flckinkSkinnyCap.textColor = ponllMuralBloom.bubbleLetter == .bruCiuSprayBloomponll ? PonllyPalette.pink : PonllyPalette.cyan
        flckinkSkinnyCap.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
        flckinkSkinnyCap.translatesAutoresizingMaskIntoConstraints = false
        bruCiuHardOutline.addSubview(flckinkSkinnyCap)

        let flckinkWideNib = UILabel()
        flckinkWideNib.text = String(
            format: "%x@Y q V•z R k%Ldm NnpoTtseUsa".ponllPaintaerErstHours,
            ponllMuralBloom.chromeFill,
            ponllMuralBloom.underpassMural.count
        )
        flckinkWideNib.textColor = PonllyPalette.muted
        flckinkWideNib.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        flckinkWideNib.numberOfLines = 1
        flckinkWideNib.translatesAutoresizingMaskIntoConstraints = false
        bruCiuHardOutline.addSubview(flckinkWideNib)

        NSLayoutConstraint.activate([
            bruCiuHardOutline.heightAnchor.constraint(equalToConstant: 124),
            ponllCleanOutline.leadingAnchor.constraint(equalTo: bruCiuHardOutline.leadingAnchor, constant: 12),
            ponllCleanOutline.topAnchor.constraint(equalTo: bruCiuHardOutline.topAnchor, constant: 12),
            ponllCleanOutline.bottomAnchor.constraint(equalTo: bruCiuHardOutline.bottomAnchor, constant: -12),
            ponllCleanOutline.widthAnchor.constraint(equalTo: bruCiuHardOutline.widthAnchor, multiplier: 0.34),
            aerErstSoftCap.leadingAnchor.constraint(equalTo: ponllCleanOutline.trailingAnchor, constant: 14),
            aerErstSoftCap.trailingAnchor.constraint(equalTo: bruCiuHardOutline.trailingAnchor, constant: -14),
            aerErstSoftCap.topAnchor.constraint(equalTo: bruCiuHardOutline.topAnchor, constant: 22),
            flckinkSkinnyCap.leadingAnchor.constraint(equalTo: aerErstSoftCap.leadingAnchor),
            flckinkSkinnyCap.trailingAnchor.constraint(equalTo: aerErstSoftCap.trailingAnchor),
            flckinkSkinnyCap.topAnchor.constraint(equalTo: aerErstSoftCap.bottomAnchor, constant: 10),
            flckinkWideNib.leadingAnchor.constraint(equalTo: aerErstSoftCap.leadingAnchor),
            flckinkWideNib.trailingAnchor.constraint(equalTo: aerErstSoftCap.trailingAnchor),
            flckinkWideNib.topAnchor.constraint(equalTo: flckinkSkinnyCap.bottomAnchor, constant: 8)
        ])
        return bruCiuHardOutline
    }

    private func bruCiuMarkerNib() -> UIView {
        let ponllInkBleed = UIStackView()
        ponllInkBleed.axis = .vertical
        ponllInkBleed.alignment = .center
        ponllInkBleed.spacing = 12
        ponllInkBleed.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        ponllInkBleed.layer.cornerRadius = 18
        ponllInkBleed.layer.borderWidth = 1
        ponllInkBleed.layer.borderColor = PonllyPalette.line.cgColor
        ponllInkBleed.layoutMargins = UIEdgeInsets(top: 44, left: 18, bottom: 44, right: 18)
        ponllInkBleed.isLayoutMarginsRelativeArrangement = true
        let         aerErstDripTrail = UIImageView(image: UIImage(systemName: "bolt.horizontal"))
                aerErstDripTrail.tintColor = PonllyPalette.cyan
                aerErstDripTrail.widthAnchor.constraint(equalToConstant: 36).isActive = true
                aerErstDripTrail.heightAnchor.constraint(equalToConstant: 36).isActive = true
        let flckinkPaintRun = UILabel()
        flckinkPaintRun.text = "Nwox yBzaAtBtClDeE FWGoHrIkJsK LYMeNtO".ponllPaintaerErstHours
        flckinkPaintRun.textColor = .white
        flckinkPaintRun.font = PonllyFonts.muralForgepon(neonLab: 18)
        let bruCiuUrbanPatina = UILabel()
        bruCiuUrbanPatina.text = "YPoQuRrS TjUoViWnXeYdZ 0a1n2d3 4c5r6e7a8t9eadb cPdKe fbgahtitjlkelsm nwoiplqlr satpupvewaxry zhAeBrCeD.E".ponllPaintaerErstHours
        bruCiuUrbanPatina.textColor = PonllyPalette.muted
        bruCiuUrbanPatina.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        bruCiuUrbanPatina.textAlignment = .center
        bruCiuUrbanPatina.numberOfLines = 0
        [        aerErstDripTrail, flckinkPaintRun, bruCiuUrbanPatina].forEach(ponllInkBleed.addArrangedSubview)
        return ponllInkBleed
    }

    @objc private func aerErstBrickTone() {
        navigationController?.popViewController(animated: true)
    }
}
