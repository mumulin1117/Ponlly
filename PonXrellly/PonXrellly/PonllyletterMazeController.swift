import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyletterMazeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        ponllFadeSpray()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func ponllFadeSpray() {
        view.backgroundColor = PonllyPalette.background
        if let bruCiuShadowSpray = PonllyponllTornEdge.aerErstflckinkPrimerCoatBack(ponllBlankFacade: PonllyponllTornEdge.currentUserId).first {
            let flckinkStencilCut = PbruCiuClearCoatView(ponllPaintTrace: bruCiuShadowSpray)
            flckinkStencilCut.alpha = 0.18
            view.addSubview(flckinkStencilCut)
            flckinkStencilCut.woodPanelPonlly(steelGate: view)
        }
        let aerErstStencilSheet = PonllyponllCyanGlowView(bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.7), PonllyPalette.background.withAlphaComponent(0.95)])
        view.addSubview(aerErstStencilSheet)
        aerErstStencilSheet.woodPanelPonlly(steelGate: view)

        let ponllMaskingTape = UIView()
        ponllMaskingTape.backgroundColor = PonllyPalette.cyan.withAlphaComponent(0.12)
        ponllMaskingTape.layer.cornerRadius = 58
        ponllMaskingTape.layer.borderWidth = 4
        ponllMaskingTape.layer.borderColor = PonllyPalette.cyan.cgColor
        ponllMaskingTape.layer.shadowColor = PonllyPalette.cyan.cgColor
        ponllMaskingTape.layer.shadowOpacity = 0.48
        ponllMaskingTape.layer.shadowRadius = 26
        ponllMaskingTape.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllMaskingTape)
        let bruCiuEdgeMask = UIImageView(image: UIImage(systemName: "checkmark"))
        bruCiuEdgeMask.tintColor = PonllyPalette.cyan
        bruCiuEdgeMask.translatesAutoresizingMaskIntoConstraints = false
        ponllMaskingTape.addSubview(bruCiuEdgeMask)

        let ponllRollerPaste = UILabel()
        ponllRollerPaste.text = "Rfegphoirjtk lSmunbompiqtrtsetdu".ponllPaintaerErstHours
        ponllRollerPaste.textColor = .white
        ponllRollerPaste.textAlignment = .center
        ponllRollerPaste.font = PonllyFonts.muralForgepon(neonLab: 28)
        ponllRollerPaste.numberOfLines = 0
        ponllRollerPaste.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllRollerPaste)

        let bruCiuWallPaste = UILabel()
        bruCiuWallPaste.text = "Thank you for helping keep our community safe.\nWe will review your report within 24 hours."
        bruCiuWallPaste.textColor = PonllyPalette.muted
        bruCiuWallPaste.textAlignment = .center
        bruCiuWallPaste.font = PonllyFonts.utilityBox(blankFacade: 15)
        bruCiuWallPaste.numberOfLines = 0
        bruCiuWallPaste.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuWallPaste)

        let flckinkLayerMask = PonllyNeonButton("Bvawcxky zTAoB CPDrEoFfGiHlIeJ".ponllPaintaerErstHours)
        flckinkLayerMask.addTarget(self, action: #selector(aerErstPaperCut), for: .touchUpInside)
        view.addSubview(flckinkLayerMask)

        NSLayoutConstraint.activate([
            ponllMaskingTape.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ponllMaskingTape.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 172),
            ponllMaskingTape.widthAnchor.constraint(equalToConstant: 116),
            ponllMaskingTape.heightAnchor.constraint(equalToConstant: 116),
            bruCiuEdgeMask.centerXAnchor.constraint(equalTo: ponllMaskingTape.centerXAnchor),
            bruCiuEdgeMask.centerYAnchor.constraint(equalTo: ponllMaskingTape.centerYAnchor),
            bruCiuEdgeMask.widthAnchor.constraint(equalToConstant: 48),
            bruCiuEdgeMask.heightAnchor.constraint(equalToConstant: 48),
            ponllRollerPaste.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            ponllRollerPaste.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            ponllRollerPaste.topAnchor.constraint(equalTo: ponllMaskingTape.bottomAnchor, constant: 48),
            bruCiuWallPaste.leadingAnchor.constraint(equalTo: ponllRollerPaste.leadingAnchor),
            bruCiuWallPaste.trailingAnchor.constraint(equalTo: ponllRollerPaste.trailingAnchor),
            bruCiuWallPaste.topAnchor.constraint(equalTo: ponllRollerPaste.bottomAnchor, constant: 22),
            flckinkLayerMask.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            flckinkLayerMask.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            flckinkLayerMask.topAnchor.constraint(equalTo: bruCiuWallPaste.bottomAnchor, constant: 62),
            flckinkLayerMask.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    @objc private func aerErstPaperCut() {
        if let ponllBladeLine = navigationController?.viewControllers.reversed().first(where: { $0 is FlckinkPrimerCoatController }) {
            navigationController?.popToViewController(ponllBladeLine, animated: true)
        } else {
            navigationController?.popToRootViewController(animated: true)
        }
    }
}
