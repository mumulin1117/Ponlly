import UIKit

@MainActor
final class PonllyBattleDetailViewController: UIViewController {
    private var battle: PonllyBattle
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let commentField = UITextField()
    private weak var commentsSection: UIStackView?
    private weak var commentsTitleLabel: UILabel?

    init(battle: PonllyBattle) {
        self.battle = battle
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setupNav()
        setupUI()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setupNav() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        title = battle.title
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "ellipsis"), style: .plain, target: self, action: #selector(moreTapped))
    }

    private func setupUI() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 13/255, green: 18/255, blue: 20/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)
        scrollView.keyboardDismissMode = .onDrag
        view.addSubview(scrollView)
        scrollView.pinToEdges(of: view)
        stack.axis = .vertical
        stack.spacing = 24
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -16),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 24),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -40)
        ])

        stack.addArrangedSubview(statusRow())
        stack.addArrangedSubview(artArena())
        stack.addArrangedSubview(creatorsRow())
        if battle.status == .waiting || battle.creatorBId == nil {
            stack.addArrangedSubview(acceptChallengeButton())
        } else {
            stack.addArrangedSubview(voteButtons())
        }
        let progress = PonllyVoteProgressView(aVotes: battle.votesA, bVotes: battle.votesB)
        progress.heightAnchor.constraint(equalToConstant: 42).isActive = true
        stack.addArrangedSubview(progress)
        stack.addArrangedSubview(themeCard())
        stack.addArrangedSubview(commentsBlock())
        stack.addArrangedSubview(commentInput())
    }

    private func statusRow() -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.distribution = .equalSpacing
        let live = UILabel()
        live.text = "● Live Voting"
        live.textColor = PonllyPalette.green
        live.font = PonllyFonts.mono(size: 12)
        let time = UILabel()
        time.text = "◷ 23:47:12"
        time.textColor = PonllyPalette.pink
        time.font = PonllyFonts.mono(size: 12)
        row.addArrangedSubview(live)
        row.addArrangedSubview(time)
        return row
    }

    private func artArena() -> UIView {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        let a = PonllyArtworkView(artwork: battle.artworkA)
        let b = battle.artworkB.map(PonllyArtworkView.init) ?? PonllyEmptyOpponentView()
        [a, b].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            container.addSubview($0)
        }
        let badge = UIImageView(image: UIImage(named: "vs_badge"))
        badge.contentMode = .scaleAspectFit
        badge.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(badge)
        NSLayoutConstraint.activate([
            container.heightAnchor.constraint(equalToConstant: 320),
            a.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            a.topAnchor.constraint(equalTo: container.topAnchor),
            a.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            a.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.5),
            b.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            b.topAnchor.constraint(equalTo: container.topAnchor),
            b.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            b.widthAnchor.constraint(equalTo: container.widthAnchor, multiplier: 0.5),
            badge.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            badge.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            badge.widthAnchor.constraint(equalToConstant: 84),
            badge.heightAnchor.constraint(equalToConstant: 84)
        ])
        return container
    }

    private func creatorsRow() -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.distribution = .equalSpacing
        row.addArrangedSubview(creatorBlock(userId: battle.creatorAId, alignRight: false))
        row.addArrangedSubview(creatorBlock(userId: battle.creatorBId, alignRight: true))
        return row
    }

    private func creatorBlock(userId: String?, alignRight: Bool) -> UIView {
        guard let userId, !userId.isEmpty else {
            let placeholder = UIStackView()
            placeholder.axis = .vertical
            placeholder.alignment = alignRight ? .trailing : .leading
            placeholder.spacing = 4
            let name = UILabel()
            name.text = "WAITING ARTIST"
            name.textColor = PonllyPalette.muted
            name.font = PonllyFonts.display(size: 14)
            let level = UILabel()
            level.text = "Open challenge slot"
            level.textColor = PonllyPalette.muted
            level.font = PonllyFonts.body(size: 11, weight: .semibold)
            placeholder.addArrangedSubview(name)
            placeholder.addArrangedSubview(level)
            return placeholder
        }

        let user = PonllyDataCenter.user(userId)
        let control = UIControl()
        control.addAction(UIAction { [weak self] _ in
            self?.openArtist(user)
        }, for: .touchUpInside)
        let row = UIStackView()
        row.axis = alignRight ? .horizontal : .horizontal
        row.alignment = .center
        row.spacing = 10
        row.isUserInteractionEnabled = false
        row.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(row)
        let text = UIStackView()
        text.axis = .vertical
        text.alignment = alignRight ? .trailing : .leading
        let name = UILabel()
        name.text = user.name.uppercased()
        name.textColor = .white
        name.font = PonllyFonts.display(size: 14)
        let level = UILabel()
        level.text = user.level
        level.textColor = PonllyPalette.muted
        level.font = PonllyFonts.body(size: 11, weight: .semibold)
        text.addArrangedSubview(name)
        text.addArrangedSubview(level)
        if alignRight {
            row.addArrangedSubview(text)
            row.addArrangedSubview(PonllyAvatarView(user: user, size: 48))
        } else {
            row.addArrangedSubview(PonllyAvatarView(user: user, size: 48))
            row.addArrangedSubview(text)
        }
        NSLayoutConstraint.activate([
            row.leadingAnchor.constraint(equalTo: control.leadingAnchor),
            row.trailingAnchor.constraint(equalTo: control.trailingAnchor),
            row.topAnchor.constraint(equalTo: control.topAnchor),
            row.bottomAnchor.constraint(equalTo: control.bottomAnchor),
            control.heightAnchor.constraint(equalToConstant: 56)
        ])
        return control
    }

    private func voteButtons() -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.spacing = 18
        row.distribution = .fillEqually
        let aPercent = battle.votesA * 100 / max(battle.votesA + battle.votesB, 1)
        let bPercent = 100 - aPercent
        let a = PonllyNeonButton(title: "Support A\n\(aPercent)%", color: PonllyPalette.pink)
        a.titleLabel?.numberOfLines = 2
        a.setTitleColor(.white, for: .normal)
        let b = PonllyNeonButton(title: "Support B\n\(bPercent)%", color: PonllyPalette.cyan)
        b.titleLabel?.numberOfLines = 2
        a.addTarget(self, action: #selector(voteTapped), for: .touchUpInside)
        b.addTarget(self, action: #selector(voteTapped), for: .touchUpInside)
        row.addArrangedSubview(a)
        row.addArrangedSubview(b)
        a.heightAnchor.constraint(equalToConstant: 86).isActive = true
        return row
    }

    private func acceptChallengeButton() -> UIView {
        let button = PonllyNeonButton(title: "Accept Challenge", color: PonllyPalette.cyan)
        button.addTarget(self, action: #selector(acceptChallengeTapped), for: .touchUpInside)
        button.heightAnchor.constraint(equalToConstant: 62).isActive = true
        return button
    }

    private func themeCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.85)
        card.layer.cornerRadius = 16
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        card.addSubview(stack)
        stack.pinToEdges(of: card, insets: UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18))
        let title = UILabel()
        title.text = "Challenge Theme"
        title.textColor = PonllyPalette.green
        title.font = PonllyFonts.display(size: 14)
        let body = UILabel()
        body.text = battle.description
        body.textColor = .white
        body.numberOfLines = 0
        body.font = PonllyFonts.body(size: 13, weight: .semibold)
        stack.addArrangedSubview(title)
        stack.addArrangedSubview(body)
        return card
    }

    private func commentsBlock() -> UIView {
        let block = UIStackView()
        block.axis = .vertical
        block.spacing = 12
        let header = UIStackView()
        header.axis = .horizontal
        header.distribution = .equalSpacing
        let title = UILabel()
        title.text = "Arena Chat (\(battle.comments.count))"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        commentsTitleLabel = title
        header.addArrangedSubview(title)
        block.addArrangedSubview(header)
        commentsSection = block
        for comment in battle.comments {
            block.addArrangedSubview(commentRow(comment))
        }
        return block
    }

    private func commentRow(_ comment: PonllyBattleComment) -> UIView {
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .top
        row.spacing = 10
        let user = PonllyDataCenter.user(comment.userId)
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
        let text = UIStackView()
        text.axis = .vertical
        let title = UILabel()
        let reactions = comment.reactionCount == 1 ? "1 reaction" : "\(comment.reactionCount) reactions"
        title.text = "\(user.name)   \(comment.time)   \(reactions)"
        title.textColor = .white
        title.font = PonllyFonts.body(size: 12, weight: .bold)
        let body = UILabel()
        body.text = comment.text
        body.textColor = PonllyPalette.muted
        body.numberOfLines = 0
        body.font = PonllyFonts.body(size: 12, weight: .medium)
        text.addArrangedSubview(title)
        text.addArrangedSubview(body)
        row.addArrangedSubview(text)
        return row
    }

    private func openArtist(_ user: PonllyUser) {
        guard user.id != PonllyDataCenter.currentUserId else { return }
        let profile = PonllyArtistProfileViewController(user: user)
        profile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(profile, animated: true)
    }

    private func commentInput() -> UIView {
        let wrap = UIView()
        wrap.backgroundColor = UIColor(red: 43/255, green: 43/255, blue: 55/255, alpha: 1)
        wrap.layer.cornerRadius = 24
        wrap.translatesAutoresizingMaskIntoConstraints = false
        commentField.placeholder = "Add to the arena buzz..."
        commentField.attributedPlaceholder = NSAttributedString(string: "Add to the arena buzz...", attributes: [.foregroundColor: PonllyPalette.muted])
        commentField.textColor = .white
        commentField.translatesAutoresizingMaskIntoConstraints = false
        wrap.addSubview(commentField)
        let send = UIButton(type: .system)
        send.setImage(UIImage(named: "send_horizontal") ?? UIImage(systemName: "paperplane.fill"), for: .normal)
        send.tintColor = PonllyPalette.pink
        send.translatesAutoresizingMaskIntoConstraints = false
        send.addTarget(self, action: #selector(sendCommentTapped), for: .touchUpInside)
        wrap.addSubview(send)
        NSLayoutConstraint.activate([
            wrap.heightAnchor.constraint(equalToConstant: 54),
            commentField.leadingAnchor.constraint(equalTo: wrap.leadingAnchor, constant: 18),
            commentField.centerYAnchor.constraint(equalTo: wrap.centerYAnchor),
            send.trailingAnchor.constraint(equalTo: wrap.trailingAnchor, constant: -16),
            send.centerYAnchor.constraint(equalTo: wrap.centerYAnchor),
            send.widthAnchor.constraint(equalToConstant: 30),
            send.heightAnchor.constraint(equalToConstant: 30),
            commentField.trailingAnchor.constraint(equalTo: send.leadingAnchor, constant: -10)
        ])
        return wrap
    }

    @objc private func voteTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            self.ponllyShowToast("Submitting vote...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.ponllyShowToast("Vote counted")
            }
        }
    }

    @objc private func acceptChallengeTapped() {
        PonllyAuthCenter.shared.requireLogin(from: self) {
            let accept = PonllyAcceptChallengeViewController(battle: self.battle)
            accept.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(accept, animated: true)
        }
    }

    @objc private func sendCommentTapped() {
        let text = (commentField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !text.isEmpty else {
            ponllyShowNotice("Add a few words before sending.", style: .failure)
            return
        }
        PonllyAuthCenter.shared.requireLogin(from: self) {
            self.ponllyShowToast("Sending...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                self.battle.comments.append(PonllyBattleComment(userId: "u01", time: "Just now", text: text, reactionCount: 0))
                self.commentField.text = ""
                self.commentField.resignFirstResponder()
                self.refreshComments()
                self.ponllyShowToast("Comment added")
            }
        }
    }

    private func refreshComments() {
        commentsTitleLabel?.text = "Arena Chat (\(battle.comments.count))"
        guard let commentsSection else { return }
        while commentsSection.arrangedSubviews.count > 1 {
            guard let row = commentsSection.arrangedSubviews.last else { break }
            commentsSection.removeArrangedSubview(row)
            row.removeFromSuperview()
        }
        battle.comments.forEach { commentsSection.addArrangedSubview(commentRow($0)) }
        view.layoutIfNeeded()
        let bottomY = max(0, scrollView.contentSize.height - scrollView.bounds.height + scrollView.adjustedContentInset.bottom)
        scrollView.setContentOffset(CGPoint(x: 0, y: bottomY), animated: true)
    }

    @objc private func moreTapped() {
        let alert = UIAlertController(title: "Battle Options", message: battle.title, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Report Challenge", style: .destructive) { _ in
            PonllyAuthCenter.shared.requireLogin(from: self) {
                let report = PonllyReportRoomViewController(battle: self.battle)
                report.onReportSubmitted = { [weak self] in
                    self?.ponllyShowNotice("Report submitted", style: .success)
                }
                report.modalPresentationStyle = .overFullScreen
                report.modalTransitionStyle = .crossDissolve
                self.present(report, animated: true)
            }
        })
        alert.addAction(UIAlertAction(title: "Not Interested", style: .default) { _ in
            self.ponllyShowToast("Updated")
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        if let popover = alert.popoverPresentationController {
            popover.barButtonItem = navigationItem.rightBarButtonItem
        }
        present(alert, animated: true)
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        scrollView.contentInset.bottom = frame.height
        scrollView.verticalScrollIndicatorInsets.bottom = frame.height
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
