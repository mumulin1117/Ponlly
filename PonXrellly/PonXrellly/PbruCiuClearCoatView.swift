import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PbruCiuClearCoatView: UIView {
    private let gradient = CAGradientLayer()
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let textureLayer = CAShapeLayer()

    init(artwork: PonllyArtwork) {
        super.init(frame: .zero)
        clipsToBounds = true
        layer.cornerRadius = 14
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.withAlphaComponent(0.9).cgColor
        gradient.colors = artwork.colors.map(\.cgColor)
        gradient.startPoint = CGPoint(x: 0.05, y: 0.1)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        layer.insertSublayer(gradient, at: 0)

        imageView.image = PonllyDataCenter.image(for: artwork.imageName)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isHidden = imageView.image == nil
        addSubview(imageView)

        titleLabel.text = artwork.title.uppercased()
        titleLabel.isHidden = imageView.image != nil
        titleLabel.font = PonllyFonts.display(size: 18)
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 2
        titleLabel.textAlignment = .center
        titleLabel.layer.shadowColor = UIColor.black.cgColor
        titleLabel.layer.shadowOpacity = 0.8
        titleLabel.layer.shadowRadius = 8
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
        guard imageView.isHidden else { return }
        textureLayer.removeFromSuperlayer()
        let path = UIBezierPath()
        let count = 18
        for index in 0..<count {
            let y = CGFloat(index) / CGFloat(count) * bounds.height
            path.move(to: CGPoint(x: 0, y: y))
            path.addLine(to: CGPoint(x: bounds.width, y: y + CGFloat((index % 4) - 2) * 3))
        }
        textureLayer.path = path.cgPath
        textureLayer.strokeColor = UIColor.white.withAlphaComponent(0.12).cgColor
        textureLayer.lineWidth = 1
        layer.insertSublayer(textureLayer, above: gradient)
    }
}
