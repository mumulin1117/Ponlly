import UIKit

final class PonllyCreateProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    private let email: String
    private let password: String
    private let completion: () -> Void
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let backgroundImageView = UIImageView(image: UIImage(named: "voice_room_bg_08"))
    private let avatarButton = UIButton(type: .system)
    private let avatarImageView = UIImageView()
    private let nicknameField = UITextField()
    private let counterLabel = UILabel()
    private let chipsWrap = UIView()
    private let completeButton = PonllyNeonButton(title: "Complete Profile")
    private var chipButtons: [UIButton] = []
    private var selectedInterests = Set(["Graffiti", "Wildstyle", "Street Art"])
    private var selectedAvatar: UIImage?
    private let interests = ["Graffiti", "Wildstyle", "Street Art", "Mural", "Sketch", "Character Art", "Hip-Hop Culture", "Battle", "Street Photography", "Digital Art"]

    init(email: String, password: String, completion: @escaping () -> Void) {
        self.email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        self.password = password
        self.completion = completion
        super.init(nibName: nil, bundle: nil)
        hidesBottomBarWhenPushed = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        setupUI()
        updateCounter()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func setupUI() {
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.48
        view.addSubview(backgroundImageView)
        backgroundImageView.pinToEdges(of: view)

        let veil = PonllyGradientView(
            colors: [
                UIColor.black.withAlphaComponent(0.42),
                UIColor(red: 4/255, green: 8/255, blue: 13/255, alpha: 0.62),
                UIColor.black.withAlphaComponent(0.9)
            ],
            start: CGPoint(x: 0.5, y: 0),
            end: CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        backButton.tintColor = .white
        backButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        backButton.layer.cornerRadius = 14
        backButton.layer.borderWidth = 1
        backButton.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        contentView.addSubview(backButton)

        let title = UILabel()
        title.text = "Create Profile"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(title)

        avatarButton.backgroundColor = UIColor.black.withAlphaComponent(0.66)
        avatarButton.layer.cornerRadius = 55
        avatarButton.layer.borderWidth = 2
        avatarButton.layer.borderColor = PonllyPalette.cyan.cgColor
        avatarButton.layer.shadowColor = PonllyPalette.cyan.cgColor
        avatarButton.layer.shadowOpacity = 0.32
        avatarButton.layer.shadowRadius = 18
        avatarButton.translatesAutoresizingMaskIntoConstraints = false
        avatarButton.addTarget(self, action: #selector(avatarTapped), for: .touchUpInside)
        contentView.addSubview(avatarButton)

        avatarImageView.image = UIImage(systemName: "camera")
        avatarImageView.tintColor = .white
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarButton.addSubview(avatarImageView)

        let uploadLabel = UILabel()
        uploadLabel.text = "TAP TO UPLOAD AVATAR"
        uploadLabel.textColor = PonllyPalette.cyan
        uploadLabel.font = PonllyFonts.mono(size: 11)
        uploadLabel.textAlignment = .center
        uploadLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(uploadLabel)

        let nicknameLabel = sectionLabel("Nickname")
        contentView.addSubview(nicknameLabel)
        configureNicknameField()
        contentView.addSubview(nicknameField)
        contentView.addSubview(counterLabel)

        let interestsLabel = UILabel()
        interestsLabel.text = "Graffiti Interests"
        interestsLabel.textColor = .white
        interestsLabel.font = PonllyFonts.display(size: 13)
        interestsLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(interestsLabel)

        chipsWrap.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(chipsWrap)
        buildChips()

        completeButton.addTarget(self, action: #selector(completeTapped), for: .touchUpInside)
        completeButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(completeButton)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            contentView.heightAnchor.constraint(greaterThanOrEqualTo: scrollView.frameLayoutGuide.heightAnchor),

            backButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 16),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            title.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),

            avatarButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            avatarButton.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 32),
            avatarButton.widthAnchor.constraint(equalToConstant: 110),
            avatarButton.heightAnchor.constraint(equalToConstant: 110),
            avatarImageView.centerXAnchor.constraint(equalTo: avatarButton.centerXAnchor),
            avatarImageView.centerYAnchor.constraint(equalTo: avatarButton.centerYAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
            avatarImageView.heightAnchor.constraint(equalToConstant: 80),
            uploadLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            uploadLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            uploadLabel.topAnchor.constraint(equalTo: avatarButton.bottomAnchor, constant: 16),

            nicknameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            nicknameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            nicknameLabel.topAnchor.constraint(equalTo: uploadLabel.bottomAnchor, constant: 26),
            nicknameField.leadingAnchor.constraint(equalTo: nicknameLabel.leadingAnchor),
            nicknameField.trailingAnchor.constraint(equalTo: nicknameLabel.trailingAnchor),
            nicknameField.topAnchor.constraint(equalTo: nicknameLabel.bottomAnchor, constant: 8),
            nicknameField.heightAnchor.constraint(equalToConstant: 56),
            counterLabel.leadingAnchor.constraint(equalTo: nicknameLabel.leadingAnchor),
            counterLabel.topAnchor.constraint(equalTo: nicknameField.bottomAnchor, constant: 9),

            interestsLabel.leadingAnchor.constraint(equalTo: nicknameLabel.leadingAnchor),
            interestsLabel.trailingAnchor.constraint(equalTo: nicknameLabel.trailingAnchor),
            interestsLabel.topAnchor.constraint(equalTo: counterLabel.bottomAnchor, constant: 24),
            chipsWrap.leadingAnchor.constraint(equalTo: nicknameLabel.leadingAnchor),
            chipsWrap.trailingAnchor.constraint(equalTo: nicknameLabel.trailingAnchor),
            chipsWrap.topAnchor.constraint(equalTo: interestsLabel.bottomAnchor, constant: 12),
            chipsWrap.heightAnchor.constraint(equalToConstant: 128),

            completeButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            completeButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            completeButton.topAnchor.constraint(equalTo: chipsWrap.bottomAnchor, constant: 46),
            completeButton.heightAnchor.constraint(equalToConstant: 62),
            completeButton.bottomAnchor.constraint(lessThanOrEqualTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -28)
        ])
    }

    private func sectionLabel(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.mono(size: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }

    private func configureNicknameField() {
        nicknameField.text = "spray_king"
        nicknameField.textColor = .white
        nicknameField.font = PonllyFonts.body(size: 15)
        nicknameField.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        nicknameField.layer.cornerRadius = 14
        nicknameField.layer.borderWidth = 1.5
        nicknameField.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        nicknameField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        nicknameField.leftViewMode = .always
        nicknameField.delegate = self
        nicknameField.addTarget(self, action: #selector(nicknameChanged), for: .editingChanged)
        let edit = UIImageView(image: UIImage(systemName: "pencil"))
        edit.tintColor = PonllyPalette.muted
        edit.contentMode = .scaleAspectFit
        edit.frame = CGRect(x: 0, y: 0, width: 32, height: 18)
        nicknameField.rightView = edit
        nicknameField.rightViewMode = .always

        counterLabel.textColor = PonllyPalette.muted
        counterLabel.font = PonllyFonts.body(size: 12)
        counterLabel.translatesAutoresizingMaskIntoConstraints = false
    }

    private func buildChips() {
        let rows = [UIStackView(), UIStackView(), UIStackView()]
        rows.forEach {
            $0.axis = .horizontal
            $0.alignment = .leading
            $0.distribution = .fillEqually
            $0.spacing = 8
            $0.translatesAutoresizingMaskIntoConstraints = false
            chipsWrap.addSubview($0)
        }

        for (index, interest) in interests.enumerated() {
            let button = UIButton(type: .system)
            button.setTitle(interest, for: .normal)
            button.titleLabel?.font = PonllyFonts.body(size: 13, weight: selectedInterests.contains(interest) ? .bold : .medium)
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.minimumScaleFactor = 0.58
            var configuration = UIButton.Configuration.plain()
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 9, leading: 8, bottom: 9, trailing: 8)
            button.configuration = configuration
            button.layer.cornerRadius = 14
            button.layer.borderWidth = 1
            button.addTarget(self, action: #selector(chipTapped(_:)), for: .touchUpInside)
            chipButtons.append(button)
            rows[min(index / 3, 2)].addArrangedSubview(button)
        }
        refreshChips()

        NSLayoutConstraint.activate([
            rows[0].leadingAnchor.constraint(equalTo: chipsWrap.leadingAnchor),
            rows[0].trailingAnchor.constraint(lessThanOrEqualTo: chipsWrap.trailingAnchor),
            rows[0].topAnchor.constraint(equalTo: chipsWrap.topAnchor),
            rows[0].heightAnchor.constraint(equalToConstant: 36),
            rows[1].leadingAnchor.constraint(equalTo: chipsWrap.leadingAnchor),
            rows[1].trailingAnchor.constraint(lessThanOrEqualTo: chipsWrap.trailingAnchor),
            rows[1].topAnchor.constraint(equalTo: rows[0].bottomAnchor, constant: 10),
            rows[1].heightAnchor.constraint(equalToConstant: 36),
            rows[2].leadingAnchor.constraint(equalTo: chipsWrap.leadingAnchor),
            rows[2].trailingAnchor.constraint(lessThanOrEqualTo: chipsWrap.trailingAnchor),
            rows[2].topAnchor.constraint(equalTo: rows[1].bottomAnchor, constant: 10),
            rows[2].heightAnchor.constraint(equalToConstant: 36)
        ])
    }

    private func refreshChips() {
        chipButtons.forEach { button in
            let title = button.currentTitle ?? ""
            let selected = selectedInterests.contains(title)
            var configuration = button.configuration ?? .plain()
            configuration.title = title
            configuration.baseForegroundColor = selected ? PonllyPalette.pink : .white
            button.configuration = configuration
            button.titleLabel?.font = PonllyFonts.body(size: 13, weight: selected ? .bold : .medium)
            button.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func updateCounter() {
        counterLabel.text = "2-20 characters"
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func avatarTapped() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true)
    }

    @objc private func nicknameChanged() {
        updateCounter()
    }

    @objc private func chipTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        if selectedInterests.contains(title) {
            selectedInterests.remove(title)
        } else if selectedInterests.count < 5 {
            selectedInterests.insert(title)
        } else {
            ponllyShowNotice("Choose up to five interests", style: .info)
        }
        refreshChips()
    }

    @objc private func completeTapped() {
        let name = nicknameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        guard (2...20).contains(name.count) else {
            ponllyShowNotice("Nickname needs 2-20 characters", style: .failure)
            return
        }
        guard !selectedInterests.isEmpty else {
            ponllyShowNotice("Choose at least one interest", style: .failure)
            return
        }
        completeButton.isEnabled = false
        ponllyShowNotice("Building profile...", style: .loading, autoDismissAfter: 0.7)
        PonllyAuthCenter.shared.createAccount(email: email, password: password) { success, message in
            self.completeButton.isEnabled = true
            guard success else {
                self.ponllyShowNotice(message ?? "Profile could not be completed", style: .failure)
                return
            }
            PonllyDataCenter.updateCurrentProfile(
                name: name,
                bio: "Fresh wall hunter. Always chasing clean lines, color rhythm, and late-night concrete.",
                interests: Array(self.selectedInterests)
            )
            PonllyDataCenter.saveCurrentProfileImages(avatar: self.selectedAvatar, cover: nil)
            let done = PonllyRegistrationCompleteViewController(userName: name, avatar: self.selectedAvatar, completion: self.completion)
            self.navigationController?.pushViewController(done, animated: true)
        }
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard textField === nicknameField else { return true }
        let current = textField.text ?? ""
        guard let textRange = Range(range, in: current) else { return true }
        return current.replacingCharacters(in: textRange, with: string).count <= 20
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        let image = (info[.editedImage] ?? info[.originalImage]) as? UIImage
        selectedAvatar = image
        avatarImageView.image = image
        avatarImageView.tintColor = nil
        dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
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
