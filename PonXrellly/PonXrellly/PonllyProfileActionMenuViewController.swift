import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyProfileActionMenuViewController: UIViewController {
    private let user: PonllyUser
    var onReport: (() -> Void)?
    var onBlock: (() -> Void)?

    init(user: PonllyUser) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        view.backgroundColor = UIColor(red: 6/255, green: 6/255, blue: 8/255, alpha: 0.9)
        let dismissTap = UITapGestureRecognizer(target: self, action: #selector(cancelTapped))
        dismissTap.cancelsTouchesInView = false
        view.addGestureRecognizer(dismissTap)

        let sheet = UIView()
        sheet.backgroundColor = PonllyPalette.panel
        sheet.layer.cornerRadius = 22
        sheet.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        sheet.layer.borderWidth = 1
        sheet.layer.borderColor = PonllyPalette.line.cgColor
        sheet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sheet)

        let handle = UIView()
        handle.backgroundColor = PonllyPalette.line
        handle.layer.cornerRadius = 2
        handle.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(handle)

        let title = UILabel()
        title.text = "MANAGE ACCOUNT"
        title.textColor = PonllyPalette.muted
        title.font = PonllyFonts.display(size: 12)
        title.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(title)

        let report = menuRow(title: "Report User", color: .white, symbol: "flag", action: #selector(reportTapped))
        let block = menuRow(title: "Block User", color: UIColor(red: 255/255, green: 51/255, blue: 85/255, alpha: 1), symbol: "shield", action: #selector(blockTapped))
        let cancel = UIButton(type: .system)
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(PonllyPalette.muted, for: .normal)
        cancel.titleLabel?.font = PonllyFonts.display(size: 13)
        cancel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        cancel.layer.cornerRadius = 14
        cancel.layer.borderWidth = 1
        cancel.layer.borderColor = PonllyPalette.line.cgColor
        cancel.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        cancel.translatesAutoresizingMaskIntoConstraints = false
        [report, block, cancel].forEach(sheet.addSubview)

        NSLayoutConstraint.activate([
            sheet.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sheet.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sheet.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            handle.topAnchor.constraint(equalTo: sheet.topAnchor, constant: 16),
            handle.centerXAnchor.constraint(equalTo: sheet.centerXAnchor),
            handle.widthAnchor.constraint(equalToConstant: 40),
            handle.heightAnchor.constraint(equalToConstant: 4),
            title.leadingAnchor.constraint(equalTo: sheet.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: sheet.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            title.topAnchor.constraint(equalTo: handle.bottomAnchor, constant: 20),
            report.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            report.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            report.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 28),
            report.heightAnchor.constraint(equalToConstant: 58),
            block.leadingAnchor.constraint(equalTo: report.leadingAnchor),
            block.trailingAnchor.constraint(equalTo: report.trailingAnchor),
            block.topAnchor.constraint(equalTo: report.bottomAnchor, constant: 14),
            block.heightAnchor.constraint(equalToConstant: 58),
            cancel.leadingAnchor.constraint(equalTo: report.leadingAnchor),
            cancel.trailingAnchor.constraint(equalTo: report.trailingAnchor),
            cancel.topAnchor.constraint(equalTo: block.bottomAnchor, constant: 24),
            cancel.heightAnchor.constraint(equalToConstant: 54),
            cancel.bottomAnchor.constraint(equalTo: sheet.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])

        sheet.transform = CGAffineTransform(translationX: 0, y: 280)
        view.alpha = 0
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.view.alpha = 1
            sheet.transform = .identity
        }
    }

    private func menuRow(title: String, color: UIColor, symbol: String, action: Selector) -> UIControl {
        let control = UIControl()
        control.backgroundColor = UIColor(red: 20/255, green: 20/255, blue: 26/255, alpha: 1)
        control.layer.cornerRadius = 14
        control.layer.borderWidth = 1
        control.layer.borderColor = PonllyPalette.line.cgColor
        control.addTarget(self, action: action, for: .touchUpInside)
        control.translatesAutoresizingMaskIntoConstraints = false

        let iconBox = UIView()
        iconBox.layer.cornerRadius = 10
        iconBox.layer.borderWidth = 1.2
        iconBox.layer.borderColor = color.cgColor
        iconBox.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(iconBox)
        let icon = UIImageView(image: UIImage(systemName: symbol))
        icon.tintColor = color
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconBox.addSubview(icon)

        let label = UILabel()
        label.text = title
        label.textColor = color
        label.font = PonllyFonts.body(size: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(label)

        let chevron = UIImageView(image: UIImage(systemName: "chevron.right"))
        chevron.tintColor = PonllyPalette.muted
        chevron.contentMode = .scaleAspectFit
        chevron.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(chevron)

        NSLayoutConstraint.activate([
            iconBox.leadingAnchor.constraint(equalTo: control.leadingAnchor, constant: 14),
            iconBox.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            iconBox.widthAnchor.constraint(equalToConstant: 32),
            iconBox.heightAnchor.constraint(equalToConstant: 32),
            icon.centerXAnchor.constraint(equalTo: iconBox.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: iconBox.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 16),
            icon.heightAnchor.constraint(equalToConstant: 16),
            label.leadingAnchor.constraint(equalTo: iconBox.trailingAnchor, constant: 14),
            label.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            label.trailingAnchor.constraint(lessThanOrEqualTo: chevron.leadingAnchor, constant: -12),
            chevron.trailingAnchor.constraint(equalTo: control.trailingAnchor, constant: -18),
            chevron.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            chevron.widthAnchor.constraint(equalToConstant: 16),
            chevron.heightAnchor.constraint(equalToConstant: 16)
        ])
        return control
    }

    private func dismissThen(_ action: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.18, animations: {
            self.view.alpha = 0
        }, completion: { _ in
            self.dismiss(animated: false, completion: action)
        })
    }

    @objc private func reportTapped() {
        dismissThen(onReport)
    }

    @objc private func blockTapped() {
        dismissThen(onBlock)
    }

    @objc private func cancelTapped() {
        dismissThen()
    }
}
