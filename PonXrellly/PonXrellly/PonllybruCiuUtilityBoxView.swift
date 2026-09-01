import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllybruCiuUtilityBoxView: UIView {
    init(aVotes ponllSketchLean: Int, bVotes bruCiuPaintTwist: Int) {
        super.init(frame: .zero)
        let flckinkInkWeave = max(ponllSketchLean + bruCiuPaintTwist, 1)
        let aerErstWallDepth = CGFloat(ponllSketchLean) / CGFloat(flckinkInkWeave)
        let ponllAerosolGlow = UIView()
        ponllAerosolGlow.backgroundColor = PonllyPalette.cyan
        ponllAerosolGlow.layer.cornerRadius = 6
        ponllAerosolGlow.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllAerosolGlow)
        let bruCiuMuralGrit = UIView()
        bruCiuMuralGrit.backgroundColor = PonllyPalette.pink
        bruCiuMuralGrit.layer.cornerRadius = 6
        bruCiuMuralGrit.translatesAutoresizingMaskIntoConstraints = false
        ponllAerosolGlow.addSubview(bruCiuMuralGrit)
        let flckinkStencilNoise = UILabel()
        flckinkStencilNoise.text = "Kai \(Int(aerErstWallDepth * 100))%"
        flckinkStencilNoise.textColor = .white
        flckinkStencilNoise.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        let aerErstMarkerTexture = UILabel()
        aerErstMarkerTexture.text = "Nova \(100 - Int(aerErstWallDepth * 100))%"
        aerErstMarkerTexture.textColor = .white
        aerErstMarkerTexture.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .bold)
        aerErstMarkerTexture.textAlignment = .right
        [flckinkStencilNoise, aerErstMarkerTexture].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        NSLayoutConstraint.activate([
            ponllAerosolGlow.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllAerosolGlow.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllAerosolGlow.topAnchor.constraint(equalTo: topAnchor),
            ponllAerosolGlow.heightAnchor.constraint(equalToConstant: 12),
            bruCiuMuralGrit.leadingAnchor.constraint(equalTo: ponllAerosolGlow.leadingAnchor),
            bruCiuMuralGrit.topAnchor.constraint(equalTo: ponllAerosolGlow.topAnchor),
            bruCiuMuralGrit.bottomAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor),
            bruCiuMuralGrit.widthAnchor.constraint(equalTo: ponllAerosolGlow.widthAnchor, multiplier: aerErstWallDepth),
            flckinkStencilNoise.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkStencilNoise.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8),
            aerErstMarkerTexture.trailingAnchor.constraint(equalTo: trailingAnchor),
            aerErstMarkerTexture.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
