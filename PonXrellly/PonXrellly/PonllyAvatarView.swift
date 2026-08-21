import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyAvatarView: UIView {
    init(user: PonllyUser, size: CGFloat = 40) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: size).isActive = true
        heightAnchor.constraint(equalToConstant: size).isActive = true
        layer.cornerRadius = size / 2
        clipsToBounds = true
        layer.borderWidth = 2
        layer.borderColor = user.colors[1].cgColor
        let gradientView = PonllyGradientView(colors: user.colors)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(gradientView)
        let imageView = UIImageView(image: PonllyDataCenter.avatarImage(for: user))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isHidden = imageView.image == nil
        addSubview(imageView)
        let label = UILabel()
        label.text = String(user.name.prefix(1)).uppercased()
        label.isHidden = imageView.image != nil
        label.font = PonllyFonts.display(size: size * 0.38)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint.activate([
            gradientView.leadingAnchor.constraint(equalTo: leadingAnchor),
            gradientView.trailingAnchor.constraint(equalTo: trailingAnchor),
            gradientView.topAnchor.constraint(equalTo: topAnchor),
            gradientView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.topAnchor.constraint(equalTo: topAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
