import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyVoiceRoomSuccessViewController: UIViewController {
    private let draft: BruCiuOutlinePlan
    private let theme: OnllPaintPlanTheme

    init(draft: BruCiuOutlinePlan, theme: OnllPaintPlanTheme) {
        self.draft = draft
        self.theme = theme
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 24
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let check = UILabel()
        check.text = "✓"
        check.textColor = PonllyPalette.green
        check.textAlignment = .center
        check.font = PonllyFonts.display(size: 48)
        check.layer.cornerRadius = 46
        check.layer.borderWidth = 2
        check.layer.borderColor = PonllyPalette.green.cgColor
        check.clipsToBounds = true
        check.translatesAutoresizingMaskIntoConstraints = false
        let checkWrap = UIView()
        checkWrap.addSubview(check)
        let title = UILabel()
        title.text = "Room Created!"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 28)
        let subtitle = UILabel()
        subtitle.text = "Your voice room is ready. Invite your crew to jump in and start tags talk."
        subtitle.textColor = PonllyPalette.muted
        subtitle.textAlignment = .center
        subtitle.numberOfLines = 0
        subtitle.font = PonllyFonts.body(size: 14, weight: .regular)
        let summary = UIView()
        summary.backgroundColor = PonllyPalette.panel
        summary.layer.cornerRadius = 16
        summary.layer.borderWidth = 1
        summary.layer.borderColor = PonllyPalette.line.cgColor
        summary.translatesAutoresizingMaskIntoConstraints = false
        let summaryLabel = UILabel()
        summaryLabel.text = "Room Name                         \(draft.name)\nRoom Category                   \(draft.category)\nTheme                                   \(theme.name)"
        summaryLabel.textColor = .white
        summaryLabel.numberOfLines = 0
        summaryLabel.font = PonllyFonts.mono(size: 12)
        summary.addSubview(summaryLabel)
        summaryLabel.pinToEdges(of: summary, insets: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        let enter = PonllyNeonButton(title: "Enter Room")
        enter.addTarget(self, action: #selector(enterTapped), for: .touchUpInside)
        let share = UIButton(type: .system)
        share.setTitle("Share Room", for: .normal)
        share.setTitleColor(.white, for: .normal)
        share.titleLabel?.font = PonllyFonts.display(size: 12)
        share.layer.cornerRadius = 14
        share.layer.borderWidth = 1
        share.layer.borderColor = PonllyPalette.line.cgColor
        share.translatesAutoresizingMaskIntoConstraints = false
        share.addTarget(self, action: #selector(shareTapped), for: .touchUpInside)
        [checkWrap, title, subtitle, summary, enter, share].forEach(stack.addArrangedSubview)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            checkWrap.heightAnchor.constraint(equalToConstant: 96),
            check.centerXAnchor.constraint(equalTo: checkWrap.centerXAnchor),
            check.centerYAnchor.constraint(equalTo: checkWrap.centerYAnchor),
            check.widthAnchor.constraint(equalToConstant: 92),
            check.heightAnchor.constraint(equalToConstant: 92),
            summary.heightAnchor.constraint(greaterThanOrEqualToConstant: 112),
            enter.heightAnchor.constraint(equalToConstant: 58),
            share.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    @objc private func enterTapped() {
        let room = PonllyVoiceRoom(
            id: "created_\(UUID().uuidString)",
            title: draft.name,
            category: .following,
            topic: draft.details.isEmpty ? "Fresh room for wall critique and street art process talk" : draft.details,
            hostId: PonllyDataCenter.currentUserId,
            speakerSeats: [.init(userId: PonllyDataCenter.currentUserId, isMuted: false)],
            listenerIds: ["u02", "u05", "u17"],
            backgroundImageName: theme.imageName,
            accent: theme.accent,
            messageLog: [
                .init(userId: PonllyDataCenter.currentUserId, time: "now", text: "Room is open. Bring a wall note or a process question."),
                .init(userId: "u02", time: "now", text: "I am ready to compare outlines and texture choices.")
            ]
        )
        PonllyDataCenter.updateVoiceRoom(room)
        ponllyShowToast("Entering room...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            let immersive = PonllyVoiceRoomImmersiveViewController(room: room)
            immersive.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(immersive, animated: true)
        }
    }

    @objc private func shareTapped() {
        ponllyShowToast("Room invite ready")
    }
}
