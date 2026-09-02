import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class NikTrafficBarrierController: UIViewController {
    private let ponllWallFlicker: UIImage

    init(bruCiuInkFlash: UIImage) {
        self.ponllWallFlicker = bruCiuInkFlash
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Wqaristtiunvgw xFyozrA BCChDaElFlGeHnIgJeKrL".ponllPaintaerErstHours
        view.backgroundColor = PonllyPalette.background
        let flckinkMuralTrail = UIStackView()
        flckinkMuralTrail.axis = .vertical
        flckinkMuralTrail.spacing = 30
        flckinkMuralTrail.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkMuralTrail)
        let aerErstStencilVeil = OnllBlankFacadeView(flckinkPaintAura: ponllWallFlicker)
        aerErstStencilVeil.heightAnchor.constraint(equalToConstant: 220).isActive = true
        let ponllChromeEcho = UILabel()
        ponllChromeEcho.text = "YMoNuOrP QCRhSaTlUlVeWnXgYeZ 0I1s2 3L4i5v6e7!8 9Waabictdienfgg hFiojrk lAm nCorpeqartsotru vTwox yAzcAcBeCpDtE.F".ponllPaintaerErstHours
        ponllChromeEcho.textColor = PonllyPalette.green
        ponllChromeEcho.textAlignment = .center
        ponllChromeEcho.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .bold)
        ponllChromeEcho.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        ponllChromeEcho.layer.cornerRadius = 16
        ponllChromeEcho.clipsToBounds = true
        ponllChromeEcho.heightAnchor.constraint(equalToConstant: 58).isActive = true
        let bruCiuNeonSignal = UILabel()
        bruCiuNeonSignal.text = "Theme                                      Wildstyle\nStakes Duration                         24 Hours\nOpponent Acceptance Deadline       11 Hours Left"
        bruCiuNeonSignal.textColor = .white
        bruCiuNeonSignal.numberOfLines = 0
        bruCiuNeonSignal.font = PonllyFonts.steelGate(rollingShutter: 12)
        bruCiuNeonSignal.backgroundColor = PonllyPalette.panel
        bruCiuNeonSignal.layer.cornerRadius = 16
        bruCiuNeonSignal.clipsToBounds = true
        bruCiuNeonSignal.heightAnchor.constraint(equalToConstant: 120).isActive = true
        let flckinkSketchQuest = PonllyNeonButton("DGeHlIeJtKeL MCNhOaPlQlReSnTgUeV".ponllPaintaerErstHours, PonllyPalette.pink)
        flckinkSketchQuest.setTitleColor(.white, for: .normal)
        flckinkSketchQuest.addTarget(self, action: #selector(aerErstTextureCue), for: .touchUpInside)
        [aerErstStencilVeil, ponllChromeEcho, bruCiuNeonSignal, flckinkSketchQuest].forEach(flckinkMuralTrail.addArrangedSubview)
        NSLayoutConstraint.activate([
            flckinkMuralTrail.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            flckinkMuralTrail.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            flckinkMuralTrail.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
            flckinkSketchQuest.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        ponllGraffitiDraftNavigationStyle()
        tabBarController?.tabBar.isHidden = true
    }

    @objc private func aerErstTextureCue() {
        flckinkPrimerCoatponlu("DWeXlYeZt0i1n2g3 4c5h6a7l8l9eanbgced.e.f.g".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
}
