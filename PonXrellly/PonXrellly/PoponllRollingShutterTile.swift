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
        let ponllstencilSpark = UIImageView(image: UIImage(named: stencilMood.aerErstTwoToneFill))
        ponllstencilSpark.contentMode = .scaleAspectFill
        ponllstencilSpark.clipsToBounds = true
        ponllstencilSpark.layer.cornerRadius = 10
        ponllstencilSpark.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllstencilSpark)
        let bruCiumuralEcho = UILabel()
        bruCiumuralEcho.text = stencilMood.bruCiuMagentaBurstpobn
        bruCiumuralEcho.textColor = .white
        bruCiumuralEcho.font = PonllyFonts.graffitiForge(aerosolForge: 10)
        bruCiumuralEcho.numberOfLines = 1
        bruCiumuralEcho.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bruCiumuralEcho)
        let flckinkThemeMeta = UILabel()
        flckinkThemeMeta.text = "\(stencilMood.aerErstLayerBlend.formatted()) Coins"
        flckinkThemeMeta.textColor = stencilMood.flckinkSplitFill
        flckinkThemeMeta.font = PonllyFonts.steelGate(rollingShutter: 11)
        flckinkThemeMeta.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkThemeMeta)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 128),
            ponllstencilSpark.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            ponllstencilSpark.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ponllstencilSpark.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            ponllstencilSpark.heightAnchor.constraint(equalToConstant: 74),
            bruCiumuralEcho.leadingAnchor.constraint(equalTo: ponllstencilSpark.leadingAnchor),
            bruCiumuralEcho.trailingAnchor.constraint(equalTo: ponllstencilSpark.trailingAnchor),
            bruCiumuralEcho.topAnchor.constraint(equalTo: ponllstencilSpark.bottomAnchor, constant: 8),
            flckinkThemeMeta.leadingAnchor.constraint(equalTo: bruCiumuralEcho.leadingAnchor),
            flckinkThemeMeta.topAnchor.constraint(equalTo: bruCiumuralEcho.bottomAnchor, constant: 4)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
