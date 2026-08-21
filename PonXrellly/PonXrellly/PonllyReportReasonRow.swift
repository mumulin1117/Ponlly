import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyReportReasonRow: UIControl {
    let reason: String
    private let title = UILabel()
    private let ring = UIView()
    private let dot = UIView()

    var isSelectedReason = false {
        didSet { refresh() }
    }

    init(reason: String) {
        self.reason = reason
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        backgroundColor = PonllyPalette.panel
        layer.cornerRadius = 14
        layer.borderWidth = 1
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 58).isActive = true
        title.text = reason
        title.font = PonllyFonts.body(size: 15, weight: .semibold)
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        ring.layer.cornerRadius = 13
        ring.layer.borderWidth = 2
        ring.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ring)
        dot.backgroundColor = PonllyPalette.pink
        dot.layer.cornerRadius = 7
        dot.translatesAutoresizingMaskIntoConstraints = false
        ring.addSubview(dot)
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            title.trailingAnchor.constraint(lessThanOrEqualTo: ring.leadingAnchor, constant: -12),
            ring.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            ring.centerYAnchor.constraint(equalTo: centerYAnchor),
            ring.widthAnchor.constraint(equalToConstant: 26),
            ring.heightAnchor.constraint(equalToConstant: 26),
            dot.centerXAnchor.constraint(equalTo: ring.centerXAnchor),
            dot.centerYAnchor.constraint(equalTo: ring.centerYAnchor),
            dot.widthAnchor.constraint(equalToConstant: 14),
            dot.heightAnchor.constraint(equalToConstant: 14)
        ])
        refresh()
    }

    private func refresh() {
        layer.borderColor = (isSelectedReason ? PonllyPalette.pink : PonllyPalette.line).cgColor
        title.textColor = isSelectedReason ? .white : PonllyPalette.muted
        ring.layer.borderColor = (isSelectedReason ? PonllyPalette.pink : PonllyPalette.muted).cgColor
        dot.isHidden = !isSelectedReason
    }
}
