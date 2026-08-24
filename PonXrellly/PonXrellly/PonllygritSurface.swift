import UIKit

enum PonllyFonts {
    static func themeFont(size: CGFloat = 14) -> UIFont {
        UIFont(name: "Unbounded-ExtraBold", size: size) ?? UIFont.systemFont(ofSize: size, weight: .black)
    }

    static func display(size: CGFloat, weight: UIFont.Weight = .black) -> UIFont {
        UIFont(name: "Unbounded-ExtraBold", size: size) ?? UIFont.systemFont(ofSize: size, weight: weight)
    }

    static func body(size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont {
        UIFont(name: "Geist", size: size) ?? UIFont.systemFont(ofSize: size, weight: weight)
    }

    static func mono(size: CGFloat, weight: UIFont.Weight = .bold) -> UIFont {
        UIFont(name: "GeistMono-Bold", size: size) ?? UIFont.monospacedSystemFont(ofSize: size, weight: weight)
    }
}

extension UIView {
    func pinToEdges(of view: UIView, insets: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insets.left),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -insets.right),
            topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom)
        ])
    }
}

extension UIViewController {
    enum PonllyNoticeStyle {
        case loading
        case success
        case failure
        case info

        var accent: UIColor {
            switch self {
            case .loading, .info: return PonllyPalette.cyan
            case .success: return PonllyPalette.green
            case .failure: return PonllyPalette.pink
            }
        }

        var iconName: String {
            switch self {
            case .loading: return "sparkles"
            case .success: return "checkmark"
            case .failure: return "xmark"
            case .info: return "bell"
            }
        }
    }

    func ponllyShowToast(_ message: String) {
        let lowercased = message.lowercased()
        let style: PonllyNoticeStyle
        if lowercased.contains("ing") || lowercased.contains("connecting") || lowercased.contains("preparing") || lowercased.contains("sending") {
            style = .loading
        } else if lowercased.contains("failed") || lowercased.contains("wrong") || lowercased.contains("不存在") || lowercased.contains("错误") || lowercased.contains("please") {
            style = .failure
        } else if lowercased.contains("ready") || lowercased.contains("counted") || lowercased.contains("added") || lowercased.contains("submitted") || lowercased.contains("published") || lowercased.contains("updated") {
            style = .success
        } else {
            style = .info
        }
        ponllyShowNotice(message, style: style, autoDismissAfter: style == .loading ? 1.05 : 1.65)
    }

    func ponllyShowNotice(_ message: String, style: PonllyNoticeStyle = .info, autoDismissAfter delay: TimeInterval = 1.65) {
        view.viewWithTag(909_301)?.removeFromSuperview()
        let overlay = UIView()
        overlay.tag = 909_301
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        overlay.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(overlay)

        let panel = UIView()
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.97)
        panel.layer.cornerRadius = 22
        panel.layer.borderWidth = 1.5
        panel.layer.borderColor = style.accent.cgColor
        panel.layer.shadowColor = style.accent.cgColor
        panel.layer.shadowOpacity = 0.36
        panel.layer.shadowRadius = 24
        panel.layer.shadowOffset = CGSize(width: 0, height: 12)
        panel.translatesAutoresizingMaskIntoConstraints = false
        overlay.addSubview(panel)

        let iconWrap = UIView()
        iconWrap.backgroundColor = style.accent.withAlphaComponent(0.13)
        iconWrap.layer.cornerRadius = 26
        iconWrap.layer.borderWidth = 1.4
        iconWrap.layer.borderColor = style.accent.cgColor
        iconWrap.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(iconWrap)

        if style == .loading {
            let spinner = UIActivityIndicatorView(style: .medium)
            spinner.color = style.accent
            spinner.startAnimating()
            spinner.translatesAutoresizingMaskIntoConstraints = false
            iconWrap.addSubview(spinner)
            NSLayoutConstraint.activate([
                spinner.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
                spinner.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor)
            ])
        } else {
            let icon = UIImageView(image: UIImage(systemName: style.iconName))
            icon.tintColor = style.accent
            icon.contentMode = .scaleAspectFit
            icon.translatesAutoresizingMaskIntoConstraints = false
            iconWrap.addSubview(icon)
            NSLayoutConstraint.activate([
                icon.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
                icon.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor),
                icon.widthAnchor.constraint(equalToConstant: 22),
                icon.heightAnchor.constraint(equalToConstant: 22)
            ])
        }

        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.font = PonllyFonts.display(size: 13)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(label)

        NSLayoutConstraint.activate([
            overlay.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            overlay.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            overlay.topAnchor.constraint(equalTo: view.topAnchor),
            overlay.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            panel.centerXAnchor.constraint(equalTo: overlay.centerXAnchor),
            panel.centerYAnchor.constraint(equalTo: overlay.centerYAnchor),
            panel.leadingAnchor.constraint(greaterThanOrEqualTo: overlay.safeAreaLayoutGuide.leadingAnchor, constant: 34),
            panel.trailingAnchor.constraint(lessThanOrEqualTo: overlay.safeAreaLayoutGuide.trailingAnchor, constant: -34),
            panel.widthAnchor.constraint(lessThanOrEqualToConstant: 300),
            iconWrap.centerXAnchor.constraint(equalTo: panel.centerXAnchor),
            iconWrap.topAnchor.constraint(equalTo: panel.topAnchor, constant: 22),
            iconWrap.widthAnchor.constraint(equalToConstant: 52),
            iconWrap.heightAnchor.constraint(equalToConstant: 52),
            label.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 22),
            label.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -22),
            label.topAnchor.constraint(equalTo: iconWrap.bottomAnchor, constant: 16),
            label.bottomAnchor.constraint(equalTo: panel.bottomAnchor, constant: -22)
        ])

        overlay.alpha = 0
        panel.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut], animations: {
            overlay.alpha = 1
            panel.transform = .identity
        }) { _ in
            UIView.animate(withDuration: 0.22, delay: delay, options: [.curveEaseIn], animations: {
                overlay.alpha = 0
                panel.transform = CGAffineTransform(scaleX: 0.94, y: 0.94)
            }, completion: { _ in overlay.removeFromSuperview() })
        }
    }

    func ponllyShowThemeAlert(title: String, message: String, actionTitle: String = "OK", style: PonllyNoticeStyle = .info, showsCancel: Bool = false, action: (() -> Void)? = nil) {
        view.viewWithTag(909_302)?.removeFromSuperview()
        let overlay = UIView()
        overlay.tag = 909_302
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.62)
        overlay.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(overlay)

        let panel = UIView()
        panel.backgroundColor = PonllyPalette.panel
        panel.layer.cornerRadius = 24
        panel.layer.borderWidth = 1.5
        panel.layer.borderColor = style.accent.cgColor
        panel.layer.shadowColor = style.accent.cgColor
        panel.layer.shadowOpacity = 0.34
        panel.layer.shadowRadius = 26
        panel.translatesAutoresizingMaskIntoConstraints = false
        overlay.addSubview(panel)

        let icon = UIImageView(image: UIImage(systemName: style.iconName))
        icon.tintColor = style.accent
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(icon)
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.font = PonllyFonts.display(size: 18)
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(titleLabel)
        let messageLabel = UILabel()
        messageLabel.text = message
        messageLabel.textColor = PonllyPalette.muted
        messageLabel.textAlignment = .center
        messageLabel.font = PonllyFonts.body(size: 13)
        messageLabel.numberOfLines = 0
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(messageLabel)
        let button = PonllyNeonButton(title: actionTitle, color: style.accent)
        button.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(button)
        button.addAction(UIAction { [weak overlay] _ in
            UIView.animate(withDuration: 0.18, animations: {
                overlay?.alpha = 0
            }, completion: { _ in
                overlay?.removeFromSuperview()
                action?()
            })
        }, for: .touchUpInside)
        let cancelButton = UIButton(type: .system)
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(PonllyPalette.muted, for: .normal)
        cancelButton.titleLabel?.font = PonllyFonts.display(size: 13)
        cancelButton.backgroundColor = UIColor.black.withAlphaComponent(0.18)
        cancelButton.layer.cornerRadius = 18
        cancelButton.layer.borderWidth = 1
        cancelButton.layer.borderColor = PonllyPalette.line.cgColor
        cancelButton.isHidden = !showsCancel
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(cancelButton)
        cancelButton.addAction(UIAction { [weak overlay] _ in
            UIView.animate(withDuration: 0.18, animations: {
                overlay?.alpha = 0
            }, completion: { _ in
                overlay?.removeFromSuperview()
            })
        }, for: .touchUpInside)

        NSLayoutConstraint.activate([
            overlay.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            overlay.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            overlay.topAnchor.constraint(equalTo: view.topAnchor),
            overlay.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            panel.centerXAnchor.constraint(equalTo: overlay.centerXAnchor),
            panel.centerYAnchor.constraint(equalTo: overlay.centerYAnchor),
            panel.leadingAnchor.constraint(equalTo: overlay.safeAreaLayoutGuide.leadingAnchor, constant: 34),
            panel.trailingAnchor.constraint(equalTo: overlay.safeAreaLayoutGuide.trailingAnchor, constant: -34),
            icon.centerXAnchor.constraint(equalTo: panel.centerXAnchor),
            icon.topAnchor.constraint(equalTo: panel.topAnchor, constant: 24),
            icon.widthAnchor.constraint(equalToConstant: 34),
            icon.heightAnchor.constraint(equalToConstant: 34),
            titleLabel.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 22),
            titleLabel.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -22),
            titleLabel.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 18),
            messageLabel.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 22),
            messageLabel.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -22),
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            button.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 22),
            button.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -22),
            button.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 22),
            button.heightAnchor.constraint(equalToConstant: 54),
            cancelButton.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 22),
            cancelButton.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -22),
            cancelButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 12),
            cancelButton.heightAnchor.constraint(equalToConstant: showsCancel ? 46 : 0),
            cancelButton.bottomAnchor.constraint(equalTo: panel.bottomAnchor, constant: -22)
        ])

        overlay.alpha = 0
        panel.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
            overlay.alpha = 1
            panel.transform = .identity
        }
    }
}
