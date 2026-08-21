import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyBlockConfirmationViewController: UIViewController {
    private let user: PonllyUser
    var onConfirm: (() -> Void)?

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
        view.backgroundColor = UIColor.black.withAlphaComponent(0.78)
        let panel = UIView()
        panel.backgroundColor = PonllyPalette.panel
        panel.layer.cornerRadius = 24
        panel.layer.borderWidth = 1.3
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layer.shadowColor = PonllyPalette.pink.cgColor
        panel.layer.shadowOpacity = 0.22
        panel.layer.shadowRadius = 28
        panel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(panel)

        let iconWrap = UIView()
        iconWrap.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.12)
        iconWrap.layer.cornerRadius = 40
        iconWrap.layer.borderWidth = 1.5
        iconWrap.layer.borderColor = PonllyPalette.pink.cgColor
        iconWrap.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(iconWrap)
        let icon = UIImageView(image: UIImage(systemName: "shield.lefthalf.filled"))
        icon.tintColor = PonllyPalette.pink
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconWrap.addSubview(icon)

        let title = UILabel()
        title.text = "Block This User?"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 20)
        title.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(title)

        let handle = UILabel()
        handle.text = "@\(user.name.lowercased())"
        handle.textColor = PonllyPalette.pink
        handle.textAlignment = .center
        handle.font = PonllyFonts.mono(size: 14)
        handle.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(handle)

        let notes = UIStackView()
        notes.axis = .vertical
        notes.spacing = 12
        notes.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(notes)
        [
            "This user cannot view your profile",
            "This user cannot send you messages",
            "This user cannot interact with your content"
        ].forEach { notes.addArrangedSubview(noteRow($0)) }

        let cancel = UIButton(type: .system)
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(PonllyPalette.muted, for: .normal)
        cancel.titleLabel?.font = PonllyFonts.display(size: 13)
        cancel.layer.cornerRadius = 16
        cancel.layer.borderWidth = 1.2
        cancel.layer.borderColor = PonllyPalette.line.cgColor
        cancel.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        cancel.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(cancel)

        let block = PonllyNeonButton(title: "Block", color: UIColor(red: 255/255, green: 51/255, blue: 85/255, alpha: 1))
        block.addTarget(self, action: #selector(blockTapped), for: .touchUpInside)
        panel.addSubview(block)

        NSLayoutConstraint.activate([
            panel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            panel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            panel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            panel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            iconWrap.centerXAnchor.constraint(equalTo: panel.centerXAnchor),
            iconWrap.topAnchor.constraint(equalTo: panel.topAnchor, constant: 34),
            iconWrap.widthAnchor.constraint(equalToConstant: 80),
            iconWrap.heightAnchor.constraint(equalToConstant: 80),
            icon.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 28),
            icon.heightAnchor.constraint(equalToConstant: 28),
            title.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -20),
            title.topAnchor.constraint(equalTo: iconWrap.bottomAnchor, constant: 28),
            handle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            handle.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            handle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            notes.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 42),
            notes.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -34),
            notes.topAnchor.constraint(equalTo: handle.bottomAnchor, constant: 28),
            cancel.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 24),
            cancel.topAnchor.constraint(equalTo: notes.bottomAnchor, constant: 28),
            cancel.heightAnchor.constraint(equalToConstant: 56),
            block.leadingAnchor.constraint(equalTo: cancel.trailingAnchor, constant: 12),
            block.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -24),
            block.topAnchor.constraint(equalTo: cancel.topAnchor),
            block.widthAnchor.constraint(equalTo: cancel.widthAnchor),
            block.heightAnchor.constraint(equalTo: cancel.heightAnchor),
            block.bottomAnchor.constraint(equalTo: panel.bottomAnchor, constant: -24)
        ])
    }

    private func noteRow(_ text: String) -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .center
        row.spacing = 12
        let icon = UIImageView(image: UIImage(systemName: "xmark.circle.fill"))
        icon.tintColor = PonllyPalette.pink
        icon.widthAnchor.constraint(equalToConstant: 18).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 18).isActive = true
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.body(size: 13)
        label.numberOfLines = 0
        row.addArrangedSubview(icon)
        row.addArrangedSubview(label)
        return row
    }

    @objc private func cancelTapped() {
        dismiss(animated: true)
    }

    @objc private func blockTapped() {
        dismiss(animated: true, completion: onConfirm)
    }
}
