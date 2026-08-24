import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyVoiceRoomImmersiveViewController: UIViewController, UITextFieldDelegate {
    private var room: PonllyVoiceRoom
    private let messagesStack = UIStackView()
    private let messagesScroll = UIScrollView()
    private let inputField = UITextField()
    private let micButton = UIButton(type: .system)
    private var isOnSeat = false
    private var isMuted = true

    init(room: PonllyVoiceRoom) {
        var preparedRoom = room
        preparedRoom.speakerSeats = room.speakerSeats.map { seat in
            guard seat.userId != PonllyDataCenter.currentUserId else { return seat }
            var mutedSeat = seat
            mutedSeat.isMuted = true
            return mutedSeat
        }
        self.room = preparedRoom
        if let currentSeat = preparedRoom.speakerSeats.first(where: { $0.userId == PonllyDataCenter.currentUserId }) {
            isOnSeat = true
            isMuted = currentSeat.isMuted
        }
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
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
        let background = UIImageView(image: UIImage(named: room.backgroundImageName))
        background.contentMode = .scaleAspectFill
        background.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(background)
        let veil = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.45), PonllyPalette.background.withAlphaComponent(0.96)], start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        let back = roundButton("chevron.left", action: #selector(backTapped))
        let more = roundButton("ellipsis", action: #selector(moreTapped))
        view.addSubview(back)
        view.addSubview(more)

        let title = UILabel()
        title.text = room.title
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 21)
        title.numberOfLines = 2
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)
        let topic = UILabel()
        topic.text = room.topic
        topic.textColor = PonllyPalette.muted
        topic.textAlignment = .center
        topic.font = PonllyFonts.body(size: 12, weight: .medium)
        topic.numberOfLines = 2
        topic.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topic)

        let seats = seatsGrid()
        view.addSubview(seats)

        let join = PonllyNeonButton(title: "Join Seat")
        join.addTarget(self, action: #selector(joinSeatTapped), for: .touchUpInside)
        view.addSubview(join)

        messagesScroll.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(messagesScroll)
        messagesStack.axis = .vertical
        messagesStack.spacing = 10
        messagesStack.translatesAutoresizingMaskIntoConstraints = false
        messagesScroll.addSubview(messagesStack)
        room.messageLog.forEach { messagesStack.addArrangedSubview(messageRow($0)) }

        let inputBar = inputArea()
        view.addSubview(inputBar)
        let leave = UIButton(type: .system)
        leave.setTitle("Leave Room", for: .normal)
        leave.setTitleColor(PonllyPalette.pink, for: .normal)
        leave.titleLabel?.font = PonllyFonts.display(size: 12)
        leave.layer.cornerRadius = 16
        leave.layer.borderWidth = 1
        leave.layer.borderColor = PonllyPalette.pink.cgColor
        leave.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        leave.translatesAutoresizingMaskIntoConstraints = false
        leave.addTarget(self, action: #selector(leaveTapped), for: .touchUpInside)
        view.addSubview(leave)

        NSLayoutConstraint.activate([
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.48),
            back.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            back.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            more.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            more.topAnchor.constraint(equalTo: back.topAnchor),
            title.leadingAnchor.constraint(equalTo: back.trailingAnchor, constant: 12),
            title.trailingAnchor.constraint(equalTo: more.leadingAnchor, constant: -12),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            topic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            topic.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            topic.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 18),
            seats.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            seats.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            seats.topAnchor.constraint(equalTo: topic.bottomAnchor, constant: 22),
            join.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            join.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            join.topAnchor.constraint(equalTo: seats.bottomAnchor, constant: 18),
            join.heightAnchor.constraint(equalToConstant: 54),
            inputBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            inputBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            inputBar.bottomAnchor.constraint(equalTo: leave.topAnchor, constant: -10),
            inputBar.heightAnchor.constraint(equalToConstant: 72),
            leave.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 24),
            leave.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -24),
            leave.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            leave.heightAnchor.constraint(equalToConstant: 46),
            messagesScroll.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            messagesScroll.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            messagesScroll.topAnchor.constraint(equalTo: join.bottomAnchor, constant: 16),
            messagesScroll.bottomAnchor.constraint(equalTo: inputBar.topAnchor, constant: -10),
            messagesStack.leadingAnchor.constraint(equalTo: messagesScroll.frameLayoutGuide.leadingAnchor),
            messagesStack.trailingAnchor.constraint(equalTo: messagesScroll.frameLayoutGuide.trailingAnchor),
            messagesStack.topAnchor.constraint(equalTo: messagesScroll.contentLayoutGuide.topAnchor),
            messagesStack.bottomAnchor.constraint(equalTo: messagesScroll.contentLayoutGuide.bottomAnchor)
        ])
        refreshMicButton()
    }

    private func seatsGrid() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 14
        outer.translatesAutoresizingMaskIntoConstraints = false
        let seats = room.speakerSeats + openSeats(count: max(4 - room.speakerSeats.count, 1))
        for rowIndex in stride(from: 0, to: seats.count, by: 2) {
            let row = UIStackView()
            row.axis = .horizontal
            row.spacing = 18
            row.distribution = .fillEqually
            row.addArrangedSubview(seatView(seats[rowIndex]))
            if rowIndex + 1 < seats.count {
                row.addArrangedSubview(seatView(seats[rowIndex + 1]))
            } else {
                row.addArrangedSubview(UIView())
            }
            outer.addArrangedSubview(row)
        }
        return outer
    }

    private func openSeats(count: Int) -> [PonllyVoiceRoomSeat] {
        (0..<count).map { _ in PonllyVoiceRoomSeat(userId: "", isMuted: true) }
    }

    private func seatView(_ seat: PonllyVoiceRoomSeat) -> UIControl {
        let control = UIControl()
        control.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.66)
        control.layer.cornerRadius = 18
        control.layer.borderWidth = 1
        control.layer.borderColor = PonllyPalette.line.cgColor
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 7
        stack.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(stack)
        if seat.userId.isEmpty {
            let icon = UIImageView(image: UIImage(systemName: "plus"))
            icon.tintColor = PonllyPalette.cyan
            icon.widthAnchor.constraint(equalToConstant: 32).isActive = true
            icon.heightAnchor.constraint(equalToConstant: 32).isActive = true
            let label = smallLabel("Open Seat", color: PonllyPalette.muted)
            stack.addArrangedSubview(icon)
            stack.addArrangedSubview(label)
            control.addTarget(self, action: #selector(joinSeatTapped), for: .touchUpInside)
        } else {
            let user = PonllyDataCenter.user(seat.userId)
            let avatar = PonllyAvatarView(user: user, size: 54)
            stack.addArrangedSubview(avatar)
            let name = smallLabel(user.name, color: .white)
            stack.addArrangedSubview(name)
            let muted = UIImageView(image: UIImage(systemName: seat.isMuted ? "mic.slash.fill" : "mic.fill"))
            muted.tintColor = seat.isMuted ? PonllyPalette.pink : PonllyPalette.cyan
            muted.widthAnchor.constraint(equalToConstant: 18).isActive = true
            muted.heightAnchor.constraint(equalToConstant: 18).isActive = true
            stack.addArrangedSubview(muted)
            control.addAction(UIAction { [weak self] _ in
                self?.openArtist(user)
            }, for: .touchUpInside)
        }
        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 126),
            stack.centerXAnchor.constraint(equalTo: control.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: control.centerYAnchor)
        ])
        return control
    }

    private func inputArea() -> UIView {
        let bar = UIView()
        bar.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.95)
        bar.layer.borderWidth = 1
        bar.layer.borderColor = PonllyPalette.line.cgColor
        bar.translatesAutoresizingMaskIntoConstraints = false
        inputField.attributedPlaceholder = NSAttributedString(string: "Add a room note...", attributes: [.foregroundColor: PonllyPalette.muted])
        inputField.textColor = .white
        inputField.font = PonllyFonts.body(size: 14, weight: .medium)
        inputField.delegate = self
        inputField.returnKeyType = .send
        inputField.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        inputField.layer.cornerRadius = 18
        inputField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 1))
        inputField.leftViewMode = .always
        inputField.translatesAutoresizingMaskIntoConstraints = false
        bar.addSubview(inputField)

        let send = UIButton(type: .system)
        send.setImage(UIImage(named: "send_horizontal") ?? UIImage(systemName: "paperplane.fill"), for: .normal)
        send.tintColor = .black
        send.backgroundColor = PonllyPalette.cyan
        send.layer.cornerRadius = 22
        send.translatesAutoresizingMaskIntoConstraints = false
        send.addTarget(self, action: #selector(sendTapped), for: .touchUpInside)
        bar.addSubview(send)

        micButton.translatesAutoresizingMaskIntoConstraints = false
        micButton.layer.cornerRadius = 22
        micButton.layer.borderWidth = 1
        micButton.addTarget(self, action: #selector(micTapped), for: .touchUpInside)
        bar.addSubview(micButton)

        NSLayoutConstraint.activate([
            inputField.leadingAnchor.constraint(equalTo: bar.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            inputField.centerYAnchor.constraint(equalTo: bar.centerYAnchor),
            inputField.trailingAnchor.constraint(equalTo: micButton.leadingAnchor, constant: -10),
            inputField.heightAnchor.constraint(equalToConstant: 44),
            micButton.trailingAnchor.constraint(equalTo: send.leadingAnchor, constant: -10),
            micButton.centerYAnchor.constraint(equalTo: inputField.centerYAnchor),
            micButton.widthAnchor.constraint(equalToConstant: 44),
            micButton.heightAnchor.constraint(equalToConstant: 44),
            send.trailingAnchor.constraint(equalTo: bar.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            send.centerYAnchor.constraint(equalTo: inputField.centerYAnchor),
            send.widthAnchor.constraint(equalToConstant: 44),
            send.heightAnchor.constraint(equalToConstant: 44)
        ])
        return bar
    }

    private func messageRow(_ message: PonllyVoiceRoomMessage) -> UIView {
        let user = PonllyDataCenter.user(message.userId)
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .top
        row.spacing = 10
        let avatarButton = UIControl()
        avatarButton.addAction(UIAction { [weak self] _ in
            self?.openArtist(user)
        }, for: .touchUpInside)
        let avatar = PonllyAvatarView(user: user, size: 34)
        avatar.isUserInteractionEnabled = false
        avatarButton.addSubview(avatar)
        NSLayoutConstraint.activate([
            avatar.leadingAnchor.constraint(equalTo: avatarButton.leadingAnchor),
            avatar.trailingAnchor.constraint(equalTo: avatarButton.trailingAnchor),
            avatar.topAnchor.constraint(equalTo: avatarButton.topAnchor),
            avatar.bottomAnchor.constraint(equalTo: avatarButton.bottomAnchor),
            avatarButton.widthAnchor.constraint(equalToConstant: 34),
            avatarButton.heightAnchor.constraint(equalToConstant: 34)
        ])
        row.addArrangedSubview(avatarButton)
        let textStack = UIStackView()
        textStack.axis = .vertical
        textStack.spacing = 4
        let name = smallLabel("\(user.name)  \(message.time)", color: room.accent)
        let body = UILabel()
        body.text = message.text
        body.textColor = .white
        body.font = PonllyFonts.body(size: 13, weight: .medium)
        body.numberOfLines = 0
        textStack.addArrangedSubview(name)
        textStack.addArrangedSubview(body)
        row.addArrangedSubview(textStack)
        return row
    }

    private func openArtist(_ user: PonllyUser) {
        guard user.id != PonllyDataCenter.currentUserId else { return }
        let profile = PonllyArtistProfileViewController(user: user)
        profile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(profile, animated: true)
    }

    private func roundButton(_ symbol: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        button.layer.cornerRadius = 26
        button.layer.borderWidth = 1
        button.layer.borderColor = PonllyPalette.line.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 52).isActive = true
        button.heightAnchor.constraint(equalToConstant: 52).isActive = true
        return button
    }

    private func smallLabel(_ text: String, color: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.font = PonllyFonts.display(size: 11)
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }

    private func refreshMicButton() {
        micButton.setImage(UIImage(systemName: isMuted ? "mic.slash.fill" : "mic.fill"), for: .normal)
        micButton.tintColor = isMuted ? PonllyPalette.pink : PonllyPalette.cyan
        micButton.backgroundColor = UIColor.black.withAlphaComponent(0.22)
        micButton.layer.borderColor = (isMuted ? PonllyPalette.pink : PonllyPalette.cyan).cgColor
        micButton.isEnabled = isOnSeat
        micButton.alpha = isOnSeat ? 1 : 0.45
    }

    private func requestMicrophone(_ completion: @escaping (Bool) -> Void) {
        if #available(iOS 17.0, *) {
            AVAudioApplication.requestRecordPermission { allowed in
                DispatchQueue.main.async { completion(allowed) }
            }
        } else {
            AVAudioSession.sharedInstance().requestRecordPermission { allowed in
                DispatchQueue.main.async { completion(allowed) }
            }
        }
    }

    @objc private func joinSeatTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            self.ponllyShowToast("Requesting microphone...")
            self.requestMicrophone { allowed in
                guard allowed else {
                    self.ponllyShowThemeAlert(title: "Microphone Needed", message: "Allow microphone access to join a room seat.", actionTitle: "Got It", style: .failure)
                    return
                }
                self.isOnSeat = true
                self.isMuted = false
                self.refreshMicButton()
                self.ponllyShowToast("Seat joined")
            }
        }
    }

    @objc private func micTapped() {
        guard isOnSeat else {
            ponllyShowThemeAlert(title: "Join A Seat First", message: "Take an open seat before using the microphone.", actionTitle: "Got It", style: .info)
            return
        }
        isMuted.toggle()
        refreshMicButton()
        ponllyShowToast(isMuted ? "Microphone muted" : "Microphone open")
    }

    @objc private func sendTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            let text = (self.inputField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
            guard !text.isEmpty else {
                self.ponllyShowNotice("Add a note before sending.", style: .failure)
                return
            }
            self.inputField.text = ""
            let message = PonllyVoiceRoomMessage(userId: PonllyDataCenter.currentUserId, time: "now", text: text)
            self.room.messageLog.append(message)
            PonllyDataCenter.updateVoiceRoom(self.room)
            self.messagesStack.addArrangedSubview(self.messageRow(message))
            self.ponllyShowToast("Note sent")
            self.view.layoutIfNeeded()
            let bottom = CGPoint(x: 0, y: max(self.messagesScroll.contentSize.height - self.messagesScroll.bounds.height, 0))
            self.messagesScroll.setContentOffset(bottom, animated: true)
        }
    }

    @objc private func moreTapped() {
        let report = PonllyReportRoomViewController(room: room)
        report.onReportSubmitted = { [weak self] in
            self?.ponllyShowNotice("Report submitted", style: .success)
        }
        report.modalPresentationStyle = .overFullScreen
        report.modalTransitionStyle = .crossDissolve
        present(report, animated: true)
    }

    @objc private func leaveTapped() {
        ponllyShowToast("Leaving room...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.navigationController?.popViewController(animated: true)
        }
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        sendTapped()
        return true
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        UIView.animate(withDuration: 0.22) {
            self.view.transform = CGAffineTransform(translationX: 0, y: -max(frame.height - self.view.safeAreaInsets.bottom - 34, 0))
        }
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        UIView.animate(withDuration: 0.22) {
            self.view.transform = .identity
        }
    }
}
