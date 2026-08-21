import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyConversationViewController: UIViewController {
    private let user: PonllyUser
    private var thread: PonllyMessageThread
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let inputField = UITextField()

    init(user: PonllyUser, thread: PonllyMessageThread) {
        self.user = user
        self.thread = thread
        super.init(nibName: nil, bundle: nil)
        title = user.name.lowercased()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setup()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 10/255, green: 12/255, blue: 18/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        let header = chatHeader()
        view.addSubview(header)

        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        thread.messages.forEach { stack.addArrangedSubview(messageView($0)) }

        let bar = UIView()
        bar.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.98)
        bar.layer.borderWidth = 1
        bar.layer.borderColor = PonllyPalette.line.cgColor
        bar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bar)
        inputField.attributedPlaceholder = NSAttributedString(string: "Type a message...", attributes: [.foregroundColor: PonllyPalette.muted])
        inputField.textColor = .white
        inputField.font = PonllyFonts.body(size: 14)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        bar.addSubview(inputField)
        let send = UIButton(type: .system)
        send.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        send.tintColor = .white
        send.backgroundColor = PonllyPalette.pink
        send.layer.cornerRadius = 28
        send.addTarget(self, action: #selector(sendTapped), for: .touchUpInside)
        send.translatesAutoresizingMaskIntoConstraints = false
        bar.addSubview(send)
        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 78),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bar.topAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 24),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -24),
            bar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bar.heightAnchor.constraint(equalToConstant: 100),
            inputField.leadingAnchor.constraint(equalTo: bar.leadingAnchor, constant: 24),
            inputField.centerYAnchor.constraint(equalTo: bar.centerYAnchor, constant: -6),
            inputField.trailingAnchor.constraint(equalTo: send.leadingAnchor, constant: -16),
            send.trailingAnchor.constraint(equalTo: bar.trailingAnchor, constant: -24),
            send.centerYAnchor.constraint(equalTo: inputField.centerYAnchor),
            send.widthAnchor.constraint(equalToConstant: 56),
            send.heightAnchor.constraint(equalToConstant: 56)
        ])
    }

    private func chatHeader() -> UIView {
        let header = UIView()
        header.backgroundColor = PonllyPalette.background.withAlphaComponent(0.96)
        header.layer.borderWidth = 1
        header.layer.borderColor = PonllyPalette.line.cgColor
        header.translatesAutoresizingMaskIntoConstraints = false

        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel
        back.layer.cornerRadius = 22
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        header.addSubview(back)

        let avatar = PonllyAvatarView(user: user, size: 44)
        header.addSubview(avatar)

        let name = UILabel()
        name.text = user.name.lowercased()
        name.textColor = .white
        name.font = PonllyFonts.display(size: 15)
        let status = UILabel()
        status.text = "Chat Conversation"
        status.textColor = PonllyPalette.cyan
        status.font = PonllyFonts.mono(size: 10)
        let textStack = UIStackView(arrangedSubviews: [name, status])
        textStack.axis = .vertical
        textStack.spacing = 5
        textStack.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(textStack)

        let video = UIButton(type: .system)
        video.setImage(UIImage(systemName: "phone.fill"), for: .normal)
        video.tintColor = .black
        video.backgroundColor = PonllyPalette.cyan
        video.layer.cornerRadius = 22
        video.layer.shadowColor = PonllyPalette.cyan.cgColor
        video.layer.shadowOpacity = 0.35
        video.layer.shadowRadius = 14
        video.translatesAutoresizingMaskIntoConstraints = false
        video.addTarget(self, action: #selector(videoCallTapped), for: .touchUpInside)
        header.addSubview(video)

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            back.centerYAnchor.constraint(equalTo: header.centerYAnchor),
            back.widthAnchor.constraint(equalToConstant: 44),
            back.heightAnchor.constraint(equalToConstant: 44),
            avatar.leadingAnchor.constraint(equalTo: back.trailingAnchor, constant: 12),
            avatar.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            textStack.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 12),
            textStack.centerYAnchor.constraint(equalTo: avatar.centerYAnchor),
            textStack.trailingAnchor.constraint(lessThanOrEqualTo: video.leadingAnchor, constant: -12),
            video.trailingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            video.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            video.widthAnchor.constraint(equalToConstant: 44),
            video.heightAnchor.constraint(equalToConstant: 44)
        ])
        return header
    }

    private func messageView(_ message: PonllyMessageBubble) -> UIView {
        let mine = message.senderId == PonllyDataCenter.currentUserId
        let wrap = UIView()
        let bubble = UIStackView()
        bubble.axis = .vertical
        bubble.spacing = 8
        bubble.backgroundColor = mine ? PonllyPalette.pink : PonllyPalette.panel
        bubble.layer.cornerRadius = 18
        bubble.layer.borderWidth = mine ? 0 : 1
        bubble.layer.borderColor = PonllyPalette.line.cgColor
        bubble.layoutMargins = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        bubble.isLayoutMarginsRelativeArrangement = true
        bubble.translatesAutoresizingMaskIntoConstraints = false
        wrap.addSubview(bubble)
        let body = UILabel()
        body.text = message.text
        body.textColor = .white
        body.numberOfLines = 0
        body.font = PonllyFonts.body(size: 15)
        bubble.addArrangedSubview(body)
        if let artwork = message.artwork {
            let art = PonllyArtworkView(artwork: artwork)
            art.heightAnchor.constraint(equalToConstant: 156).isActive = true
            bubble.addArrangedSubview(art)
        }
        NSLayoutConstraint.activate([
            bubble.topAnchor.constraint(equalTo: wrap.topAnchor),
            bubble.bottomAnchor.constraint(equalTo: wrap.bottomAnchor),
            bubble.widthAnchor.constraint(lessThanOrEqualTo: wrap.widthAnchor, multiplier: 0.76)
        ])
        if mine {
            bubble.trailingAnchor.constraint(equalTo: wrap.trailingAnchor).isActive = true
        } else {
            bubble.leadingAnchor.constraint(equalTo: wrap.leadingAnchor).isActive = true
        }
        return wrap
    }

    @objc private func sendTapped() {
        let text = (inputField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !text.isEmpty else {
            ponllyShowNotice("Add a message before sending.", style: .failure)
            return
        }
        inputField.text = ""
        let message = PonllyMessageBubble(senderId: PonllyDataCenter.currentUserId, text: text, time: "now", artwork: nil)
        stack.addArrangedSubview(messageView(message))
        ponllyShowToast("Message sent")
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func videoCallTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            self.ponllyShowToast("Connecting video...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.55) {
                let call = PonllyVideoCallViewController(user: self.user)
                call.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(call, animated: true)
            }
        }
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        scrollView.contentInset.bottom = frame.height
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 0
    }
}
