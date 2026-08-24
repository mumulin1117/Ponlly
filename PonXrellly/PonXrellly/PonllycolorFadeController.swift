import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllycolorFadeController: UIViewController, UITextViewDelegate {
    private let user: PonllyUser
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let detailView = UITextView()
    private var reasonRows: [PonllytwoToneFillRow] = []
    private var selectedReason = "Harassment"

    private let reasons = [
        "Inappropriate Content",
        "Sexual Content",
        "Spam",
        "Fake Information",
        "Harassment",
        "Copyright Issue",
        "Other"
    ]

    init(user: PonllyUser) {
        self.user = user
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
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 10/255, green: 10/255, blue: 14/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(header)
        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel
        back.layer.cornerRadius = 28
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        back.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(back)
        let title = UILabel()
        title.text = "Report User"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 22)
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)

        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        stack.addArrangedSubview(targetCard())
        stack.addArrangedSubview(sectionLabel("SELECT REASON"))
        reasons.forEach { reason in
            let row = PonllytwoToneFillRow(reason: reason)
            row.isSelectedReason = reason == selectedReason
            row.addAction(UIAction { [weak self] _ in self?.selectReason(reason) }, for: .touchUpInside)
            reasonRows.append(row)
            stack.addArrangedSubview(row)
        }
        stack.addArrangedSubview(sectionLabel("ADDITIONAL DETAILS (OPTIONAL)"))
        configureDetailView()
        stack.addArrangedSubview(detailView)
        let submit = PonllyNeonButton(title: "Submit Report")
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        stack.addArrangedSubview(submit)

        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 112),
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -18),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            title.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: header.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 22),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -28),
            detailView.heightAnchor.constraint(equalToConstant: 108),
            submit.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func targetCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel
        card.layer.cornerRadius = 16
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let avatar = ErErstPaintLabView(user: user, size: 54)
        card.addSubview(avatar)
        let textStack = UIStackView()
        textStack.axis = .vertical
        textStack.spacing = 6
        textStack.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(textStack)
        let handle = UILabel()
        handle.text = "@\(user.name.lowercased())"
        handle.textColor = .white
        handle.font = PonllyFonts.display(size: 17)
        let sub = UILabel()
        sub.text = "Reported target user"
        sub.textColor = PonllyPalette.muted
        sub.font = PonllyFonts.body(size: 13)
        textStack.addArrangedSubview(handle)
        textStack.addArrangedSubview(sub)
        let badge = UILabel()
        badge.text = "TARGET"
        badge.textColor = PonllyPalette.pink
        badge.textAlignment = .center
        badge.font = PonllyFonts.display(size: 11)
        badge.layer.cornerRadius = 10
        badge.layer.borderWidth = 1.2
        badge.layer.borderColor = PonllyPalette.pink.cgColor
        badge.clipsToBounds = true
        badge.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(badge)
        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 94),
            avatar.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            avatar.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            textStack.leadingAnchor.constraint(equalTo: avatar.trailingAnchor, constant: 14),
            textStack.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            textStack.trailingAnchor.constraint(lessThanOrEqualTo: badge.leadingAnchor, constant: -12),
            badge.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            badge.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            badge.widthAnchor.constraint(equalToConstant: 78),
            badge.heightAnchor.constraint(equalToConstant: 36)
        ])
        return card
    }

    private func sectionLabel(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 12)
        return label
    }

    private func configureDetailView() {
        detailView.text = "Provide more context about this report..."
        detailView.textColor = PonllyPalette.muted
        detailView.font = PonllyFonts.body(size: 14)
        detailView.backgroundColor = PonllyPalette.panel
        detailView.layer.cornerRadius = 14
        detailView.layer.borderWidth = 1
        detailView.layer.borderColor = PonllyPalette.line.cgColor
        detailView.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 16, right: 14)
        detailView.delegate = self
    }

    private func selectReason(_ reason: String) {
        selectedReason = reason
        reasonRows.forEach { $0.isSelectedReason = $0.reason == reason }
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == PonllyPalette.muted {
            textView.text = ""
            textView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            textView.text = "Provide more context about this report..."
            textView.textColor = PonllyPalette.muted
        }
    }

    @objc private func submitTapped() {
        let rawDetails = detailView.textColor == PonllyPalette.muted ? "" : detailView.text ?? ""
        ponllyShowToast("Submitting report...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.85) {
            PonllyDataCenter.submitUserReport(
                targetUserId: self.user.id,
                reason: self.selectedReason,
                details: rawDetails.trimmingCharacters(in: .whitespacesAndNewlines),
                hasEvidence: false
            )
            let success = PonllyletterMazeController()
            success.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(success, animated: true)
        }
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
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
