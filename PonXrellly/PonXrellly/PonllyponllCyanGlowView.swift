import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyponllCyanGlowView: UIView {
    private let ponllAlleyCanvas = CAGradientLayer()

    init(bruCiuDripMarker bruCiuRailYard: [UIColor], _ flckinkUnderpassMural: CGPoint = CGPoint(x: 0, y: 0), _ aerErstSketchRush: CGPoint = CGPoint(x: 1, y: 1)) {
        super.init(frame: .zero)
        ponllAlleyCanvas.colors = bruCiuRailYard.map(\.cgColor)
        ponllAlleyCanvas.startPoint = flckinkUnderpassMural
        ponllAlleyCanvas.endPoint = aerErstSketchRush
        layer.insertSublayer(ponllAlleyCanvas, at: 0)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        ponllAlleyCanvas.frame = bounds
    }
}
