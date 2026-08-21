import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyReportRoomViewController: UIViewController {
    private let room: PonllyVoiceRoom
    private var selectedReason = "Inappropriate room topic"
    private var reasonButtons: [UIButton] = []
    var onReportSubmitted: (() -> Void)?

    init(room: PonllyVoiceRoom) {
        self.room = room
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
        view.backgroundColor = UIColor.black.withAlphaComponent(0.74)
        let panel = UIView()
        panel.backgroundColor = PonllyPalette.panel
        panel.layer.cornerRadius = 24
        panel.layer.borderWidth = 1.4
        panel.layer.borderColor = PonllyPalette.cyan.cgColor
        panel.layer.shadowColor = PonllyPalette.cyan.cgColor
        panel.layer.shadowOpacity = 0.28
        panel.layer.shadowRadius = 24
        panel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(panel)

        let title = UILabel()
        title.text = "Report Room"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 20)
        title.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(title)
        let subtitle = UILabel()
        subtitle.text = room.title
        subtitle.textColor = PonllyPalette.muted
        subtitle.textAlignment = .center
        subtitle.font = PonllyFonts.body(size: 13, weight: .medium)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(subtitle)

        let reasons = UIStackView()
        reasons.axis = .vertical
        reasons.spacing = 10
        reasons.translatesAutoresizingMaskIntoConstraints = false
        panel.addSubview(reasons)
        ["Inappropriate room topic", "Harassment or bullying", "Spammy room behavior", "Unsafe conduct", "Other concern"].forEach { reason in
            let button = UIButton(type: .system)
            button.setTitle(reason, for: .normal)
            button.titleLabel?.font = PonllyFonts.body(size: 13, weight: .bold)
            button.contentHorizontalAlignment = .left
            button.titleLabel?.numberOfLines = 1
            button.layer.cornerRadius = 13
            button.layer.borderWidth = 1
            button.heightAnchor.constraint(equalToConstant: 44).isActive = true
            button.addTarget(self, action: #selector(reasonTapped(_:)), for: .touchUpInside)
            reasonButtons.append(button)
            reasons.addArrangedSubview(button)
        }
        refreshReasons()

        let submit = PonllyNeonButton(title: "Submit Report")
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        panel.addSubview(submit)
        let cancel = UIButton(type: .system)
        cancel.setTitle("Cancel", for: .normal)
        cancel.setTitleColor(PonllyPalette.muted, for: .normal)
        cancel.titleLabel?.font = PonllyFonts.display(size: 12)
        cancel.translatesAutoresizingMaskIntoConstraints = false
        cancel.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
        panel.addSubview(cancel)

        NSLayoutConstraint.activate([
            panel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            panel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            panel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            title.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -20),
            title.topAnchor.constraint(equalTo: panel.topAnchor, constant: 24),
            subtitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subtitle.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8),
            reasons.leadingAnchor.constraint(equalTo: panel.leadingAnchor, constant: 18),
            reasons.trailingAnchor.constraint(equalTo: panel.trailingAnchor, constant: -18),
            reasons.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 22),
            submit.leadingAnchor.constraint(equalTo: reasons.leadingAnchor),
            submit.trailingAnchor.constraint(equalTo: reasons.trailingAnchor),
            submit.topAnchor.constraint(equalTo: reasons.bottomAnchor, constant: 22),
            submit.heightAnchor.constraint(equalToConstant: 54),
            cancel.centerXAnchor.constraint(equalTo: panel.centerXAnchor),
            cancel.topAnchor.constraint(equalTo: submit.bottomAnchor, constant: 14),
            cancel.bottomAnchor.constraint(equalTo: panel.bottomAnchor, constant: -18)
        ])
    }

    private func refreshReasons() {
        reasonButtons.forEach { button in
            let selected = button.title(for: .normal) == selectedReason
            button.backgroundColor = selected ? PonllyPalette.pink.withAlphaComponent(0.12) : UIColor.black.withAlphaComponent(0.16)
            button.setTitleColor(selected ? .white : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    @objc private func reasonTapped(_ sender: UIButton) {
        selectedReason = sender.title(for: .normal) ?? selectedReason
        refreshReasons()
    }

    @objc private func submitTapped() {
        ponllyShowToast("Submitting report...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            self.dismiss(animated: true) {
                self.onReportSubmitted?()
            }
        }
    }

    @objc private func cancelTapped() {
        dismiss(animated: true)
    }
}
