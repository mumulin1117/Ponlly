import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyVoiceThemeConfirmViewController: UIViewController {
    private let theme: PonllyVoiceTheme
    private let onConfirm: (PonllyVoiceTheme) -> Void

    init(theme: PonllyVoiceTheme, onConfirm: @escaping (PonllyVoiceTheme) -> Void) {
        self.theme = theme
        self.onConfirm = onConfirm
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.78)
        let panel = UIView()
        panel.backgroundColor = PonllyPalette.panel
        panel.layer.cornerRadius = 22
        panel.layer.borderWidth = 1.5
        panel.layer.borderColor = PonllyPalette.cyan.cgColor
        panel.layer.shadowColor = PonllyPalette.cyan.cgColor
        panel.layer.shadowOpacity = 0.3
        panel.layer.shadowRadius = 20
        panel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(panel)
        let image = UIImageView(image: UIImage(named: theme.imageName))
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 14
        image.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(image)
        let title = UILabel()
        title.text = theme.name
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(title)
        let subtitle = UILabel()
        subtitle.text = theme.subtitle
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 12, weight: .regular)
        subtitle.numberOfLines = 2
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(subtitle)
        let infoPanel = UIView()
        infoPanel.backgroundColor = UIColor.black.withAlphaComponent(0.18)
        infoPanel.layer.cornerRadius = 14
        infoPanel.layer.borderWidth = 1
        infoPanel.layer.borderColor = PonllyPalette.line.cgColor
        infoPanel.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(infoPanel)

        let info = UILabel()
        info.text = "Theme Cost                 \(theme.cost.formatted()) Coins\nYour Balance              \(PonllyDataCenter.coinBalance.formatted()) Coins\nRoom Capacity          \(theme.capacity)"
        info.textColor = .white
        info.numberOfLines = 0
        info.font = PonllyFonts.mono(size: 12)
        info.translatesAutoresizingMaskIntoConstraints = false
        infoPanel.addSubview(info)

        let confirmTitle = PonllyDataCenter.coinBalance >= theme.cost ? "Confirm Purchase" : "Add Coins"
        let confirm = PonllyNeonButton(title: confirmTitle)
        confirm.titleLabel?.font = PonllyFonts.display(size: 12)
        confirm.addTarget(self, action: #selector(confirmTapped), for: .touchUpInside)
        panel.addSubview(confirm)
        let cancel = UIButton(type: .system)
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(PonllyPalette.muted, for: .normal)
        cancel.titleLabel?.font = PonllyFonts.display(size: 11)
        cancel.translatesAutoresizingMaskIntoConstraints = false
        cancel.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        panel.addSubview(cancel)

        NSLayoutConstraint.activate([
            panel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            panel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36),
            panel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 18),
            image.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -18),
            image.topAnchor.constraint(equalTo: panel.topAnchor, constant: 18),
            image.heightAnchor.constraint(equalToConstant: 118),
            title.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: image.trailingAnchor),
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16),
            subtitle.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            subtitle.trailingAnchor.constraint(equalTo: image.trailingAnchor),
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 6),
            infoPanel.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            infoPanel.trailingAnchor.constraint(equalTo: image.trailingAnchor),
            infoPanel.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 18),
            info.leadingAnchor.constraint(equalTo: infoPanel.leadingAnchor, constant: 14),
            info.trailingAnchor.constraint(equalTo: infoPanel.trailingAnchor, constant: -14),
            info.topAnchor.constraint(equalTo: infoPanel.topAnchor, constant: 14),
            info.bottomAnchor.constraint(equalTo: infoPanel.bottomAnchor, constant: -14),
            confirm.leadingAnchor.constraint(equalTo: image.leadingAnchor),
            confirm.trailingAnchor.constraint(equalTo: image.trailingAnchor),
            confirm.topAnchor.constraint(equalTo: infoPanel.bottomAnchor, constant: 18),
            confirm.heightAnchor.constraint(equalToConstant: 54),
            cancel.centerXAnchor.constraint(equalTo: panel.centerXAnchor),
            cancel.topAnchor.constraint(equalTo: confirm.bottomAnchor, constant: 12),
            cancel.bottomAnchor.constraint(equalTo: panel.bottomAnchor, constant: -16)
        ])
    }

    @objc private func confirmTapped() {
        dismiss(animated: true) {
            self.onConfirm(self.theme)
        }
    }

    @objc private func cancelTapped() {
        dismiss(animated: true)
    }
}
