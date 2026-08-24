import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllybruCiuUtilityBoxView: UIView {
    init(aVotes: Int, bVotes: Int) {
        super.init(frame: .zero)
        let total = max(aVotes + bVotes, 1)
        let aPercent = CGFloat(aVotes) / CGFloat(total)
        let bar = UIView()
        bar.backgroundColor = PonllyPalette.cyan
        bar.layer.cornerRadius = 6
        bar.translatesAutoresizingMaskIntoConstraints = false
        addSubview(bar)
        let pink = UIView()
        pink.backgroundColor = PonllyPalette.pink
        pink.layer.cornerRadius = 6
        pink.translatesAutoresizingMaskIntoConstraints = false
        bar.addSubview(pink)
        let left = UILabel()
        left.text = "Kai \(Int(aPercent * 100))%"
        left.textColor = .white
        left.font = PonllyFonts.display(size: 13)
        let right = UILabel()
        right.text = "Nova \(100 - Int(aPercent * 100))%"
        right.textColor = .white
        right.font = PonllyFonts.display(size: 13)
        right.textAlignment = .right
        [left, right].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        NSLayoutConstraint.activate([
            bar.leadingAnchor.constraint(equalTo: leadingAnchor),
            bar.trailingAnchor.constraint(equalTo: trailingAnchor),
            bar.topAnchor.constraint(equalTo: topAnchor),
            bar.heightAnchor.constraint(equalToConstant: 12),
            pink.leadingAnchor.constraint(equalTo: bar.leadingAnchor),
            pink.topAnchor.constraint(equalTo: bar.topAnchor),
            pink.bottomAnchor.constraint(equalTo: bar.bottomAnchor),
            pink.widthAnchor.constraint(equalTo: bar.widthAnchor, multiplier: aPercent),
            left.leadingAnchor.constraint(equalTo: leadingAnchor),
            left.topAnchor.constraint(equalTo: bar.bottomAnchor, constant: 8),
            right.trailingAnchor.constraint(equalTo: trailingAnchor),
            right.topAnchor.constraint(equalTo: bar.bottomAnchor, constant: 8)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
