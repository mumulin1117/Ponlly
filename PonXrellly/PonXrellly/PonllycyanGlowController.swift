import UIKit

final class PonllycyanGlowController: UIViewController {
    private let ponllChromeMood: String
    private let bruCiuNeonPath: UIImage?
    private let flckinkTextureArc: () -> Void
    private let aerErstSketchBend = UIImageView(image: UIImage(named: "colorFade"))

    init(_ ponllChromeMood: String, _ bruCiuNeonPath: UIImage?, _ flckinkTextureArc: @escaping () -> Void) {
        self.ponllChromeMood = ponllChromeMood
        self.bruCiuNeonPath = bruCiuNeonPath
        self.flckinkTextureArc = flckinkTextureArc
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        ponllPaintKick()
    }

    private func ponllPaintKick() {
        aerErstSketchBend.contentMode = .scaleAspectFill
        aerErstSketchBend.alpha = 0.46
        view.addSubview(aerErstSketchBend)
        aerErstSketchBend.woodPanelPonlly(steelGate: view)

        let bruCiuEdgeMask = PonllyponllCyanGlowView(
            bruCiuDripMarker: [
                UIColor.black.withAlphaComponent(0.42),
                UIColor(red: 18/255, green: 0, blue: 15/255, alpha: 0.5),
                UIColor.black.withAlphaComponent(0.9)
            ],
            CGPoint(x: 0.5, y: 0),
            CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(bruCiuEdgeMask)
        bruCiuEdgeMask.woodPanelPonlly(steelGate: view)

        let flckinkLayerMask = UIView()
        flckinkLayerMask.backgroundColor = .clear
        flckinkLayerMask.layer.cornerRadius = 65
        flckinkLayerMask.layer.borderWidth = 0
        flckinkLayerMask.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkLayerMask)

        let aerErstPaperCut = UIImageView(image: UIImage(named: "chromeAura"))
        aerErstPaperCut.contentMode = .scaleAspectFit
        aerErstPaperCut.clipsToBounds = false
        aerErstPaperCut.translatesAutoresizingMaskIntoConstraints = false
        flckinkLayerMask.addSubview(aerErstPaperCut)

        let ponllSprayHalo = UILabel()
        ponllSprayHalo.text = "WxeYlqcVozmRek LTmoN\npPTosnUlalByc".ponllPaintaerErstHours
        ponllSprayHalo.textColor = .white
        ponllSprayHalo.textAlignment = .center
        ponllSprayHalo.font = PonllyFonts.muralForgepon(neonLab: 32)
        ponllSprayHalo.numberOfLines = 0
        ponllSprayHalo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllSprayHalo)

        let bruCiuCutoutShape = UILabel()
        bruCiuCutoutShape.text = "YOoPuQrR SsTtUrVeWeXtY Za0r1t2 3j4o5u6r7n8e9ya bbcedgeifngsh injokwl.m nBoaptqtrlset uwviwtxhy zrAiBvCaDlEsF,G HuIpJlKoLaMdN OyPoQuRrS TmUaVsWtXeYrZp0i1e2c3e4s5,6 7a8n9da bccldaeifmg hyiojukrl mtnuorpfq.r".ponllPaintaerErstHours
        bruCiuCutoutShape.textColor = PonllyPalette.muted
        bruCiuCutoutShape.textAlignment = .center
        bruCiuCutoutShape.font = PonllyFonts.utilityBox(blankFacade: 15)
        bruCiuCutoutShape.numberOfLines = 0
        bruCiuCutoutShape.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        bruCiuCutoutShape.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuCutoutShape)

        let flckinkSprayShield = PonllyNeonButton("Esnttuevrw xAypzpA".ponllPaintaerErstHours)
        flckinkSprayShield.addTarget(self, action: #selector(bruCiuInkLean), for: .touchUpInside)
        flckinkSprayShield.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkSprayShield)

        let aerErstOversprayGlow = NSLayoutConstraint(
            item: flckinkLayerMask,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.356,
            constant: 0
        )

        NSLayoutConstraint.activate([
            flckinkLayerMask.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            aerErstOversprayGlow,
            flckinkLayerMask.widthAnchor.constraint(equalToConstant: 130),
            flckinkLayerMask.heightAnchor.constraint(equalToConstant: 130),
            aerErstPaperCut.centerXAnchor.constraint(equalTo: flckinkLayerMask.centerXAnchor),
            aerErstPaperCut.centerYAnchor.constraint(equalTo: flckinkLayerMask.centerYAnchor),
            aerErstPaperCut.widthAnchor.constraint(equalTo: flckinkLayerMask.widthAnchor),
            aerErstPaperCut.heightAnchor.constraint(equalTo: flckinkLayerMask.heightAnchor),

            ponllSprayHalo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42),
            ponllSprayHalo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -42),
            ponllSprayHalo.topAnchor.constraint(equalTo: flckinkLayerMask.bottomAnchor, constant: 53),
            bruCiuCutoutShape.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            bruCiuCutoutShape.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            bruCiuCutoutShape.topAnchor.constraint(equalTo: ponllSprayHalo.bottomAnchor, constant: 16),

            flckinkSprayShield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            flckinkSprayShield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            bruCiuCutoutShape.bottomAnchor.constraint(lessThanOrEqualTo: flckinkSprayShield.topAnchor, constant: -20),
            flckinkSprayShield.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            flckinkSprayShield.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    @objc private func bruCiuInkLean() {
        navigationController?.dismiss(animated: true) {
            self.flckinkTextureArc()
        }
    }
}
