import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyDirectInboxViewController: UIViewController {
    private let stack = UIStackView()
    private let keepsTabBarVisible: Bool
    private let backButton = UIButton(type: .system)

    init(keepsTabBarVisible: Bool = true) {
        self.keepsTabBarVisible = keepsTabBarVisible
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        setup()
        reloadThreads()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = !keepsTabBarVisible
        reloadThreads()
    }

    private func setup() {
        backButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        backButton.tintColor = .white
        backButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        backButton.layer.cornerRadius = 22
        backButton.layer.borderWidth = 1
        backButton.layer.borderColor = PonllyPalette.line.cgColor
        backButton.isHidden = keepsTabBarVisible
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        view.addSubview(backButton)

        let title = UILabel()
        title.text = "Private Messaging"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 22)
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        stack.axis = .vertical
        stack.spacing = 14
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            backButton.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            backButton.widthAnchor.constraint(equalToConstant: 44),
            backButton.heightAnchor.constraint(equalToConstant: 44),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            stack.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 28)
        ])
    }

    private func reloadThreads() {
        stack.arrangedSubviews.forEach {
            stack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let threads = PonllyDataCenter.visibleMessageThreads()
        guard !threads.isEmpty else {
            stack.addArrangedSubview(emptyInbox())
            return
        }
        threads.forEach { stack.addArrangedSubview(threadRow($0)) }
    }

    private func threadRow(_ thread: PonllyMessageThread) -> UIControl {
        let user = PonllyDataCenter.user(thread.userId)
        let control = UIControl()
        control.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.94)
        control.layer.cornerRadius = 18
        control.layer.borderWidth = 1
        control.layer.borderColor = PonllyPalette.line.cgColor
        control.addAction(UIAction { [weak self] _ in
            guard let self else { return }
            FlckinkMatteFinish.shared.requireLogin(from: self) {
                let detail = NckinkSkinnyCapController(user: user, thread: thread)
                detail.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(detail, animated: true)
            }
        }, for: .touchUpInside)

        let avatar = ErErstPaintLabView(user: user, size: 48)
        avatar.isUserInteractionEnabled = false
        avatar.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(avatar)

        let onlineDot = UIView()
        onlineDot.backgroundColor = PonllyPalette.green
        onlineDot.isUserInteractionEnabled = false
        onlineDot.layer.cornerRadius = 6
        onlineDot.layer.borderWidth = 1
        onlineDot.layer.borderColor = PonllyPalette.panel.cgColor
        onlineDot.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(onlineDot)

        let name = UILabel()
        name.text = user.name.lowercased()
        name.textColor = .white
        name.font = PonllyFonts.display(size: 13)
        name.isUserInteractionEnabled = false
        let preview = UILabel()
        preview.text = thread.lastText
        preview.textColor = thread.unreadCount > 0 ? .white : PonllyPalette.muted
        preview.font = PonllyFonts.body(size: 12, weight: .regular)
        preview.lineBreakMode = .byTruncatingTail
        preview.isUserInteractionEnabled = false
        let textStack = UIStackView(arrangedSubviews: [name, preview])
        textStack.axis = .vertical
        textStack.spacing = 6
        textStack.isUserInteractionEnabled = false
        textStack.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(textStack)

        let time = UILabel()
        time.text = thread.lastTime
        time.textColor = PonllyPalette.muted
        time.font = PonllyFonts.mono(size: 10)
        time.isUserInteractionEnabled = false
        time.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(time)

        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 78),
            avatar.leadingAnchor.constraint(equalTo: control.leadingAnchor, constant: 14),
            avatar.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            avatar.widthAnchor.constraint(equalToConstant: 48),
            avatar.heightAnchor.constraint(equalToConstant: 48),
            onlineDot.trailingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: -2),
            onlineDot.bottomAnchor.constraint(equalTo: avatar.bottomAnchor, constant: -2),
            onlineDot.widthAnchor.constraint(equalToConstant: 12),
            onlineDot.heightAnchor.constraint(equalToConstant: 12),
            textStack.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 14),
            textStack.centerYAnchor.constraint(equalTo: control.centerYAnchor),
            textStack.trailingAnchor.constraint(equalTo: time.leadingAnchor, constant: -12),
            time.trailingAnchor.constraint(equalTo: control.trailingAnchor, constant: -16),
            time.centerYAnchor.constraint(equalTo: control.centerYAnchor)
        ])
        return control
    }

    private func emptyInbox() -> UIView {
        let panel = UIStackView()
        panel.axis = .vertical
        panel.alignment = .center
        panel.spacing = 12
        panel.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.86)
        panel.layer.cornerRadius = 20
        panel.layer.borderWidth = 1
        panel.layer.borderColor = PonllyPalette.line.cgColor
        panel.layoutMargins = UIEdgeInsets(top: 44, left: 20, bottom: 44, right: 20)
        panel.isLayoutMarginsRelativeArrangement = true
        let icon = UIImageView(image: UIImage(systemName: "bubble.left.and.bubble.right"))
        icon.tintColor = PonllyPalette.cyan
        icon.widthAnchor.constraint(equalToConstant: 34).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 34).isActive = true
        let title = UILabel()
        title.text = "No Messages"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 18)
        let body = UILabel()
        body.text = "Mutual artist conversations will appear here."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 13, weight: .medium)
        body.textAlignment = .center
        body.numberOfLines = 0
        [icon, title, body].forEach(panel.addArrangedSubview)
        return panel
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
