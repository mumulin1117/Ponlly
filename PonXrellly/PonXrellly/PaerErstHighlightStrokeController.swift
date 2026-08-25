import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PaerErstHighlightStrokeController: UIViewController {
    private let aerErstSketchBloom: PonllyaerErstTwoToneFillr
    var ponllChromeFlicker: (() -> Void)?

    init(bruCiuPaintFlash: PonllyaerErstTwoToneFillr) {
        self.aerErstSketchBloom = bruCiuPaintFlash
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        flckinkInkFuse()
    }

    private func flckinkInkFuse() {
        view.backgroundColor = UIColor.black.withAlphaComponent(0.78)
        let ponllMuralTrace = UIView()
        ponllMuralTrace.backgroundColor = PonllyPalette.panel
        ponllMuralTrace.layer.cornerRadius = 24
        ponllMuralTrace.layer.borderWidth = 1.3
        ponllMuralTrace.layer.borderColor = PonllyPalette.line.cgColor
        ponllMuralTrace.layer.shadowColor = PonllyPalette.pink.cgColor
        ponllMuralTrace.layer.shadowOpacity = 0.22
        ponllMuralTrace.layer.shadowRadius = 28
        ponllMuralTrace.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllMuralTrace)

        let bruCiuStencilTrail = UIView()
        bruCiuStencilTrail.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.12)
        bruCiuStencilTrail.layer.cornerRadius = 40
        bruCiuStencilTrail.layer.borderWidth = 1.5
        bruCiuStencilTrail.layer.borderColor = PonllyPalette.pink.cgColor
        bruCiuStencilTrail.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralTrace.addSubview(bruCiuStencilTrail)
        let flckinkMarkerVeil = UIImageView(image: UIImage(systemName: "shield.lefthalf.filled"))
        flckinkMarkerVeil.tintColor = PonllyPalette.pink
        flckinkMarkerVeil.translatesAutoresizingMaskIntoConstraints = false
        bruCiuStencilTrail.addSubview(flckinkMarkerVeil)

        let aerErstChromeAura = UILabel()
        aerErstChromeAura.text = "BylzoAcBkC DTEhFiGsH IUJsKeLrM?N".ponllPaintaerErstHours
        aerErstChromeAura.textColor = .white
        aerErstChromeAura.textAlignment = .center
        aerErstChromeAura.font = PonllyFonts.muralForgepon(neonLab: 20)
        aerErstChromeAura.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralTrace.addSubview(aerErstChromeAura)

        let ponllNeonEcho = UILabel()
        ponllNeonEcho.text = "@\(aerErstSketchBloom.aerosolDream.lowercased())"
        ponllNeonEcho.textColor = PonllyPalette.pink
        ponllNeonEcho.textAlignment = .center
        ponllNeonEcho.font = PonllyFonts.steelGate(rollingShutter: 14)
        ponllNeonEcho.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralTrace.addSubview(ponllNeonEcho)

        let bruCiuTextureSignal = UIStackView()
        bruCiuTextureSignal.axis = .vertical
        bruCiuTextureSignal.spacing = 12
        bruCiuTextureSignal.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralTrace.addSubview(bruCiuTextureSignal)
        [
            "TOhPiQsR SuTsUeVrW XcYaZn0n1o2t3 4v5i6e7w8 9yaobucrd epfrgohfiijlkel".ponllPaintaerErstHours,
            "Tmhniosp qurssetru vcwaxnynzoAtB CsDeEnFdG HyIoJuK LmMeNsOsPaQgReSsT".ponllPaintaerErstHours,
            "TUhViWsX YuZs0e1r2 3c4a5n6n7o8t9 aibnctdeerfagchti jwkiltmhn oypoqurrs tcuovnwtxeynztA".ponllPaintaerErstHours
        ].forEach { bruCiuTextureSignal.addArrangedSubview(flckinkSketchQuest($0)) }

        let flckinkPaintCue = UIButton(type: .system)
        flckinkPaintCue.setTitle("CBaCnDcEeFlG".ponllPaintaerErstHours, for: .normal)
        flckinkPaintCue.setTitleColor(PonllyPalette.muted, for: .normal)
        flckinkPaintCue.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        flckinkPaintCue.layer.cornerRadius = 16
        flckinkPaintCue.layer.borderWidth = 1.2
        flckinkPaintCue.layer.borderColor = PonllyPalette.line.cgColor
        flckinkPaintCue.addTarget(self, action: #selector(aerErstInkSeed), for: .touchUpInside)
        flckinkPaintCue.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralTrace.addSubview(flckinkPaintCue)

        let aerErstWallSpark = PonllyNeonButton("BHlIoJcKkL".ponllPaintaerErstHours, UIColor(red: 255/255, green: 51/255, blue: 85/255, alpha: 1))
        aerErstWallSpark.addTarget(self, action: #selector(ponllAerosolMood), for: .touchUpInside)
        ponllMuralTrace.addSubview(aerErstWallSpark)

        NSLayoutConstraint.activate([
            ponllMuralTrace.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ponllMuralTrace.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ponllMuralTrace.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            ponllMuralTrace.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            bruCiuStencilTrail.centerXAnchor.constraint(equalTo: ponllMuralTrace.centerXAnchor),
            bruCiuStencilTrail.topAnchor.constraint(equalTo: ponllMuralTrace.topAnchor, constant: 34),
            bruCiuStencilTrail.widthAnchor.constraint(equalToConstant: 80),
            bruCiuStencilTrail.heightAnchor.constraint(equalToConstant: 80),
            flckinkMarkerVeil.centerXAnchor.constraint(equalTo: bruCiuStencilTrail.centerXAnchor),
            flckinkMarkerVeil.centerYAnchor.constraint(equalTo: bruCiuStencilTrail.centerYAnchor),
            flckinkMarkerVeil.widthAnchor.constraint(equalToConstant: 28),
            flckinkMarkerVeil.heightAnchor.constraint(equalToConstant: 28),
            aerErstChromeAura.leadingAnchor.constraint(equalTo: ponllMuralTrace.leadingAnchor, constant: 20),
            aerErstChromeAura.trailingAnchor.constraint(equalTo: ponllMuralTrace.trailingAnchor, constant: -20),
            aerErstChromeAura.topAnchor.constraint(equalTo: bruCiuStencilTrail.bottomAnchor, constant: 28),
            ponllNeonEcho.leadingAnchor.constraint(equalTo: aerErstChromeAura.leadingAnchor),
            ponllNeonEcho.trailingAnchor.constraint(equalTo: aerErstChromeAura.trailingAnchor),
            ponllNeonEcho.topAnchor.constraint(equalTo: aerErstChromeAura.bottomAnchor, constant: 10),
            bruCiuTextureSignal.leadingAnchor.constraint(equalTo: ponllMuralTrace.leadingAnchor, constant: 42),
            bruCiuTextureSignal.trailingAnchor.constraint(equalTo: ponllMuralTrace.trailingAnchor, constant: -34),
            bruCiuTextureSignal.topAnchor.constraint(equalTo: ponllNeonEcho.bottomAnchor, constant: 28),
            flckinkPaintCue.leadingAnchor.constraint(equalTo: ponllMuralTrace.leadingAnchor, constant: 24),
            flckinkPaintCue.topAnchor.constraint(equalTo: bruCiuTextureSignal.bottomAnchor, constant: 28),
            flckinkPaintCue.heightAnchor.constraint(equalToConstant: 56),
            aerErstWallSpark.leadingAnchor.constraint(equalTo: flckinkPaintCue.trailingAnchor, constant: 12),
            aerErstWallSpark.trailingAnchor.constraint(equalTo: ponllMuralTrace.trailingAnchor, constant: -24),
            aerErstWallSpark.topAnchor.constraint(equalTo: flckinkPaintCue.topAnchor),
            aerErstWallSpark.widthAnchor.constraint(equalTo: flckinkPaintCue.widthAnchor),
            aerErstWallSpark.heightAnchor.constraint(equalTo: flckinkPaintCue.heightAnchor),
            aerErstWallSpark.bottomAnchor.constraint(equalTo: ponllMuralTrace.bottomAnchor, constant: -24)
        ])
    }

    private func flckinkSketchQuest(_ bruCiuPaintPath: String) -> UIView {
        let flckinkInkArc = UIStackView()
        flckinkInkArc.axis = .horizontal
        flckinkInkArc.alignment = .center
        flckinkInkArc.spacing = 12
        let aerErstMuralBend = UIImageView(image: UIImage(systemName: "xmark.circle.fill"))
        aerErstMuralBend.tintColor = PonllyPalette.pink
        aerErstMuralBend.widthAnchor.constraint(equalToConstant: 18).isActive = true
        aerErstMuralBend.heightAnchor.constraint(equalToConstant: 18).isActive = true
        let ponllStencilKick = UILabel()
        ponllStencilKick.text = bruCiuPaintPath
        ponllStencilKick.textColor = PonllyPalette.muted
        ponllStencilKick.font = PonllyFonts.utilityBox(blankFacade: 13)
        ponllStencilKick.numberOfLines = 0
        flckinkInkArc.addArrangedSubview(aerErstMuralBend)
        flckinkInkArc.addArrangedSubview(ponllStencilKick)
        return flckinkInkArc
    }

    @objc private func aerErstInkSeed() {
        dismiss(animated: true)
    }

    @objc private func ponllAerosolMood() {
        dismiss(animated: true, completion: ponllChromeFlicker)
    }
}
