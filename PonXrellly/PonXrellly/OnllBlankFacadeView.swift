import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class OnllBlankFacadeView: UIView {
    private let bruCiuMuralCue: UIImage?

    init(flckinkPaintAura: UIImage? = nil) {
        self.bruCiuMuralCue = flckinkPaintAura
        super.init(frame: .zero)
        ponllStencilSeed()
    }

    override init(frame: CGRect) {
        self.bruCiuMuralCue = nil
        super.init(frame: frame)
        ponllStencilSeed()
    }

    private func ponllStencilSeed() {
        let aerErstChromeSpark: UIView
        if let bruCiuMuralCue {
            aerErstChromeSpark = PbruCiuSprayCanView(bruCiuPaintSignal: bruCiuMuralCue)
        } else {
            aerErstChromeSpark = PbruCiuClearCoatView(ponllPaintTrace: .init(graffitiPulse: "phriejvkilemwn".ponllPaintaerErstHours, markerStroke: "u01", nozzleCraft: "Woiplqdrssttyulvew".ponllPaintaerErstHours, capControl: "WxiylzdAsBtCyDlEeF".ponllPaintaerErstHours, stencilBloom: "inkDrift", inkDrift: [.systemPink, .cyan, .gray]))
        }
        let flckinkNeonMood = PonllyEmptyOpponentView()
        [aerErstChromeSpark, flckinkNeonMood].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        NSLayoutConstraint.activate([
            aerErstChromeSpark.leadingAnchor.constraint(equalTo: leadingAnchor),
            aerErstChromeSpark.topAnchor.constraint(equalTo: topAnchor),
            aerErstChromeSpark.bottomAnchor.constraint(equalTo: bottomAnchor),
            aerErstChromeSpark.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            flckinkNeonMood.trailingAnchor.constraint(equalTo: trailingAnchor),
            flckinkNeonMood.topAnchor.constraint(equalTo: topAnchor),
            flckinkNeonMood.bottomAnchor.constraint(equalTo: bottomAnchor),
            flckinkNeonMood.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
