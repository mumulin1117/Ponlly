import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class ErstWeatheredPaperController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        flckinkGraffitiLab()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
    }

    private func flckinkGraffitiLab() {
        let aerErstAerosolLab = UIView()
        aerErstAerosolLab.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstAerosolLab)
        let ponllLetterLab = UILabel()
        ponllLetterLab.text = "COrPeQaRtSiToUnV WHXuYbZ".ponllPaintaerErstHours
        ponllLetterLab.textColor = .white
        ponllLetterLab.font = PonllyFonts.muralForgepon(neonLab: 24)
        ponllLetterLab.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolLab.addSubview(ponllLetterLab)
        let bruCiuColorLab = UILabel()
        bruCiuColorLab.text = "S0e1l2e3c4t5 6Y7o8u9ra bMceddeifugmh".ponllPaintaerErstHours
        bruCiuColorLab.textColor = PonllyPalette.muted
        bruCiuColorLab.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
        bruCiuColorLab.translatesAutoresizingMaskIntoConstraints = false
        aerErstAerosolLab.addSubview(bruCiuColorLab)
        let flckinkWallLab = UIButton(type: .system)
        flckinkWallLab.setImage(UIImage(systemName: "xmark"), for: .normal)
        flckinkWallLab.tintColor = .white
        flckinkWallLab.backgroundColor = PonllyPalette.panel
        flckinkWallLab.layer.cornerRadius = 28
        flckinkWallLab.layer.borderWidth = 1
        flckinkWallLab.layer.borderColor = PonllyPalette.line.cgColor
        flckinkWallLab.translatesAutoresizingMaskIntoConstraints = false
        flckinkWallLab.addTarget(self, action: #selector(aerErstStyleLab), for: .touchUpInside)
        aerErstAerosolLab.addSubview(flckinkWallLab)

        let ponllMarkerLab = UIStackView()
        ponllMarkerLab.axis = .vertical
        ponllMarkerLab.spacing = 22
        ponllMarkerLab.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllMarkerLab)
        ponllMarkerLab.addArrangedSubview(bruCiuStencilLab(ponllMuralLab: "Piojsktl mVniodpeqor".ponllPaintaerErstHours, bruCiuAerosolMuse: "Sshtaurvew xpyrzoAgBrCeDsEsF GtHiImJeKlLaMpNsOePsQ R&S TtUuVtWoXrYiZa0l1s2".ponllPaintaerErstHours, flckinkMuralMuse: PonllyPalette.cyan, aerErstStreetMuse: "paintFlow", ponllPaintMuse: #selector(bruCiuInkMuse)))
        ponllMarkerLab.addArrangedSubview(bruCiuStencilLab(ponllMuralLab: "S3t4a5r6t7 8P9Ka bBcadtetflgeh".ponllPaintaerErstHours, bruCiuAerosolMuse: "Cihjaklllmennogpeq rasntoutvhwexry zwArBiCtDeErF GtHoI JaK LbMaNtOtPlQeR".ponllPaintaerErstHours, flckinkMuralMuse: PonllyPalette.green, aerErstStreetMuse: "wallCraft", ponllPaintMuse: #selector(flckinkStyleLab)))
        ponllMarkerLab.addArrangedSubview(bruCiuStencilLab(ponllMuralLab: "CSrTeUaVtWeX YVZo0i1c2e3 4R5o6o7m8".ponllPaintaerErstHours, bruCiuAerosolMuse: "H9aanbgcoduetf,g hriejvkilemwn oypaqrrdsst,u vowrx yczrAiBtCiDqEuFeG".ponllPaintaerErstHours, flckinkMuralMuse: .white, aerErstStreetMuse: "sprayRhythm", ponllPaintMuse: #selector(aerErstWallMuse)))

        let bruCiuLetterMuse = UILabel()
        bruCiuLetterMuse.text = "LHeIaJvKeL MYNoOuPrQ RMSaTrUkV".ponllPaintaerErstHours
        bruCiuLetterMuse.textColor = UIColor.white.withAlphaComponent(0.03)
        bruCiuLetterMuse.font = PonllyFonts.muralForgepon(neonLab: 34)
        bruCiuLetterMuse.adjustsFontSizeToFitWidth = true
        bruCiuLetterMuse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuLetterMuse)

        NSLayoutConstraint.activate([
            aerErstAerosolLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            aerErstAerosolLab.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            aerErstAerosolLab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
            aerErstAerosolLab.heightAnchor.constraint(equalToConstant: 74),
            ponllLetterLab.leadingAnchor.constraint(equalTo: aerErstAerosolLab.leadingAnchor),
            ponllLetterLab.topAnchor.constraint(equalTo: aerErstAerosolLab.topAnchor),
            bruCiuColorLab.leadingAnchor.constraint(equalTo: ponllLetterLab.leadingAnchor),
            bruCiuColorLab.topAnchor.constraint(equalTo: ponllLetterLab.bottomAnchor, constant: 2),
            flckinkWallLab.trailingAnchor.constraint(equalTo: aerErstAerosolLab.trailingAnchor),
            flckinkWallLab.centerYAnchor.constraint(equalTo: aerErstAerosolLab.centerYAnchor),
            flckinkWallLab.widthAnchor.constraint(equalToConstant: 56),
            flckinkWallLab.heightAnchor.constraint(equalToConstant: 56),
            ponllMarkerLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32),
            ponllMarkerLab.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            ponllMarkerLab.topAnchor.constraint(equalTo: aerErstAerosolLab.bottomAnchor, constant: 46),
            bruCiuLetterMuse.leadingAnchor.constraint(equalTo: ponllMarkerLab.leadingAnchor),
            bruCiuLetterMuse.trailingAnchor.constraint(equalTo: ponllMarkerLab.trailingAnchor),
            bruCiuLetterMuse.topAnchor.constraint(equalTo: ponllMarkerLab.bottomAnchor, constant: 76)
        ])
    }

    private func bruCiuStencilLab(ponllMuralLab: String, bruCiuAerosolMuse: String, flckinkMuralMuse: UIColor, aerErstStreetMuse: String, ponllPaintMuse: Selector) -> UIControl {
        let bruCiuInkMuse = UIControl()
        bruCiuInkMuse.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.72)
        bruCiuInkMuse.layer.cornerRadius = 26
        bruCiuInkMuse.layer.borderWidth = 1.2
        bruCiuInkMuse.layer.borderColor = flckinkMuralMuse.withAlphaComponent(0.25).cgColor
        bruCiuInkMuse.layer.shadowColor = flckinkMuralMuse.cgColor
        bruCiuInkMuse.layer.shadowOpacity = 0.2
        bruCiuInkMuse.layer.shadowRadius = 18
        bruCiuInkMuse.translatesAutoresizingMaskIntoConstraints = false
        bruCiuInkMuse.addTarget(self, action: ponllPaintMuse, for: .touchUpInside)
        let flckinkLetterMuse = UILabel()
        flckinkLetterMuse.text = ponllMuralLab
        flckinkLetterMuse.textColor = flckinkMuralMuse
        flckinkLetterMuse.font = PonllyFonts.muralForgepon(neonLab: 16)
        flckinkLetterMuse.translatesAutoresizingMaskIntoConstraints = false
        let aerErstColorMuse = UILabel()
        aerErstColorMuse.text = bruCiuAerosolMuse
        aerErstColorMuse.textColor = PonllyPalette.muted
        aerErstColorMuse.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        aerErstColorMuse.numberOfLines = 2
        aerErstColorMuse.translatesAutoresizingMaskIntoConstraints = false
        let ponllStyleMuse = UIImageView(image: UIImage(named: aerErstStreetMuse))
        ponllStyleMuse.contentMode = .scaleAspectFit
        ponllStyleMuse.translatesAutoresizingMaskIntoConstraints = false
        bruCiuInkMuse.addSubview(flckinkLetterMuse)
        bruCiuInkMuse.addSubview(aerErstColorMuse)
        bruCiuInkMuse.addSubview(ponllStyleMuse)
        NSLayoutConstraint.activate([
            bruCiuInkMuse.heightAnchor.constraint(equalToConstant: 112),
            flckinkLetterMuse.leadingAnchor.constraint(equalTo: bruCiuInkMuse.leadingAnchor, constant: 28),
            flckinkLetterMuse.topAnchor.constraint(equalTo: bruCiuInkMuse.topAnchor, constant: 28),
            aerErstColorMuse.leadingAnchor.constraint(equalTo: flckinkLetterMuse.leadingAnchor),
            aerErstColorMuse.trailingAnchor.constraint(lessThanOrEqualTo: ponllStyleMuse.leadingAnchor, constant: -18),
            aerErstColorMuse.topAnchor.constraint(equalTo: flckinkLetterMuse.bottomAnchor, constant: 12),
            ponllStyleMuse.trailingAnchor.constraint(equalTo: bruCiuInkMuse.trailingAnchor, constant: -26),
            ponllStyleMuse.centerYAnchor.constraint(equalTo: bruCiuInkMuse.centerYAnchor),
            ponllStyleMuse.widthAnchor.constraint(equalToConstant: 72),
            ponllStyleMuse.heightAnchor.constraint(equalToConstant: 72)
        ])
        return bruCiuInkMuse
    }

    @objc private func flckinkStyleLab() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let bruCiuWallMuse = BruCiuPrintLayerController()
            bruCiuWallMuse.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(bruCiuWallMuse, animated: true)
        }
    }

    @objc private func aerErstStyleLab() {
        tabBarController?.selectedIndex = 0
    }

    @objc private func bruCiuInkMuse() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let flckinkDripMuse = DinkWallTextureController()
            flckinkDripMuse.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(flckinkDripMuse, animated: true)
        }
    }

    @objc private func aerErstWallMuse() {
        FlckinkMatteFinish.shared.bruCiuBladeLine(aerErstSprayShield: self) {
            let ponllTextureMuse = PonllystencilCascadeTroller()
            ponllTextureMuse.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(ponllTextureMuse, animated: true)
        }
    }
}
