import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoponllRollingShutterTile: UIControl {
    let stencilArc: PonllPaintPlan

    init(stencilMood: PonllPaintPlan) {
        self.stencilArc = stencilMood
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 14
        layer.borderWidth = 1
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        let ponllstencilSpark = UIImageView(image: UIImage(named: stencilMood.aerErstTwoToneFill))
        ponllstencilSpark.contentMode = .scaleAspectFill
        ponllstencilSpark.clipsToBounds = true
        ponllstencilSpark.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllstencilSpark)

        let flckinkThemeFooter = UIControl()
        flckinkThemeFooter.backgroundColor = PonllyPalette.panel
        flckinkThemeFooter.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeFooter.addTarget(self, action: #selector(flckinkPaintCueTapped), for: .touchUpInside)
        addSubview(flckinkThemeFooter)

        let bruCiumuralEcho = UILabel()
        bruCiumuralEcho.text = stencilMood.bruCiuMagentaBurstpobn
        bruCiumuralEcho.textColor = .white
        bruCiumuralEcho.font = PonllyFonts.muralForgepon(neonLab: 22)
        bruCiumuralEcho.numberOfLines = 1
        bruCiumuralEcho.adjustsFontSizeToFitWidth = true
        bruCiumuralEcho.minimumScaleFactor = 0.72
        bruCiumuralEcho.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeFooter.addSubview(bruCiumuralEcho)

        let aerErstPaintSpark = UIImageView(image: UIImage(named: "chromePiece"))
        aerErstPaintSpark.contentMode = .scaleAspectFit
        aerErstPaintSpark.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeFooter.addSubview(aerErstPaintSpark)

        let flckinkThemeMeta = UILabel()
        flckinkThemeMeta.text = stencilMood.aerErstLayerBlend.formatted()
        flckinkThemeMeta.textColor = UIColor(red: 1, green: 190/255, blue: 20/255, alpha: 1)
        flckinkThemeMeta.font = PonllyFonts.steelGate(rollingShutter: 18)
        flckinkThemeMeta.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeFooter.addSubview(flckinkThemeMeta)

        let flckinkPaintCue = UIButton(type: .system)
        flckinkPaintCue.setTitle("Bqurya".ponllPaintaerErstHours, for: .normal)
        flckinkPaintCue.setTitleColor(.black, for: .normal)
        flckinkPaintCue.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 16)
        flckinkPaintCue.backgroundColor = PonllyPalette.cyan
        flckinkPaintCue.layer.cornerRadius = 18
        flckinkPaintCue.addTarget(self, action: #selector(flckinkPaintCueTapped), for: .touchUpInside)
        flckinkPaintCue.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemeFooter.addSubview(flckinkPaintCue)

        NSLayoutConstraint.activate([
            ponllstencilSpark.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllstencilSpark.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllstencilSpark.topAnchor.constraint(equalTo: topAnchor),
            ponllstencilSpark.bottomAnchor.constraint(equalTo: flckinkThemeFooter.topAnchor),
            flckinkThemeFooter.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkThemeFooter.trailingAnchor.constraint(equalTo: trailingAnchor),
            flckinkThemeFooter.bottomAnchor.constraint(equalTo: bottomAnchor),
            flckinkThemeFooter.heightAnchor.constraint(equalToConstant: 102),
            bruCiumuralEcho.leadingAnchor.constraint(equalTo: flckinkThemeFooter.leadingAnchor, constant: 14),
            bruCiumuralEcho.trailingAnchor.constraint(equalTo: flckinkThemeFooter.trailingAnchor, constant: -16),
            bruCiumuralEcho.topAnchor.constraint(equalTo: flckinkThemeFooter.topAnchor, constant: 14),
            aerErstPaintSpark.leadingAnchor.constraint(equalTo: flckinkThemeFooter.leadingAnchor, constant: 14),
            aerErstPaintSpark.centerYAnchor.constraint(equalTo: flckinkPaintCue.centerYAnchor),
            aerErstPaintSpark.widthAnchor.constraint(equalToConstant: 20),
            aerErstPaintSpark.heightAnchor.constraint(equalToConstant: 20),
            flckinkThemeMeta.leadingAnchor.constraint(equalTo: aerErstPaintSpark.trailingAnchor, constant: 8),
            flckinkThemeMeta.centerYAnchor.constraint(equalTo: flckinkPaintCue.centerYAnchor),
            flckinkThemeMeta.trailingAnchor.constraint(lessThanOrEqualTo: flckinkPaintCue.leadingAnchor, constant: -10),
            flckinkPaintCue.trailingAnchor.constraint(equalTo: flckinkThemeFooter.trailingAnchor, constant: -16),
            flckinkPaintCue.bottomAnchor.constraint(equalTo: flckinkThemeFooter.bottomAnchor, constant: -14),
            flckinkPaintCue.widthAnchor.constraint(equalToConstant: 75),
            flckinkPaintCue.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func flckinkPaintCueTapped() {
        sendActions(for: .touchUpInside)
    }
}
