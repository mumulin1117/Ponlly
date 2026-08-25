import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyNeonButton: UIButton {
    init(_ ponllLineBurst: String, _ bruCiuCyanGlow: UIColor = PonllyPalette.cyan) {
        super.init(frame: .zero)
        setTitle(ponllLineBurst, for: .normal)
        setTitleColor(.black, for: .normal)
        titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
        backgroundColor = bruCiuCyanGlow
        layer.cornerRadius = 22
        layer.shadowColor = bruCiuCyanGlow.cgColor
        layer.shadowOpacity = 0.35
        layer.shadowRadius = 18
        layer.shadowOffset = CGSize(width: 0, height: 8)
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
