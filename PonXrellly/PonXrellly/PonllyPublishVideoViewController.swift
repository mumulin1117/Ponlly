import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyPublishVideoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    private let scrollView = UIScrollView()
    private let videoButton = UIButton(type: .system)
    private let previewImageView = UIImageView()
    private let playBadge = UIView()
    private let durationLabel = UILabel()
    private let replaceButton = UIButton(type: .system)
    private let titleField = UITextField()
    private let detailView = UITextView()
    private let publishButton = PonllyNeonButton(title: "Publish Video")
    private var draft = PonllyVideoDraft(title: "", details: "", tags: ["#StreetArt", "#Graffiti", "#Wildstyle"], sourceURL: nil, thumbnail: nil, durationText: nil)
    private let descriptionPlaceholder = "Tell The Story Behind This Piece..."

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Publish Video"
        view.backgroundColor = PonllyPalette.background
        setup()
        refreshVideoState()
        updatePublishState()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 22
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let videoWrap = UIView()
        videoWrap.translatesAutoresizingMaskIntoConstraints = false
        videoButton.backgroundColor = PonllyPalette.panel
        videoButton.layer.cornerRadius = 24
        videoButton.layer.borderWidth = 1
        videoButton.layer.borderColor = PonllyPalette.line.cgColor
        videoButton.clipsToBounds = true
        videoButton.translatesAutoresizingMaskIntoConstraints = false
        videoButton.addTarget(self, action: #selector(videoTapped), for: .touchUpInside)
        videoWrap.addSubview(videoButton)
        previewImageView.contentMode = .scaleAspectFill
        previewImageView.clipsToBounds = true
        previewImageView.translatesAutoresizingMaskIntoConstraints = false
        videoButton.addSubview(previewImageView)
        let plus = UILabel()
        plus.text = "+"
        plus.textColor = PonllyPalette.cyan
        plus.textAlignment = .center
        plus.font = UIFont.systemFont(ofSize: 66, weight: .light)
        plus.tag = 1207
        plus.translatesAutoresizingMaskIntoConstraints = false
        videoButton.addSubview(plus)
        playBadge.backgroundColor = UIColor.black.withAlphaComponent(0.35)
        playBadge.layer.cornerRadius = 42
        playBadge.layer.borderWidth = 3
        playBadge.layer.borderColor = PonllyPalette.cyan.cgColor
        playBadge.translatesAutoresizingMaskIntoConstraints = false
        videoButton.addSubview(playBadge)
        let playIcon = UIImageView(image: UIImage(systemName: "play.fill"))
        playIcon.tintColor = .white
        playIcon.contentMode = .scaleAspectFit
        playIcon.translatesAutoresizingMaskIntoConstraints = false
        playBadge.addSubview(playIcon)
        durationLabel.textColor = PonllyPalette.cyan
        durationLabel.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        durationLabel.textAlignment = .center
        durationLabel.font = PonllyFonts.mono(size: 12)
        durationLabel.layer.cornerRadius = 10
        durationLabel.clipsToBounds = true
        durationLabel.translatesAutoresizingMaskIntoConstraints = false
        videoButton.addSubview(durationLabel)
        replaceButton.setTitle("↻  Replace Video", for: .normal)
        replaceButton.setTitleColor(PonllyPalette.cyan, for: .normal)
        replaceButton.titleLabel?.font = PonllyFonts.display(size: 12)
        replaceButton.translatesAutoresizingMaskIntoConstraints = false
        replaceButton.addTarget(self, action: #selector(videoTapped), for: .touchUpInside)
        videoWrap.addSubview(replaceButton)

        configureTitleField()
        configureDescriptionView()
        stack.addArrangedSubview(videoWrap)
        stack.addArrangedSubview(formSection(title: "Video Title", content: titleField))
        stack.addArrangedSubview(formSection(title: "Video Description", content: detailView))
        stack.addArrangedSubview(tagsSection())
        let spacer = UIView()
        spacer.translatesAutoresizingMaskIntoConstraints = false
        spacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 118).isActive = true
        stack.addArrangedSubview(spacer)
        publishButton.addTarget(self, action: #selector(publishTapped), for: .touchUpInside)
        view.addSubview(publishButton)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 22),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -22),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 24),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -120),
            videoWrap.heightAnchor.constraint(equalToConstant: 308),
            videoButton.leadingAnchor.constraint(equalTo: videoWrap.leadingAnchor),
            videoButton.trailingAnchor.constraint(equalTo: videoWrap.trailingAnchor),
            videoButton.topAnchor.constraint(equalTo: videoWrap.topAnchor),
            videoButton.heightAnchor.constraint(equalToConstant: 230),
            previewImageView.leadingAnchor.constraint(equalTo: videoButton.leadingAnchor),
            previewImageView.trailingAnchor.constraint(equalTo: videoButton.trailingAnchor),
            previewImageView.topAnchor.constraint(equalTo: videoButton.topAnchor),
            previewImageView.bottomAnchor.constraint(equalTo: videoButton.bottomAnchor),
            plus.centerXAnchor.constraint(equalTo: videoButton.centerXAnchor),
            plus.centerYAnchor.constraint(equalTo: videoButton.centerYAnchor),
            playBadge.centerXAnchor.constraint(equalTo: videoButton.centerXAnchor),
            playBadge.centerYAnchor.constraint(equalTo: videoButton.centerYAnchor),
            playBadge.widthAnchor.constraint(equalToConstant: 84),
            playBadge.heightAnchor.constraint(equalToConstant: 84),
            playIcon.centerXAnchor.constraint(equalTo: playBadge.centerXAnchor, constant: 2),
            playIcon.centerYAnchor.constraint(equalTo: playBadge.centerYAnchor),
            playIcon.widthAnchor.constraint(equalToConstant: 28),
            playIcon.heightAnchor.constraint(equalToConstant: 28),
            durationLabel.trailingAnchor.constraint(equalTo: videoButton.trailingAnchor, constant: -18),
            durationLabel.bottomAnchor.constraint(equalTo: videoButton.bottomAnchor, constant: -18),
            durationLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 76),
            durationLabel.heightAnchor.constraint(equalToConstant: 36),
            replaceButton.centerXAnchor.constraint(equalTo: videoWrap.centerXAnchor),
            replaceButton.topAnchor.constraint(equalTo: videoButton.bottomAnchor, constant: 18),
            titleField.heightAnchor.constraint(equalToConstant: 58),
            detailView.heightAnchor.constraint(equalToConstant: 116),
            publishButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            publishButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22),
            publishButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -26),
            publishButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func configureTitleField() {
        titleField.placeholder = "Name Your Video..."
        titleField.textColor = .white
        titleField.font = PonllyFonts.body(size: 16, weight: .medium)
        titleField.backgroundColor = PonllyPalette.panel
        titleField.layer.cornerRadius = 18
        titleField.layer.borderWidth = 1
        titleField.layer.borderColor = PonllyPalette.line.cgColor
        titleField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 1))
        titleField.leftViewMode = .always
        titleField.delegate = self
        titleField.addTarget(self, action: #selector(titleDidChange), for: .editingChanged)
    }

    private func configureDescriptionView() {
        detailView.text = descriptionPlaceholder
        detailView.textColor = PonllyPalette.muted
        detailView.font = PonllyFonts.body(size: 16, weight: .medium)
        detailView.backgroundColor = PonllyPalette.panel
        detailView.layer.cornerRadius = 18
        detailView.layer.borderWidth = 1
        detailView.layer.borderColor = PonllyPalette.line.cgColor
        detailView.textContainerInset = UIEdgeInsets(top: 18, left: 14, bottom: 18, right: 14)
        detailView.delegate = self
    }

    private func formSection(title: String, content: UIView) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        let label = UILabel()
        label.text = title
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(content)
        return stack
    }

    private func tagsSection() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 12
        let label = UILabel()
        label.text = "Hashtags"
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        outer.addArrangedSubview(label)
        let tagRow = UIStackView()
        tagRow.axis = .horizontal
        tagRow.spacing = 10
        tagRow.distribution = .fillEqually
        draft.tags.forEach { tagRow.addArrangedSubview(tagPill($0)) }
        outer.addArrangedSubview(tagRow)
        let addTag = UIButton(type: .system)
        addTag.setTitle("+ Add Tag", for: .normal)
        addTag.setTitleColor(PonllyPalette.pink, for: .normal)
        addTag.titleLabel?.font = PonllyFonts.display(size: 14)
        addTag.layer.cornerRadius = 14
        addTag.layer.borderWidth = 1
        addTag.layer.borderColor = PonllyPalette.pink.cgColor
        addTag.heightAnchor.constraint(equalToConstant: 48).isActive = true
        addTag.widthAnchor.constraint(equalToConstant: 154).isActive = true
        addTag.addTarget(self, action: #selector(addTagTapped), for: .touchUpInside)
        outer.addArrangedSubview(addTag)
        return outer
    }

    private func tagPill(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.cyan
        label.textAlignment = .center
        label.font = PonllyFonts.mono(size: 14)
        label.backgroundColor = PonllyPalette.panel
        label.layer.cornerRadius = 12
        label.layer.borderWidth = 1
        label.layer.borderColor = PonllyPalette.line.cgColor
        label.clipsToBounds = true
        label.heightAnchor.constraint(equalToConstant: 46).isActive = true
        label.widthAnchor.constraint(greaterThanOrEqualToConstant: 96).isActive = true
        return label
    }

    private func refreshVideoState() {
        previewImageView.image = draft.thumbnail
        let hasVideo = draft.sourceURL != nil
        previewImageView.isHidden = !hasVideo
        playBadge.isHidden = !hasVideo
        durationLabel.isHidden = !hasVideo
        durationLabel.text = draft.durationText
        replaceButton.setTitle(hasVideo ? "↻  Replace Video" : "+  Upload Video", for: .normal)
        videoButton.viewWithTag(1207)?.isHidden = hasVideo
    }

    private func updatePublishState() {
        let hasTitle = !(titleField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        let ready = hasTitle && draft.sourceURL != nil
        publishButton.isEnabled = ready
        publishButton.alpha = 1
        publishButton.setTitleColor(ready ? .black : UIColor.black.withAlphaComponent(0.45), for: .normal)
    }

    @objc private func videoTapped() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.mediaTypes = ["public.movie"]
        picker.videoQuality = .typeHigh
        picker.delegate = self
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let url = info[.mediaURL] as? URL {
            draft.sourceURL = url
            draft.thumbnail = thumbnail(for: url)
            draft.durationText = durationText(for: url)
        }
        refreshVideoState()
        updatePublishState()
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    private func thumbnail(for url: URL) -> UIImage? {
        let asset = AVURLAsset(url: url)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        if let image = try? generator.copyCGImage(at: CMTime(seconds: 0.5, preferredTimescale: 600), actualTime: nil) {
            return UIImage(cgImage: image)
        }
        return UIImage(named: "graffiti_challenge_wall_05")
    }

    private func durationText(for url: URL) -> String {
        let seconds = Int(CMTimeGetSeconds(AVURLAsset(url: url).duration))
        guard seconds > 0 else { return "0:00" }
        return String(format: "%d:%02d", seconds / 60, seconds % 60)
    }

    @objc private func titleDidChange() {
        draft.title = titleField.text ?? ""
        updatePublishState()
    }

    @objc private func addTagTapped() {
        ponllyShowToast("Tag added")
    }

    @objc private func publishTapped() {
        view.endEditing(true)
        publishButton.isEnabled = false
        ponllyShowToast("Publishing video...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.publishButton.isEnabled = true
            self.ponllyShowToast("Video published")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == descriptionPlaceholder {
            textView.text = ""
            textView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            textView.text = descriptionPlaceholder
            textView.textColor = PonllyPalette.muted
        }
        draft.details = textView.text == descriptionPlaceholder ? "" : textView.text
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bottom = max(frame.height - view.safeAreaInsets.bottom, 0) + 90
        scrollView.contentInset.bottom = bottom
        scrollView.verticalScrollIndicatorInsets.bottom = bottom
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 120
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
