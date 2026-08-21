import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyVideoCommentsViewController: UIViewController {
    private var video: PonllyVideo
    private let onUpdate: (PonllyVideo) -> Void
    private let dimView = UIView()
    private let sheet = UIView()
    private let commentStack = UIStackView()
    private let countLabel = UILabel()
    private let inputField = UITextField()

    init(video: PonllyVideo, onUpdate: @escaping (PonllyVideo) -> Void) {
        self.video = video
        self.onUpdate = onUpdate
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        reloadComments()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        sheet.transform = CGAffineTransform(translationX: 0, y: sheet.bounds.height)
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.dimView.alpha = 1
            self.sheet.transform = .identity
        }
    }

    private func setup() {
        view.backgroundColor = .clear
        dimView.backgroundColor = UIColor.black.withAlphaComponent(0.62)
        dimView.alpha = 0
        dimView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dimView)
        dimView.pinToEdges(of: view)

        sheet.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 12/255, alpha: 1)
        sheet.layer.cornerRadius = 24
        sheet.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        sheet.layer.borderWidth = 1
        sheet.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        sheet.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sheet)

        let handle = UIView()
        handle.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        handle.layer.cornerRadius = 2
        handle.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(handle)

        let title = UILabel()
        title.text = "Comments"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 14)
        title.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(title)

        countLabel.textColor = .black
        countLabel.font = PonllyFonts.mono(size: 11)
        countLabel.textAlignment = .center
        countLabel.backgroundColor = PonllyPalette.pink
        countLabel.layer.cornerRadius = 16
        countLabel.clipsToBounds = true
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(countLabel)

        let close = UIButton(type: .system)
        close.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        close.tintColor = .white
        close.backgroundColor = UIColor.white.withAlphaComponent(0.12)
        close.layer.cornerRadius = 22
        close.addTarget(self, action: #selector(closeTapped), for: .touchUpInside)
        close.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(close)

        let scrollView = UIScrollView()
        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(scrollView)

        commentStack.axis = .vertical
        commentStack.spacing = 22
        commentStack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(commentStack)

        let inputBar = UIView()
        inputBar.backgroundColor = PonllyPalette.background
        inputBar.layer.borderWidth = 1
        inputBar.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        inputBar.translatesAutoresizingMaskIntoConstraints = false
        sheet.addSubview(inputBar)

        let avatar = PonllyAvatarView(user: PonllyDataCenter.user("u01"), size: 32)
        inputBar.addSubview(avatar)

        let inputWrap = UIView()
        inputWrap.backgroundColor = UIColor(red: 43/255, green: 43/255, blue: 55/255, alpha: 1)
        inputWrap.layer.cornerRadius = 22
        inputWrap.layer.borderWidth = 1
        inputWrap.layer.borderColor = UIColor.white.withAlphaComponent(0.12).cgColor
        inputWrap.translatesAutoresizingMaskIntoConstraints = false
        inputBar.addSubview(inputWrap)

        inputField.attributedPlaceholder = NSAttributedString(string: "Add a comment...", attributes: [.foregroundColor: PonllyPalette.muted])
        inputField.textColor = .white
        inputField.font = PonllyFonts.body(size: 13, weight: .regular)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        inputWrap.addSubview(inputField)

        let send = UIButton(type: .system)
        send.setTitle("Send", for: .normal)
        send.setTitleColor(.black, for: .normal)
        send.titleLabel?.font = PonllyFonts.display(size: 11)
        send.backgroundColor = PonllyPalette.cyan
        send.layer.cornerRadius = 22
        send.addTarget(self, action: #selector(sendTapped), for: .touchUpInside)
        send.translatesAutoresizingMaskIntoConstraints = false
        inputBar.addSubview(send)

        NSLayoutConstraint.activate([
            sheet.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sheet.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sheet.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sheet.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.78),

            handle.centerXAnchor.constraint(equalTo: sheet.centerXAnchor),
            handle.topAnchor.constraint(equalTo: sheet.topAnchor, constant: 22),
            handle.widthAnchor.constraint(equalToConstant: 40),
            handle.heightAnchor.constraint(equalToConstant: 4),

            title.leadingAnchor.constraint(equalTo: sheet.leadingAnchor, constant: 20),
            title.topAnchor.constraint(equalTo: sheet.topAnchor, constant: 78),
            countLabel.leadingAnchor.constraint(equalTo: title.trailingAnchor, constant: 14),
            countLabel.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            countLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 58),
            countLabel.heightAnchor.constraint(equalToConstant: 32),
            close.trailingAnchor.constraint(equalTo: sheet.trailingAnchor, constant: -24),
            close.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            close.widthAnchor.constraint(equalToConstant: 44),
            close.heightAnchor.constraint(equalToConstant: 44),

            scrollView.leadingAnchor.constraint(equalTo: sheet.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: sheet.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 34),
            scrollView.bottomAnchor.constraint(equalTo: inputBar.topAnchor),
            commentStack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            commentStack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            commentStack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            commentStack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -22),

            inputBar.leadingAnchor.constraint(equalTo: sheet.leadingAnchor),
            inputBar.trailingAnchor.constraint(equalTo: sheet.trailingAnchor),
            inputBar.bottomAnchor.constraint(equalTo: sheet.bottomAnchor),
            inputBar.heightAnchor.constraint(equalToConstant: 96),
            avatar.leadingAnchor.constraint(equalTo: inputBar.leadingAnchor, constant: 16),
            avatar.centerYAnchor.constraint(equalTo: inputBar.centerYAnchor, constant: -6),
            inputWrap.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 18),
            inputWrap.centerYAnchor.constraint(equalTo: avatar.centerYAnchor),
            inputWrap.heightAnchor.constraint(equalToConstant: 44),
            send.leadingAnchor.constraint(equalTo: inputWrap.trailingAnchor, constant: 12),
            send.trailingAnchor.constraint(equalTo: inputBar.trailingAnchor, constant: -16),
            send.centerYAnchor.constraint(equalTo: inputWrap.centerYAnchor),
            send.widthAnchor.constraint(equalToConstant: 88),
            send.heightAnchor.constraint(equalToConstant: 44),
            inputField.leadingAnchor.constraint(equalTo: inputWrap.leadingAnchor, constant: 18),
            inputField.trailingAnchor.constraint(equalTo: inputWrap.trailingAnchor, constant: -18),
            inputField.centerYAnchor.constraint(equalTo: inputWrap.centerYAnchor)
        ])
    }

    private func reloadComments() {
        countLabel.text = compactCount(video.commentCount)
        commentStack.arrangedSubviews.forEach {
            commentStack.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        video.comments.forEach { commentStack.addArrangedSubview(commentRow($0)) }
    }

    private func commentRow(_ comment: PonllyVideoComment) -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .top
        row.spacing = 12

        row.addArrangedSubview(PonllyAvatarView(user: PonllyDataCenter.user(comment.userId), size: 36))

        let textStack = UIStackView()
        textStack.axis = .vertical
        textStack.spacing = 8

        let meta = UILabel()
        meta.text = "\(comment.handle)   \(comment.time)"
        meta.textColor = PonllyPalette.cyan
        meta.font = PonllyFonts.display(size: 11)

        let body = UILabel()
        body.text = comment.text
        body.textColor = .white
        body.font = PonllyFonts.body(size: 13, weight: .regular)
        body.numberOfLines = 0

        let reply = UILabel()
        reply.text = "Reply"
        reply.textColor = PonllyPalette.muted
        reply.font = PonllyFonts.body(size: 11, weight: .semibold)

        [meta, body, reply].forEach(textStack.addArrangedSubview)
        row.addArrangedSubview(textStack)

        let likes = UILabel()
        likes.text = compactCount(comment.likeCount)
        likes.textColor = PonllyPalette.muted
        likes.font = PonllyFonts.mono(size: 10)
        likes.textAlignment = .right
        likes.widthAnchor.constraint(equalToConstant: 44).isActive = true
        row.addArrangedSubview(likes)
        return row
    }

    private func compactCount(_ count: Int) -> String {
        if count >= 1000 {
            return String(format: "%.1fK", Double(count) / 1000)
        }
        return "\(count)"
    }

    @objc private func sendTapped() {
        let text = (inputField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !text.isEmpty else {
            ponllyShowNotice("Add a few words before sending.", style: .failure)
            return
        }
        ponllyShowToast("Sending...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.video.comments.insert(.init(userId: "u01", handle: "@kai", time: "Just now", text: text, likeCount: 0, isLiked: false), at: 0)
            self.video.commentCount += 1
            self.inputField.text = ""
            self.inputField.resignFirstResponder()
            self.reloadComments()
            self.onUpdate(self.video)
            self.ponllyShowToast("Comment added")
        }
    }

    @objc private func closeTapped() {
        UIView.animate(withDuration: 0.2, animations: {
            self.dimView.alpha = 0
            self.sheet.transform = CGAffineTransform(translationX: 0, y: self.sheet.bounds.height)
        }) { _ in
            self.dismiss(animated: false)
        }
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        sheet.transform = CGAffineTransform(translationX: 0, y: -frame.height * 0.34)
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        sheet.transform = .identity
    }
}
