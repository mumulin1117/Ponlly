import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class ErstMuralPlanController: UIViewController {
    private let bruCiuWallPlan: UIImage

    init(flckinkColorPlan aerErstSketchPlan: UIImage) {
        self.bruCiuWallPlan = aerErstSketchPlan
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PFrGeHvIiJeKwL MCNhOaPlQlReSnTgUeV".ponllPaintaerErstHours
        view.backgroundColor = PonllyPalette.background
        let ponllLayerPlan = UIStackView()
        ponllLayerPlan.axis = .vertical
        ponllLayerPlan.spacing = 26
        ponllLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllLayerPlan)
        let bruCiuPaintPlan = OnllBlankFacadeView(flckinkPaintAura: bruCiuWallPlan)
        bruCiuPaintPlan.heightAnchor.constraint(equalToConstant: 220).isActive = true
        let flckinkOutlinePlan = UIView()
        flckinkOutlinePlan.backgroundColor = PonllyPalette.panel
        flckinkOutlinePlan.layer.cornerRadius = 18
        flckinkOutlinePlan.layer.borderWidth = 1
        flckinkOutlinePlan.layer.borderColor = PonllyPalette.line.cgColor
        let aerErstShadowPlan = UILabel()
        aerErstShadowPlan.text = "Wildstyle\n\nWildstyle Showdown\nBring Your Absolute Best Chrome Letters And Sharp Outlines to This Burner Arena"
        aerErstShadowPlan.numberOfLines = 0
        aerErstShadowPlan.textColor = .white
        aerErstShadowPlan.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkOutlinePlan.addSubview(aerErstShadowPlan)
        aerErstShadowPlan.woodPanelPonlly(steelGate: flckinkOutlinePlan, bruCiuClearCoat: UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18))
        let ponllFillPlan = PonllyNeonButton("PWuXbYlZi0s1h2 3C4h5a6l7l8e9nagbec".ponllPaintaerErstHours)
        ponllFillPlan.addTarget(self, action: #selector(bruCiuStencilPlan), for: .touchUpInside)
        let flckinkPastePlan = UIButton(type: .system)
        flckinkPastePlan.setTitle("Eddeiftg hCihjaklllmennogpeq".ponllPaintaerErstHours, for: .normal)
        flckinkPastePlan.tintColor = PonllyPalette.muted
        flckinkPastePlan.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        [bruCiuPaintPlan, flckinkOutlinePlan, ponllFillPlan, flckinkPastePlan].forEach(ponllLayerPlan.addArrangedSubview)
        NSLayoutConstraint.activate([
            ponllLayerPlan.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllLayerPlan.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            ponllLayerPlan.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            flckinkOutlinePlan.heightAnchor.constraint(equalToConstant: 170),
            ponllFillPlan.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    @objc private func bruCiuStencilPlan() {
        flckinkPrimerCoatponlu("PrusbtluivswhxiynzgA BcChDaElFlGeHnIgJeK.L.M.N".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.navigationController?.pushViewController(NikTrafficBarrierController(bruCiuInkFlash: self.bruCiuWallPlan), animated: true)
        }
    }
}
