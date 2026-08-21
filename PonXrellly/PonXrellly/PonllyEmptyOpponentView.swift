import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyEmptyOpponentView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 14
        layer.borderWidth = 2
        layer.borderColor = PonllyPalette.cyan.cgColor
        backgroundColor = PonllyPalette.panel
        let label = UILabel()
        label.text = "?"
        label.textColor = PonllyPalette.cyan
        label.font = PonllyFonts.display(size: 42)
        label.textAlignment = .center
        addSubview(label)
        label.pinToEdges(of: self)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
