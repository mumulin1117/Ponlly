import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyNeonButton: UIButton {
    init(title: String, color: UIColor = PonllyPalette.cyan) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = PonllyFonts.display(size: 14)
        backgroundColor = color
        layer.cornerRadius = 22
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = 0.35
        layer.shadowRadius = 18
        layer.shadowOffset = CGSize(width: 0, height: 8)
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
