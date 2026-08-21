import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyGradientView: UIView {
    private let gradient = CAGradientLayer()

    init(colors: [UIColor], start: CGPoint = CGPoint(x: 0, y: 0), end: CGPoint = CGPoint(x: 1, y: 1)) {
        super.init(frame: .zero)
        gradient.colors = colors.map(\.cgColor)
        gradient.startPoint = start
        gradient.endPoint = end
        layer.insertSublayer(gradient, at: 0)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
}
