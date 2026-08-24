import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

struct PonllyangleBreakContext {
    let title: String
    let subtitle: String?
    let imageName: String?
    let fallbackColors: [UIColor]
}

final class PonllyroughFillController: UIViewController, UITextViewDelegate {
    private let context: PonllyangleBreakContext
    private var selectedReason = "Harassment"
    private var reasonRows: [PonllytwoToneFillRow] = []
    private let detailView = UITextView()
    var onReportSubmitted: (() -> Void)?

    init(room: PonllyVoiceRoom) {
        let host = PonllyDataCenter.user(room.hostId)
        self.context = PonllyangleBreakContext(
            title: room.title,
            subtitle: "Hosted by \(host.name)",
            imageName: room.backgroundImageName,
            fallbackColors: [room.accent, PonllyPalette.panel]
        )
        super.init(nibName: nil, bundle: nil)
    }

    init(battle: PonllyBattle) {
        self.context = PonllyangleBreakContext(
            title: battle.title,
            subtitle: battle.theme,
            imageName: battle.artworkA.imageName,
            fallbackColors: battle.artworkA.colors
        )
        super.init(nibName: nil, bundle: nil)
    }

    init(video: PonllyVideo) {
        let author = PonllyDataCenter.user(video.authorId)
        self.context = PonllyangleBreakContext(
            title: video.title,
            subtitle: "By \(author.name)",
            imageName: nil,
            fallbackColors: video.colors
        )
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func setup() {
        view.backgroundColor = PonllyPalette.background

        let background = UIImageView(image: context.imageName.flatMap(UIImage.init(named:)))
        background.contentMode = .scaleAspectFill
        background.alpha = background.image == nil ? 0 : 0.2
        background.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(background)
        background.pinToEdges(of: view)

        let veil = PonllyGradientView(
            colors: [UIColor.black.withAlphaComponent(0.2), PonllyPalette.background.withAlphaComponent(0.98)],
            start: CGPoint(x: 0.5, y: 0),
            end: CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        let back = roundButton(symbol: "chevron.left")
        view.addSubview(back)
        let title = UILabel()
        title.text = "Report"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        let divider = UIView()
        divider.backgroundColor = PonllyPalette.line
        divider.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(divider)

        let scrollView = UIScrollView()
        scrollView.keyboardDismissMode = .interactive
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        stack.addArrangedSubview(contextCard())
        stack.setCustomSpacing(28, after: stack.arrangedSubviews.last!)
        stack.addArrangedSubview(sectionLabel("SELECT REASON"))

        ["Inappropriate Content", "Harassment", "Advertising / Spam", "Other"].forEach { reason in
            let row = PonllytwoToneFillRow(reason: reason)
            row.isSelectedReason = reason == selectedReason
            row.addTarget(self, action: #selector(reasonTapped(_:)), for: .touchUpInside)
            reasonRows.append(row)
            stack.addArrangedSubview(row)
        }

        stack.setCustomSpacing(28, after: stack.arrangedSubviews.last!)
        stack.addArrangedSubview(sectionLabel("ADDITIONAL DETAILS (OPTIONAL)"))

        detailView.text = "Describe the issue..."
        detailView.textColor = PonllyPalette.muted
        detailView.font = PonllyFonts.body(size: 16)
        detailView.backgroundColor = PonllyPalette.panel
        detailView.layer.cornerRadius = 16
        detailView.layer.borderWidth = 1
        detailView.layer.borderColor = PonllyPalette.line.cgColor
        detailView.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 16, right: 14)
        detailView.delegate = self
        detailView.translatesAutoresizingMaskIntoConstraints = false
        stack.addArrangedSubview(detailView)

        let submit = PonllyNeonButton(title: "Submit Report")
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        stack.addArrangedSubview(submit)

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            divider.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            divider.topAnchor.constraint(equalTo: back.bottomAnchor, constant: 34),
            divider.heightAnchor.constraint(equalToConstant: 1),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: divider.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 26),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34),
            detailView.heightAnchor.constraint(equalToConstant: 116),
            submit.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func roundButton(symbol: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        button.layer.cornerRadius = 28
        button.layer.borderWidth = 1.2
        button.layer.borderColor = PonllyPalette.line.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        return button
    }

    private func contextCard() -> UIView {
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel
        card.layer.cornerRadius = 20
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        card.translatesAutoresizingMaskIntoConstraints = false

        let thumb = UIView()
        thumb.layer.cornerRadius = 28
        thumb.clipsToBounds = true
        thumb.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(thumb)
        let gradient = PonllyGradientView(colors: context.fallbackColors)
        thumb.addSubview(gradient)
        gradient.pinToEdges(of: thumb)
        if let imageName = context.imageName, let image = UIImage(named: imageName) {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            thumb.addSubview(imageView)
            imageView.pinToEdges(of: thumb)
        }

        let name = UILabel()
        name.text = context.title
        name.textColor = .white
        name.font = PonllyFonts.display(size: 16)
        name.numberOfLines = 2
        name.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(name)

        let subtitle = UILabel()
        subtitle.text = context.subtitle
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 14, weight: .medium)
        subtitle.numberOfLines = 1
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(subtitle)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 92),
            thumb.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 18),
            thumb.centerYAnchor.constraint(equalTo: card.centerYAnchor),
            thumb.widthAnchor.constraint(equalToConstant: 56),
            thumb.heightAnchor.constraint(equalToConstant: 56),
            name.leadingAnchor.constraint(equalTo: thumb.trailingAnchor, constant: 14),
            name.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -18),
            name.topAnchor.constraint(equalTo: card.topAnchor, constant: 22),
            subtitle.leadingAnchor.constraint(equalTo: name.leadingAnchor),
            subtitle.trailingAnchor.constraint(equalTo: name.trailingAnchor),
            subtitle.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 6)
        ])
        return card
    }

    private func sectionLabel(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 13)
        return label
    }

    private func refreshReasons() {
        reasonRows.forEach { $0.isSelectedReason = $0.reason == selectedReason }
    }

    @objc private func reasonTapped(_ sender: PonllytwoToneFillRow) {
        selectedReason = sender.reason
        refreshReasons()
    }

    @objc private func submitTapped() {
        detailView.resignFirstResponder()
        ponllyShowNotice("Submitting report...", style: .loading, autoDismissAfter: 0.8)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.85) {
            self.dismiss(animated: true) {
                self.onReportSubmitted?()
            }
        }
    }

    @objc private func backTapped() {
        dismiss(animated: true)
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Describe the issue..." {
            textView.text = ""
            textView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            textView.text = "Describe the issue..."
            textView.textColor = PonllyPalette.muted
        }
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect,
              let scrollView = view.subviews.compactMap({ $0 as? UIScrollView }).first else { return }
        scrollView.contentInset.bottom = frame.height
        scrollView.verticalScrollIndicatorInsets.bottom = frame.height
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        guard let scrollView = view.subviews.compactMap({ $0 as? UIScrollView }).first else { return }
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
