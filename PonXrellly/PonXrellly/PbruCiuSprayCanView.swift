import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PbruCiuSprayCanView: UIView {
    init(bruCiuPaintSignal: UIImage) {
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 18
        layer.borderWidth = 2
        layer.borderColor = PonllyPalette.pink.cgColor
        clipsToBounds = true
        let flckinkInkQuest = UIImageView(image: bruCiuPaintSignal)
        flckinkInkQuest.contentMode = .scaleAspectFill
        flckinkInkQuest.clipsToBounds = true
        flckinkInkQuest.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkInkQuest)
        NSLayoutConstraint.activate([
            flckinkInkQuest.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkInkQuest.trailingAnchor.constraint(equalTo: trailingAnchor),
            flckinkInkQuest.topAnchor.constraint(equalTo: topAnchor),
            flckinkInkQuest.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
