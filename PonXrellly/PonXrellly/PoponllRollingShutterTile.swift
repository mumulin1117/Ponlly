import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoponllRollingShutterTile: UIControl {
    let theme: OnllPaintPlanTheme

    init(theme: OnllPaintPlanTheme) {
        self.theme = theme
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 14
        layer.borderWidth = 1
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        let image = UIImageView(image: UIImage(named: theme.imageName))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        addSubview(image)
        let title = UILabel()
        title.text = theme.name
        title.textColor = .white
        title.font = PonllyFonts.themeFont(size: 10)
        title.numberOfLines = 1
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        let meta = UILabel()
        meta.text = "\(theme.cost.formatted()) Coins"
        meta.textColor = theme.accent
        meta.font = PonllyFonts.mono(size: 11)
        meta.translatesAutoresizingMaskIntoConstraints = false
        addSubview(meta)
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 128),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            image.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            image.heightAnchor.constraint(equalToConstant: 74),
            title.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: image.trailingAnchor),
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 8),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 4)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
