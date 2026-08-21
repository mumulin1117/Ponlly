import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyEditProfileViewController: UIViewController, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let scrollView = UIScrollView()
    private let nameField = UITextField()
    private let bioView = UITextView()
    private let countLabel = UILabel()
    private let coverImageView = UIImageView()
    private let avatarImageView = UIImageView()
    private var pendingAvatarImage: UIImage?
    private var pendingCoverImage: UIImage?
    private enum ImageTarget {
        case avatar
        case cover
    }
    private var imageTarget: ImageTarget = .avatar
    private var selectedTags = Set(PonllyDataCenter.currentProfileInterests)
    private let allTags = ["Wildstyle", "Chrome Letters", "Street Art", "Characters", "Stencil", "Throw-Ups", "Murals", "Calligraphy"]
    private var tagButtons: [UIButton] = []

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
        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 22
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        let header = profileHeader()
        stack.addArrangedSubview(header)

        let user = PonllyDataCenter.currentUser()
        configureField(nameField, text: user.name)
        bioView.text = user.bio
        bioView.textColor = .white
        bioView.font = PonllyFonts.body(size: 15, weight: .regular)
        bioView.backgroundColor = PonllyPalette.panel
        bioView.layer.cornerRadius = 16
        bioView.layer.borderWidth = 1
        bioView.layer.borderColor = PonllyPalette.line.cgColor
        bioView.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 16, right: 14)
        bioView.delegate = self
        bioView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        updateCountLabel()

        let formStack = UIStackView()
        formStack.axis = .vertical
        formStack.spacing = 20
        formStack.translatesAutoresizingMaskIntoConstraints = false
        formStack.addArrangedSubview(formSection("Username", nameField))
        formStack.addArrangedSubview(bioSection())
        formStack.addArrangedSubview(tagsSection())
        let formWrap = UIView()
        formWrap.addSubview(formStack)
        stack.addArrangedSubview(formWrap)

        let bottomBar = UIView()
        bottomBar.backgroundColor = PonllyPalette.background
        bottomBar.layer.borderWidth = 1
        bottomBar.layer.borderColor = PonllyPalette.line.cgColor
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomBar)
        let save = PonllyNeonButton(title: "Save Changes")
        save.addTarget(self, action: #selector(saveTapped), for: .touchUpInside)
        bottomBar.addSubview(save)

        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 292),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomBar.topAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -28),
            formStack.leadingAnchor.constraint(equalTo: formWrap.leadingAnchor, constant: 20),
            formStack.trailingAnchor.constraint(equalTo: formWrap.trailingAnchor, constant: -20),
            formStack.topAnchor.constraint(equalTo: formWrap.topAnchor),
            formStack.bottomAnchor.constraint(equalTo: formWrap.bottomAnchor),
            bottomBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomBar.heightAnchor.constraint(equalToConstant: 112),
            save.leadingAnchor.constraint(equalTo: bottomBar.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            save.trailingAnchor.constraint(equalTo: bottomBar.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            save.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 22),
            save.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func profileHeader() -> UIView {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        coverImageView.image = PonllyDataCenter.currentCoverImage() ?? UIImage(named: "graffiti_challenge_wall_03")
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.clipsToBounds = true
        coverImageView.alpha = 0.78
        coverImageView.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(coverImageView)
        let shade = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.2), PonllyPalette.background], start: CGPoint(x: 0.5, y: 0), end: CGPoint(x: 0.5, y: 1))
        header.addSubview(shade)
        shade.pinToEdges(of: header)

        let back = roundHeaderButton("chevron.left", action: #selector(backTapped))
        header.addSubview(back)
        let title = UILabel()
        title.text = "Edit Profile"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 24)
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)
        let changeCover = UIButton(type: .system)
        changeCover.setTitle("Change Cover", for: .normal)
        changeCover.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        changeCover.tintColor = .white
        changeCover.setTitleColor(.white, for: .normal)
        changeCover.titleLabel?.font = PonllyFonts.body(size: 13, weight: .bold)
        changeCover.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        changeCover.layer.cornerRadius = 18
        changeCover.translatesAutoresizingMaskIntoConstraints = false
        changeCover.addTarget(self, action: #selector(coverTapped), for: .touchUpInside)
        header.addSubview(changeCover)

        avatarImageView.image = PonllyDataCenter.avatarImage(for: PonllyDataCenter.currentUser())
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 48
        avatarImageView.layer.borderWidth = 4
        avatarImageView.layer.borderColor = PonllyPalette.pink.cgColor
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(avatarImageView)
        let camera = UIButton(type: .system)
        camera.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        camera.tintColor = .white
        camera.backgroundColor = PonllyPalette.pink
        camera.layer.cornerRadius = 20
        camera.translatesAutoresizingMaskIntoConstraints = false
        camera.addTarget(self, action: #selector(avatarTapped), for: .touchUpInside)
        header.addSubview(camera)

        NSLayoutConstraint.activate([
            coverImageView.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            coverImageView.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            coverImageView.topAnchor.constraint(equalTo: header.topAnchor),
            coverImageView.heightAnchor.constraint(equalToConstant: 232),
            back.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 20),
            back.topAnchor.constraint(equalTo: header.topAnchor, constant: 56),
            title.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            changeCover.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -16),
            changeCover.bottomAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: -16),
            changeCover.widthAnchor.constraint(equalToConstant: 132),
            changeCover.heightAnchor.constraint(equalToConstant: 40),
            avatarImageView.centerXAnchor.constraint(equalTo: header.centerXAnchor),
            avatarImageView.centerYAnchor.constraint(equalTo: coverImageView.bottomAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 96),
            avatarImageView.heightAnchor.constraint(equalToConstant: 96),
            camera.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 2),
            camera.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 2),
            camera.widthAnchor.constraint(equalToConstant: 40),
            camera.heightAnchor.constraint(equalToConstant: 40)
        ])
        return header
    }

    private func configureField(_ field: UITextField, text: String) {
        field.text = text
        field.textColor = .white
        field.font = PonllyFonts.body(size: 15, weight: .regular)
        field.backgroundColor = PonllyPalette.panel
        field.layer.cornerRadius = 16
        field.layer.borderWidth = 1
        field.layer.borderColor = PonllyPalette.line.cgColor
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        field.leftViewMode = .always
        field.heightAnchor.constraint(equalToConstant: 58).isActive = true
    }

    private func formSection(_ title: String, _ content: UIView) -> UIStackView {
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

    private func bioSection() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let row = UIStackView()
        row.axis = .horizontal
        let label = UILabel()
        label.text = "Bio"
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        countLabel.textColor = PonllyPalette.muted
        countLabel.font = PonllyFonts.mono(size: 12)
        row.addArrangedSubview(label)
        row.addArrangedSubview(UIView())
        row.addArrangedSubview(countLabel)
        outer.addArrangedSubview(row)
        outer.addArrangedSubview(bioView)
        return outer
    }

    private func tagsSection() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 12
        let title = UILabel()
        title.text = "Interest Tags"
        title.textColor = PonllyPalette.muted
        title.font = PonllyFonts.display(size: 14)
        let hint = UILabel()
        hint.text = "Select Up To 5"
        hint.textColor = PonllyPalette.muted
        hint.font = PonllyFonts.body(size: 13, weight: .regular)
        outer.addArrangedSubview(title)
        outer.addArrangedSubview(hint)
        let rows = [["Wildstyle", "Chrome Letters", "Street Art"], ["Characters", "Stencil", "Throw-Ups", "Murals"], ["Calligraphy"]]
        for tags in rows {
            let row = UIStackView()
            row.axis = .horizontal
            row.alignment = .leading
            row.spacing = 8
            tags.forEach { tag in
                let button = UIButton(type: .system)
                button.setTitle(tag, for: .normal)
                button.titleLabel?.font = PonllyFonts.body(size: 13, weight: .medium)
                button.layer.cornerRadius = 18
                button.layer.borderWidth = 1
                button.heightAnchor.constraint(equalToConstant: 40).isActive = true
                button.widthAnchor.constraint(greaterThanOrEqualToConstant: tag.count > 9 ? 128 : 92).isActive = true
                button.addTarget(self, action: #selector(tagTapped(_:)), for: .touchUpInside)
                tagButtons.append(button)
                row.addArrangedSubview(button)
            }
            row.addArrangedSubview(UIView())
            outer.addArrangedSubview(row)
        }
        refreshTags()
        return outer
    }

    private func roundHeaderButton(_ symbol: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        button.layer.cornerRadius = 30
        button.layer.borderWidth = 1
        button.layer.borderColor = PonllyPalette.line.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: action, for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 60).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return button
    }

    private func refreshTags() {
        tagButtons.forEach { button in
            let text = button.title(for: .normal) ?? ""
            let selected = selectedTags.contains(text)
            button.backgroundColor = selected ? PonllyPalette.pink.withAlphaComponent(0.14) : PonllyPalette.panel
            button.setTitleColor(selected ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func updateCountLabel() {
        countLabel.text = "\(min(bioView.text.count, 200))/200"
    }

    func textViewDidChange(_ textView: UITextView) {
        if textView.text.count > 200 {
            textView.text = String(textView.text.prefix(200))
        }
        updateCountLabel()
    }

    @objc private func tagTapped(_ sender: UIButton) {
        guard let tag = sender.title(for: .normal) else { return }
        if selectedTags.contains(tag) {
            selectedTags.remove(tag)
        } else if selectedTags.count < 5 {
            selectedTags.insert(tag)
        } else {
            ponllyShowNotice("Choose up to five tags", style: .info)
        }
        refreshTags()
    }

    @objc private func saveTapped() {
        let name = nameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        guard !name.isEmpty else {
            ponllyShowNotice("Username is required", style: .failure)
            return
        }
        ponllyShowNotice("Saving profile...", style: .loading, autoDismissAfter: 0.7)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            PonllyDataCenter.updateCurrentProfile(name: name, bio: self.bioView.text, interests: Array(self.selectedTags))
            PonllyDataCenter.saveCurrentProfileImages(avatar: self.pendingAvatarImage, cover: self.pendingCoverImage)
            self.ponllyShowNotice("Profile updated", style: .success)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    @objc private func avatarTapped() {
        imageTarget = .avatar
        showImagePicker()
    }

    @objc private func coverTapped() {
        imageTarget = .cover
        showImagePicker()
    }

    private func showImagePicker() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let image = (info[.editedImage] as? UIImage) ?? (info[.originalImage] as? UIImage)
        if let image {
            switch imageTarget {
            case .avatar:
                pendingAvatarImage = image
                avatarImageView.image = image
            case .cover:
                pendingCoverImage = image
                coverImageView.image = image
            }
        }
        picker.dismiss(animated: true) {
            self.ponllyShowNotice("Image selected", style: .success)
        }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bottom = max(frame.height - view.safeAreaInsets.bottom, 0) + 18
        scrollView.contentInset.bottom = bottom
        scrollView.verticalScrollIndicatorInsets.bottom = bottom
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
