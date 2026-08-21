import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyCoinPackageCard: UIControl {
    let package: PonllyCoinPackage
    private let priceLabel = UILabel()

    init(package: PonllyCoinPackage) {
        self.package = package
        super.init(frame: .zero)
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 20
        layer.borderWidth = 1.5
        layer.borderColor = PonllyPalette.line.cgColor
        clipsToBounds = false
        layer.masksToBounds = false
        translatesAutoresizingMaskIntoConstraints = false

        let icon = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        icon.contentMode = .scaleAspectFit
        icon.isUserInteractionEnabled = false
        icon.translatesAutoresizingMaskIntoConstraints = false
        addSubview(icon)

        let amount = UILabel()
        amount.text = package.coins.formatted()
        amount.textColor = .white
        amount.textAlignment = .center
        amount.font = PonllyFonts.mono(size: 20)
        amount.adjustsFontSizeToFitWidth = true
        amount.minimumScaleFactor = 0.74
        amount.isUserInteractionEnabled = false
        amount.translatesAutoresizingMaskIntoConstraints = false
        addSubview(amount)

        let caption = UILabel()
        caption.text = "Coins"
        caption.textColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 1)
        caption.textAlignment = .center
        caption.font = PonllyFonts.display(size: 9)
        caption.isUserInteractionEnabled = false
        caption.translatesAutoresizingMaskIntoConstraints = false
        addSubview(caption)

        priceLabel.text = package.fallbackPrice
        priceLabel.textColor = .white
        priceLabel.textAlignment = .center
        priceLabel.font = PonllyFonts.display(size: 10)
        priceLabel.backgroundColor = UIColor.black.withAlphaComponent(0.34)
        priceLabel.layer.cornerRadius = 11
        priceLabel.layer.borderWidth = 1
        priceLabel.layer.borderColor = PonllyPalette.line.cgColor
        priceLabel.clipsToBounds = true
        priceLabel.isUserInteractionEnabled = false
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(priceLabel)

        if let bonus = package.bonus {
            let badge = UILabel()
            badge.text = bonus
            badge.textColor = .black
            badge.textAlignment = .center
            badge.font = PonllyFonts.display(size: 8)
            badge.backgroundColor = PonllyPalette.pink
            badge.layer.cornerRadius = 14
            badge.layer.zPosition = 999
            badge.clipsToBounds = true
            badge.isUserInteractionEnabled = false
            badge.translatesAutoresizingMaskIntoConstraints = false
            addSubview(badge)
            bringSubviewToFront(badge)
            NSLayoutConstraint.activate([
                badge.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
                badge.topAnchor.constraint(equalTo: topAnchor, constant: -8),
                badge.widthAnchor.constraint(equalToConstant: 72),
                badge.heightAnchor.constraint(equalToConstant: 30)
            ])
        }

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 160),
            icon.centerXAnchor.constraint(equalTo: centerXAnchor),
            icon.topAnchor.constraint(equalTo: topAnchor, constant: 26),
            icon.widthAnchor.constraint(equalToConstant: 44),
            icon.heightAnchor.constraint(equalToConstant: 44),
            amount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            amount.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            amount.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 16),
            caption.centerXAnchor.constraint(equalTo: centerXAnchor),
            caption.topAnchor.constraint(equalTo: amount.bottomAnchor, constant: 5),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -18),
            priceLabel.heightAnchor.constraint(equalToConstant: 34)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func updatePrice(_ text: String) {
        priceLabel.text = text
    }

    func setSelected(_ selected: Bool) {
        layer.borderColor = (selected ? UIColor(red: 1, green: 190/255, blue: 0, alpha: 1) : PonllyPalette.line).cgColor
        layer.borderWidth = selected ? 2.4 : 1.5
        priceLabel.backgroundColor = selected ? UIColor(red: 1, green: 190/255, blue: 0, alpha: 1) : UIColor.black.withAlphaComponent(0.34)
        priceLabel.textColor = selected ? .black : .white
    }
}
