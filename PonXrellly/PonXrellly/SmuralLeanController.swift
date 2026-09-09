import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

enum PonllWallPlan {
    case textureWall
    case sketchWall
    case letterWall
}

final class SmuralLeanController: UIViewController {
    private let ponllflckinkShadowPlanView = UITextView()
    private let ponllHeading = UILabel()
    private let muralPlan: PonllWallPlan

    init(muralPlan: PonllWallPlan = .textureWall) {
        self.muralPlan = muralPlan
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = aerErstaerErstMuralPlan
        view.backgroundColor = PonllyPalette.background
        bruCiubruCiuOutlinePlan()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(aerErstStyleShift),
            name: .ponllStyleShift,
            object: nil
        )
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiubruCiuOutlinePlan() {
        let flckinponllPaintPlan = UIView()
        flckinponllPaintPlan.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinponllPaintPlan)

        let aerErstaerErstLayerPlan = UIButton(type: .system)
        aerErstaerErstLayerPlan.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        aerErstaerErstLayerPlan.ponllGraffitiDraftBackStyle()
        aerErstaerErstLayerPlan.tintColor = .white
        aerErstaerErstLayerPlan.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        aerErstaerErstLayerPlan.layer.cornerRadius = 18
        aerErstaerErstLayerPlan.layer.borderWidth = 1
        aerErstaerErstLayerPlan.layer.borderColor = PonllyPalette.line.cgColor
        aerErstaerErstLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        aerErstaerErstLayerPlan.addTarget(self, action: #selector(ponllbruCiuShadowWall), for: .touchUpInside)
        view.addSubview(aerErstaerErstLayerPlan)

        ponllHeading.text = aerErstaerErstMuralPlan
        ponllHeading.textColor = .white
        ponllHeading.font = PonllyFonts.muralForgepon(neonLab: 16)
        ponllHeading.ponllGraffitiDraftTitleStyle()
        ponllHeading.textAlignment = .center
        ponllHeading.adjustsFontSizeToFitWidth = true
        ponllHeading.minimumScaleFactor = 0.76
        ponllHeading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllHeading)

        ponllflckinkShadowPlanView.isEditable = false
        ponllflckinkShadowPlanView.showsVerticalScrollIndicator = true
        ponllflckinkShadowPlanView.backgroundColor = .clear
        ponllflckinkShadowPlanView.textContainerInset = UIEdgeInsets(top: 18, left: 18, bottom: 34, right: 18)
        ponllflckinkShadowPlanView.attributedText = bruCiuAttributedflckinkStrokeMap()
        ponllflckinkShadowPlanView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllflckinkShadowPlanView)

        NSLayoutConstraint.activate([
            flckinponllPaintPlan.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinponllPaintPlan.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinponllPaintPlan.topAnchor.constraint(equalTo: view.topAnchor),
            flckinponllPaintPlan.heightAnchor.constraint(equalToConstant: 122),
            aerErstaerErstLayerPlan.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstaerErstLayerPlan.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            aerErstaerErstLayerPlan.widthAnchor.constraint(equalToConstant: 36),
            aerErstaerErstLayerPlan.heightAnchor.constraint(equalToConstant: 36),
            ponllHeading.leadingAnchor.constraint(equalTo: aerErstaerErstLayerPlan.trailingAnchor, constant: 14),
            ponllHeading.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            ponllHeading.centerYAnchor.constraint(equalTo: aerErstaerErstLayerPlan.centerYAnchor),
            ponllflckinkShadowPlanView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllflckinkShadowPlanView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllflckinkShadowPlanView.topAnchor.constraint(equalTo: flckinponllPaintPlan.bottomAnchor),
            ponllflckinkShadowPlanView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private var bruCiuIsflckinkSketchPlan: Bool {
        muralPlan == .sketchWall
    }

    private var flckinkIsponllWallPlan: Bool {
        muralPlan == .letterWall
    }

    private var aerErstaerErstMuralPlan: String {
        let styleMap: String
        switch muralPlan {
        case .textureWall: styleMap = "textureCue"
        case .sketchWall: styleMap = "sketchCue"
        case .letterWall: styleMap = "letterCue"
        }
        return PonllGraffitiMuse.graffitiPulse.wallTexture(styleMap)
    }

    private func bruCiuAttributedflckinkStrokeMap() -> NSAttributedString {
        let ponllParagraph = NSMutableParagraphStyle()
        ponllParagraph.lineSpacing = 5
        ponllParagraph.paragraphSpacing = 14
        let styleMap: String
        switch muralPlan {
        case .textureWall: styleMap = "textureWall"
        case .sketchWall: styleMap = "sketchWall"
        case .letterWall: styleMap = "letterWall"
        }
        let bruCiuText = PonllGraffitiMuse.graffitiPulse.wallTexture(styleMap)
        return NSAttributedString(
            string: bruCiuText,
            attributes: [
                .font: PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .regular),
                .foregroundColor: PonllyPalette.muted,
                .paragraphStyle: ponllParagraph
            ]
        )
    }

    @objc private func ponllbruCiuShadowWall() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func aerErstStyleShift() {
        title = aerErstaerErstMuralPlan
        ponllHeading.text = aerErstaerErstMuralPlan
        ponllflckinkShadowPlanView.attributedText = bruCiuAttributedflckinkStrokeMap()
    }
}
