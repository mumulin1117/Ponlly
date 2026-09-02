import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllybruCiuUtilityBoxView: UIView {
    private let ponllAerosolGlow = UIView()
    private let bruCiuMuralGrit = UIView()
    private let aerErstWallDepth: CGFloat
    private var flckinkPaintFlowline: NSLayoutConstraint?
    private var ponllPaintMotion = false
    private var bruCiuPaintSignal = false

    init(aVotes ponllSketchLean: Int, bVotes bruCiuPaintTwist: Int) {
        let flckinkInkWeave = max(ponllSketchLean + bruCiuPaintTwist, 1)
        aerErstWallDepth = CGFloat(ponllSketchLean) / CGFloat(flckinkInkWeave)
        super.init(frame: .zero)
        ponllAerosolGlow.backgroundColor = PonllyPalette.cyan
        ponllAerosolGlow.layer.cornerRadius = 6
        ponllAerosolGlow.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllAerosolGlow)
        bruCiuMuralGrit.backgroundColor = PonllyPalette.pink
        bruCiuMuralGrit.layer.cornerRadius = 6
        bruCiuMuralGrit.translatesAutoresizingMaskIntoConstraints = false
        ponllAerosolGlow.addSubview(bruCiuMuralGrit)
        flckinkPaintFlowline = bruCiuMuralGrit.widthAnchor.constraint(equalToConstant: 0)
        flckinkPaintFlowline?.isActive = true
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
            flckinkStencilNoise.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkStencilNoise.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8),
            aerErstMarkerTexture.trailingAnchor.constraint(equalTo: trailingAnchor),
            aerErstMarkerTexture.topAnchor.constraint(equalTo: ponllAerosolGlow.bottomAnchor, constant: 8)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMoveToWindow() {
        super.didMoveToWindow()
        guard window != nil else { return }
        bruCiuPaintSignal = false
        ponllPaintFlowline()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllPaintFlowline()
    }

    private func ponllPaintFlowline() {
        guard window != nil,
              !ponllPaintMotion,
              !bruCiuPaintSignal,
              ponllAerosolGlow.bounds.width > 0 else { return }
        bruCiuPaintSignal = true
        DispatchQueue.main.async { [weak self] in
            guard let self, !self.ponllPaintMotion else { return }
            self.bruCiuPaintSignal = false
            self.ponllPaintMotion = true
            self.flckinkPaintFlowline?.constant = self.ponllAerosolGlow.bounds.width * self.aerErstWallDepth
            guard !UIAccessibility.isReduceMotionEnabled else {
                self.layoutIfNeeded()
                return
            }
            UIView.animate(
                withDuration: 1.05,
                delay: 0.12,
                options: [.curveEaseOut, .beginFromCurrentState, .allowUserInteraction]
            ) {
                self.layoutIfNeeded()
            }
        }
    }
}
