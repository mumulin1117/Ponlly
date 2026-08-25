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
        let ponllConcreteMuse = UILabel()
        ponllConcreteMuse.text = "?"
        ponllConcreteMuse.textColor = PonllyPalette.cyan
        ponllConcreteMuse.font = PonllyFonts.muralForgepon(neonLab: 42)
        ponllConcreteMuse.textAlignment = .center
        addSubview(ponllConcreteMuse)
        ponllConcreteMuse.woodPanelPonlly(steelGate: self)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
