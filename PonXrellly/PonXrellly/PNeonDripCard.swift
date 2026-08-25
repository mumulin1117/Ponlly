import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PNeonDripCard: UIControl {
    let ponllWallFlicker: PonllycapRackge
    private let bruCiuInkFlash = UILabel()

    init(aerErstMuralFuse: PonllycapRackge) {
        self.ponllWallFlicker = aerErstMuralFuse
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 20
        layer.borderWidth = 1.5
        layer.borderColor = PonllyPalette.line.cgColor
        clipsToBounds = false
        layer.masksToBounds = false
        translatesAutoresizingMaskIntoConstraints = false

        let ponllFinalCoat = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        ponllFinalCoat.contentMode = .scaleAspectFit
        ponllFinalCoat.isUserInteractionEnabled = false
        ponllFinalCoat.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllFinalCoat)

        let bruCiuClearCoat = UILabel()
        bruCiuClearCoat.text = ponllWallFlicker.ponllMuralDepth.formatted()
        bruCiuClearCoat.textColor = .white
        bruCiuClearCoat.textAlignment = .center
        bruCiuClearCoat.font = PonllyFonts.steelGate(rollingShutter: 20)
        bruCiuClearCoat.adjustsFontSizeToFitWidth = true
        bruCiuClearCoat.minimumScaleFactor = 0.74
        bruCiuClearCoat.isUserInteractionEnabled = false
        bruCiuClearCoat.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bruCiuClearCoat)

        let flckinkMatteFinish = UILabel()
        flckinkMatteFinish.text = "Coins"
        flckinkMatteFinish.textColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 1)
        flckinkMatteFinish.textAlignment = .center
        flckinkMatteFinish.font = PonllyFonts.muralForgepon(neonLab: 9)
        flckinkMatteFinish.isUserInteractionEnabled = false
        flckinkMatteFinish.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkMatteFinish)

        bruCiuInkFlash.text = ponllWallFlicker.flckinkWallTwist
        bruCiuInkFlash.textColor = .white
        bruCiuInkFlash.textAlignment = .center
        bruCiuInkFlash.font = PonllyFonts.muralForgepon(neonLab: 10)
        bruCiuInkFlash.backgroundColor = UIColor.black.withAlphaComponent(0.34)
        bruCiuInkFlash.layer.cornerRadius = 11
        bruCiuInkFlash.layer.borderWidth = 1
        bruCiuInkFlash.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuInkFlash.clipsToBounds = true
        bruCiuInkFlash.isUserInteractionEnabled = false
        bruCiuInkFlash.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bruCiuInkFlash)

        if let aerErstMuralArc = ponllWallFlicker.aerErstAerosolWeave {
            let aerErstGlossFinish = UILabel()
            aerErstGlossFinish.text = aerErstMuralArc
            aerErstGlossFinish.textColor = .black
            aerErstGlossFinish.textAlignment = .center
            aerErstGlossFinish.font = PonllyFonts.muralForgepon(neonLab: 8)
            aerErstGlossFinish.backgroundColor = PonllyPalette.pink
            aerErstGlossFinish.layer.cornerRadius = 14
            aerErstGlossFinish.layer.zPosition = 999
            aerErstGlossFinish.clipsToBounds = true
            aerErstGlossFinish.isUserInteractionEnabled = false
            aerErstGlossFinish.translatesAutoresizingMaskIntoConstraints = false
            addSubview(aerErstGlossFinish)
            bringSubviewToFront(aerErstGlossFinish)
            NSLayoutConstraint.activate([
                aerErstGlossFinish.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
                aerErstGlossFinish.topAnchor.constraint(equalTo: topAnchor, constant: -8),
                aerErstGlossFinish.widthAnchor.constraint(equalToConstant: 72),
                aerErstGlossFinish.heightAnchor.constraint(equalToConstant: 30)
            ])
        }

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 190),
            ponllFinalCoat.centerXAnchor.constraint(equalTo: centerXAnchor),
            ponllFinalCoat.topAnchor.constraint(equalTo: topAnchor, constant: 26),
            ponllFinalCoat.widthAnchor.constraint(equalToConstant: 44),
            ponllFinalCoat.heightAnchor.constraint(equalToConstant: 44),
            bruCiuClearCoat.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            bruCiuClearCoat.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            bruCiuClearCoat.topAnchor.constraint(equalTo: ponllFinalCoat.bottomAnchor, constant: 16),
            flckinkMatteFinish.centerXAnchor.constraint(equalTo: centerXAnchor),
            flckinkMatteFinish.topAnchor.constraint(equalTo: bruCiuClearCoat.bottomAnchor, constant: 5),
            bruCiuInkFlash.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            bruCiuInkFlash.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            bruCiuInkFlash.topAnchor.constraint(equalTo: flckinkMatteFinish.bottomAnchor, constant: 15),
            bruCiuInkFlash.heightAnchor.constraint(equalToConstant: 34)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func flckinkStencilTrace(_ muralGrid: String) {
        bruCiuInkFlash.text = muralGrid
    }

    func ponllChromeTrail(_ selected: Bool) {
        layer.borderColor = (selected ? UIColor(red: 1, green: 190/255, blue: 0, alpha: 1) : PonllyPalette.line).cgColor
        layer.borderWidth = selected ? 2.4 : 1.5
        bruCiuInkFlash.backgroundColor = selected ? UIColor(red: 1, green: 190/255, blue: 0, alpha: 1) : UIColor.black.withAlphaComponent(0.34)
        bruCiuInkFlash.textColor = selected ? .black : .white
    }
}
