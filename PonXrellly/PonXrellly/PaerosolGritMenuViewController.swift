import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PaerosolGritMenuViewController: UIViewController {
    private let ponllTextureBloom: PonllyaerErstTwoToneFillr
    var bruCiuSketchFlicker: (() -> Void)?
    var flckinkPaintFlash: (() -> Void)?

    init(aerErstInkFuse: PonllyaerErstTwoToneFillr) {
        self.ponllTextureBloom = aerErstInkFuse
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ponllAerosolTrace()
    }

    private func ponllAerosolTrace() {
        view.backgroundColor = UIColor(red: 6/255, green: 6/255, blue: 8/255, alpha: 0.9)
        let bruCiuMuralTrail = UITapGestureRecognizer(target: self, action: #selector(aerErstTextureSignal))
        bruCiuMuralTrail.cancelsTouchesInView = false
        view.addGestureRecognizer(bruCiuMuralTrail)

        let flckinkStencilVeil = UIView()
        flckinkStencilVeil.backgroundColor = PonllyPalette.panel
        flckinkStencilVeil.layer.cornerRadius = 22
        flckinkStencilVeil.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        flckinkStencilVeil.layer.borderWidth = 1
        flckinkStencilVeil.layer.borderColor = PonllyPalette.line.cgColor
        flckinkStencilVeil.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkStencilVeil)

        let aerErstChromeAura = UIView()
        aerErstChromeAura.backgroundColor = PonllyPalette.line
        aerErstChromeAura.layer.cornerRadius = 2
        aerErstChromeAura.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilVeil.addSubview(aerErstChromeAura)

        let ponllNeonEcho = UILabel()
        ponllNeonEcho.text = "M3A4N5A6G7E8 9AaCbCcOdUeNfTg".ponllPaintaerErstHours
        ponllNeonEcho.textColor = PonllyPalette.muted
        ponllNeonEcho.font = PonllyFonts.muralForgepon(neonLab: 12)
        ponllNeonEcho.translatesAutoresizingMaskIntoConstraints = false
        flckinkStencilVeil.addSubview(ponllNeonEcho)

        let bruCiuTextureSignal = bruCiuPaintPath(ponllInkArc: "Rheipjokrltm nUospeqrr".ponllPaintaerErstHours, flckinkWallBend: .white, aerErstAerosolKick: "fsltaugv".ponllPaintaerErstHours, bruCiuMuralLean: #selector(ponllSketchTwist))
        let flckinkMarkerWeave = bruCiuPaintPath(ponllInkArc: "BwlxoyczkA BUCsDeErF".ponllPaintaerErstHours, flckinkWallBend: UIColor(red: 255/255, green: 51/255, blue: 85/255, alpha: 1), aerErstAerosolKick: "sGhHiIeJlKdL".ponllPaintaerErstHours, bruCiuMuralLean: #selector(flckinkPaintDepth))
        let aerErstChromeGlow = UIButton(type: .system)
        aerErstChromeGlow.setTitle("CMaNnOcPeQlR".ponllPaintaerErstHours, for: .normal)
        aerErstChromeGlow.setTitleColor(PonllyPalette.muted, for: .normal)
        aerErstChromeGlow.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        aerErstChromeGlow.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        aerErstChromeGlow.layer.cornerRadius = 14
        aerErstChromeGlow.layer.borderWidth = 1
        aerErstChromeGlow.layer.borderColor = PonllyPalette.line.cgColor
        aerErstChromeGlow.addTarget(self, action: #selector(aerErstTextureSignal), for: .touchUpInside)
        aerErstChromeGlow.translatesAutoresizingMaskIntoConstraints = false
        [bruCiuTextureSignal, flckinkMarkerWeave, aerErstChromeGlow].forEach(flckinkStencilVeil.addSubview)

        NSLayoutConstraint.activate([
            flckinkStencilVeil.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkStencilVeil.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkStencilVeil.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstChromeAura.topAnchor.constraint(equalTo: flckinkStencilVeil.topAnchor, constant: 16),
            aerErstChromeAura.centerXAnchor.constraint(equalTo: flckinkStencilVeil.centerXAnchor),
            aerErstChromeAura.widthAnchor.constraint(equalToConstant: 40),
            aerErstChromeAura.heightAnchor.constraint(equalToConstant: 4),
            ponllNeonEcho.leadingAnchor.constraint(equalTo: flckinkStencilVeil.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllNeonEcho.trailingAnchor.constraint(equalTo: flckinkStencilVeil.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            ponllNeonEcho.topAnchor.constraint(equalTo: aerErstChromeAura.bottomAnchor, constant: 20),
            bruCiuTextureSignal.leadingAnchor.constraint(equalTo: ponllNeonEcho.leadingAnchor),
            bruCiuTextureSignal.trailingAnchor.constraint(equalTo: ponllNeonEcho.trailingAnchor),
            bruCiuTextureSignal.topAnchor.constraint(equalTo: ponllNeonEcho.bottomAnchor, constant: 28),
            bruCiuTextureSignal.heightAnchor.constraint(equalToConstant: 58),
            flckinkMarkerWeave.leadingAnchor.constraint(equalTo: bruCiuTextureSignal.leadingAnchor),
            flckinkMarkerWeave.trailingAnchor.constraint(equalTo: bruCiuTextureSignal.trailingAnchor),
            flckinkMarkerWeave.topAnchor.constraint(equalTo: bruCiuTextureSignal.bottomAnchor, constant: 14),
            flckinkMarkerWeave.heightAnchor.constraint(equalToConstant: 58),
            aerErstChromeGlow.leadingAnchor.constraint(equalTo: bruCiuTextureSignal.leadingAnchor),
            aerErstChromeGlow.trailingAnchor.constraint(equalTo: bruCiuTextureSignal.trailingAnchor),
            aerErstChromeGlow.topAnchor.constraint(equalTo: flckinkMarkerWeave.bottomAnchor, constant: 24),
            aerErstChromeGlow.heightAnchor.constraint(equalToConstant: 54),
            aerErstChromeGlow.bottomAnchor.constraint(equalTo: flckinkStencilVeil.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])

        flckinkStencilVeil.transform = CGAffineTransform(translationX: 0, y: 280)
        view.alpha = 0
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.view.alpha = 1
            flckinkStencilVeil.transform = .identity
        }
    }

    private func bruCiuPaintPath(ponllInkArc: String, flckinkWallBend: UIColor, aerErstAerosolKick: String, bruCiuMuralLean: Selector) -> UIControl {
        let ponllStencilTwist = UIControl()
        ponllStencilTwist.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 26/255, alpha: 1)
        ponllStencilTwist.layer.cornerRadius = 14
        ponllStencilTwist.layer.borderWidth = 1
        ponllStencilTwist.layer.borderColor = PonllyPalette.line.cgColor
        ponllStencilTwist.addTarget(self, action: bruCiuMuralLean, for: .touchUpInside)
        ponllStencilTwist.translatesAutoresizingMaskIntoConstraints = false

        let flckinkPaintWeave = UIView()
        flckinkPaintWeave.layer.cornerRadius = 10
        flckinkPaintWeave.layer.borderWidth = 1.2
        flckinkPaintWeave.layer.borderColor = flckinkWallBend.cgColor
        flckinkPaintWeave.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilTwist.addSubview(flckinkPaintWeave)
        let aerErstInkDepth = UIImageView(image: UIImage(systemName: aerErstAerosolKick))
        aerErstInkDepth.tintColor = flckinkWallBend
        aerErstInkDepth.contentMode = .scaleAspectFit
        aerErstInkDepth.translatesAutoresizingMaskIntoConstraints = false
        flckinkPaintWeave.addSubview(aerErstInkDepth)

        let ponllChromeGlow = UILabel()
        ponllChromeGlow.text = ponllInkArc
        ponllChromeGlow.textColor = flckinkWallBend
        ponllChromeGlow.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .bold)
        ponllChromeGlow.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilTwist.addSubview(ponllChromeGlow)

        let bruCiuNeonGrit = UIImageView(image: UIImage(systemName: "chevron.right"))
        bruCiuNeonGrit.tintColor = PonllyPalette.muted
        bruCiuNeonGrit.contentMode = .scaleAspectFit
        bruCiuNeonGrit.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilTwist.addSubview(bruCiuNeonGrit)

        NSLayoutConstraint.activate([
            flckinkPaintWeave.leadingAnchor.constraint(equalTo: ponllStencilTwist.leadingAnchor, constant: 14),
            flckinkPaintWeave.centerYAnchor.constraint(equalTo: ponllStencilTwist.centerYAnchor),
            flckinkPaintWeave.widthAnchor.constraint(equalToConstant: 32),
            flckinkPaintWeave.heightAnchor.constraint(equalToConstant: 32),
            aerErstInkDepth.centerXAnchor.constraint(equalTo: flckinkPaintWeave.centerXAnchor),
            aerErstInkDepth.centerYAnchor.constraint(equalTo: flckinkPaintWeave.centerYAnchor),
            aerErstInkDepth.widthAnchor.constraint(equalToConstant: 16),
            aerErstInkDepth.heightAnchor.constraint(equalToConstant: 16),
            ponllChromeGlow.leadingAnchor.constraint(equalTo: flckinkPaintWeave.trailingAnchor, constant: 14),
            ponllChromeGlow.centerYAnchor.constraint(equalTo: ponllStencilTwist.centerYAnchor),
            ponllChromeGlow.trailingAnchor.constraint(lessThanOrEqualTo: bruCiuNeonGrit.leadingAnchor, constant: -12),
            bruCiuNeonGrit.trailingAnchor.constraint(equalTo: ponllStencilTwist.trailingAnchor, constant: -18),
            bruCiuNeonGrit.centerYAnchor.constraint(equalTo: ponllStencilTwist.centerYAnchor),
            bruCiuNeonGrit.widthAnchor.constraint(equalToConstant: 16),
            bruCiuNeonGrit.heightAnchor.constraint(equalToConstant: 16)
        ])
        return ponllStencilTwist
    }

    private func flckinkWallNoise(_ aerErstAerosolTexture: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.18, animations: {
            self.view.alpha = 0
        }, completion: { _ in
            self.dismiss(animated: false, completion: aerErstAerosolTexture)
        })
    }

    @objc private func ponllSketchTwist() {
        flckinkWallNoise(bruCiuSketchFlicker)
    }

    @objc private func flckinkPaintDepth() {
        flckinkWallNoise(flckinkPaintFlash)
    }

    @objc private func aerErstTextureSignal() {
        flckinkWallNoise()
    }
}
