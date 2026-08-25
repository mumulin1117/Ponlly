import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class ConcreteMuseTile: UIControl {
    let aerErstStreetPosterStyle: PonllPaintPlan

    init(ponllColorPrint bruCiuHandbillTexture: PonllPaintPlan) {
        self.aerErstStreetPosterStyle = bruCiuHandbillTexture
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 14
        layer.borderWidth = 1
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        let flckinkPulpPaper = UIImageView(image: UIImage(named: bruCiuHandbillTexture.aerErstTwoToneFill))
        flckinkPulpPaper.contentMode = .scaleAspectFill
        flckinkPulpPaper.clipsToBounds = true
        flckinkPulpPaper.layer.cornerRadius = 10
        flckinkPulpPaper.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkPulpPaper)
        let aerErstWeatheredPaper = UILabel()
        aerErstWeatheredPaper.text = bruCiuHandbillTexture.bruCiuMagentaBurstpobn
        aerErstWeatheredPaper.textColor = .white
        aerErstWeatheredPaper.font = PonllyFonts.graffitiForge(aerosolForge: 10)
        aerErstWeatheredPaper.numberOfLines = 1
        aerErstWeatheredPaper.translatesAutoresizingMaskIntoConstraints = false
        addSubview(aerErstWeatheredPaper)
        let ponllTornEdge = UILabel()
        ponllTornEdge.text = "\(bruCiuHandbillTexture.aerErstLayerBlend.formatted()) Coins"
        ponllTornEdge.textColor = bruCiuHandbillTexture.flckinkSplitFill
        ponllTornEdge.font = PonllyFonts.steelGate(rollingShutter: 11)
        ponllTornEdge.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllTornEdge)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 128),
            flckinkPulpPaper.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            flckinkPulpPaper.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            flckinkPulpPaper.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            flckinkPulpPaper.heightAnchor.constraint(equalToConstant: 74),
            aerErstWeatheredPaper.leadingAnchor.constraint(equalTo: flckinkPulpPaper.leadingAnchor),
            aerErstWeatheredPaper.trailingAnchor.constraint(equalTo: flckinkPulpPaper.trailingAnchor),
            aerErstWeatheredPaper.topAnchor.constraint(equalTo: flckinkPulpPaper.bottomAnchor, constant: 8),
            ponllTornEdge.leadingAnchor.constraint(equalTo: aerErstWeatheredPaper.leadingAnchor),
            ponllTornEdge.topAnchor.constraint(equalTo: aerErstWeatheredPaper.bottomAnchor, constant: 4)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
