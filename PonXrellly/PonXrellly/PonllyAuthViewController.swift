import UIKit

final class PonllyAuthViewController: UIViewController {
    private enum AuthStep {
        case landing
        case login
        case create
    }

    private let completion: () -> Void
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let backgroundImageView = UIImageView(image: UIImage(named: "voice_room_bg_08"))
    private let headerBackButton = UIButton(type: .system)
    private let headerTitleLabel = UILabel()
    private let heroView = UIView()
    private let loginButton = UIButton(type: .system)
    private let createButton = UIButton(type: .system)
    private let agreeButton = UIButton(type: .system)
    private let formStack = UIStackView()
    private let formBrandRow = UIStackView()
    private let formHeadlineLabel = UILabel()
    private let formSubtitleLabel = UILabel()
    private let emailField = UITextField()
    private let passwordField = UITextField()
    private let passwordEyeButton = UIButton(type: .system)
    private let errorLabel = UILabel()
    private let submitButton = PonllyNeonButton(title: "Login")
    private var step: AuthStep = .landing
    private var agreed = PonllyAuthCenter.shared.hasConsent {
        didSet {
            PonllyAuthCenter.shared.hasConsent = agreed
            refreshAgreementUI()
        }
    }

    init(completion: @escaping () -> Void) {
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
        refreshAgreementUI()
        showLanding()
        if !PonllyAuthCenter.shared.hasConsent {
            presentEula()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    private func setupUI() {
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.5
        view.addSubview(backgroundImageView)
        backgroundImageView.pinToEdges(of: view)

        let veil = PonllyGradientView(
            colors: [
                UIColor.black.withAlphaComponent(0.3),
                UIColor(red: 3/255, green: 7/255, blue: 11/255, alpha: 0.58),
                UIColor.black.withAlphaComponent(0.9)
            ],
            start: CGPoint(x: 0.5, y: 0),
            end: CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        scrollView.keyboardDismissMode = .onDrag
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)

        configureHeader()
        contentView.addSubview(headerBackButton)
        contentView.addSubview(headerTitleLabel)

        setupHero()
        contentView.addSubview(heroView)

        configurePrimaryButton(loginButton, title: "Login with Email", symbol: "envelope.fill")
        loginButton.addTarget(self, action: #selector(loginChoiceTapped), for: .touchUpInside)
        contentView.addSubview(loginButton)

        configureCreateButton()
        createButton.addTarget(self, action: #selector(createChoiceTapped), for: .touchUpInside)
        contentView.addSubview(createButton)

        let agreement = agreementRow()
        contentView.addSubview(agreement)

        setupFormStack()
        contentView.addSubview(formStack)

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

            headerBackButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            headerBackButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 16),
            headerBackButton.widthAnchor.constraint(equalToConstant: 40),
            headerBackButton.heightAnchor.constraint(equalToConstant: 40),
            headerTitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            headerTitleLabel.centerYAnchor.constraint(equalTo: headerBackButton.centerYAnchor),

            heroView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            heroView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            heroView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 40),
            heroView.heightAnchor.constraint(equalToConstant: 250),

            loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            loginButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            loginButton.bottomAnchor.constraint(equalTo: createButton.topAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 62),
            createButton.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            createButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            createButton.bottomAnchor.constraint(equalTo: agreement.topAnchor, constant: -24),
            createButton.heightAnchor.constraint(equalToConstant: 60),
            agreement.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            agreement.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            agreement.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -22),

            formStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            formStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -24),
            formStack.topAnchor.constraint(equalTo: headerBackButton.bottomAnchor, constant: 40),
            formStack.bottomAnchor.constraint(lessThanOrEqualTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -24)
        ])
    }

    private func configureHeader() {
        headerBackButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        headerBackButton.tintColor = .white
        headerBackButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.78)
        headerBackButton.layer.cornerRadius = 14
        headerBackButton.layer.borderWidth = 1
        headerBackButton.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        headerBackButton.translatesAutoresizingMaskIntoConstraints = false
        headerBackButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)

        headerTitleLabel.textColor = .white
        headerTitleLabel.font = PonllyFonts.display(size: 16)
        headerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }

    private func setupHero() {
        heroView.translatesAutoresizingMaskIntoConstraints = false

        let iconWrap = UIView()
        iconWrap.backgroundColor = .black
        iconWrap.layer.cornerRadius = 34
        iconWrap.layer.shadowColor = PonllyPalette.cyan.cgColor
        iconWrap.layer.shadowOpacity = 0.24
        iconWrap.layer.shadowRadius = 26
        iconWrap.translatesAutoresizingMaskIntoConstraints = false
        heroView.addSubview(iconWrap)

        let icon = UIImageView(image: UIImage(named: "unghishdb"))
        icon.contentMode = .scaleAspectFill
        icon.clipsToBounds = true
        icon.layer.cornerRadius = 34
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconWrap.addSubview(icon)

        let title = UILabel()
        title.text = "Ponlly"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 44)
        title.layer.shadowColor = PonllyPalette.pink.cgColor
        title.layer.shadowOpacity = 0.38
        title.layer.shadowRadius = 12
        title.layer.shadowOffset = CGSize(width: 0, height: 4)
        title.translatesAutoresizingMaskIntoConstraints = false
        heroView.addSubview(title)

        let tagline = UILabel()
        tagline.text = "CREATE.  BATTLE.  CONNECT."
        tagline.textColor = PonllyPalette.cyan
        tagline.textAlignment = .center
        tagline.font = PonllyFonts.mono(size: 13)
        tagline.translatesAutoresizingMaskIntoConstraints = false
        heroView.addSubview(tagline)

        NSLayoutConstraint.activate([
            iconWrap.centerXAnchor.constraint(equalTo: heroView.centerXAnchor),
            iconWrap.topAnchor.constraint(equalTo: heroView.topAnchor),
            iconWrap.widthAnchor.constraint(equalToConstant: 120),
            iconWrap.heightAnchor.constraint(equalToConstant: 120),
            icon.leadingAnchor.constraint(equalTo: iconWrap.leadingAnchor),
            icon.trailingAnchor.constraint(equalTo: iconWrap.trailingAnchor),
            icon.topAnchor.constraint(equalTo: iconWrap.topAnchor),
            icon.bottomAnchor.constraint(equalTo: iconWrap.bottomAnchor),
            title.leadingAnchor.constraint(equalTo: heroView.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: heroView.trailingAnchor),
            title.topAnchor.constraint(equalTo: iconWrap.bottomAnchor, constant: 28),
            title.heightAnchor.constraint(equalToConstant: 55),
            tagline.leadingAnchor.constraint(equalTo: heroView.leadingAnchor),
            tagline.trailingAnchor.constraint(equalTo: heroView.trailingAnchor),
            tagline.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10)
        ])
    }

    private func setupFormStack() {
        formStack.axis = .vertical
        formStack.spacing = 12
        formStack.translatesAutoresizingMaskIntoConstraints = false
        formStack.isHidden = true

        configureFormBrand()
        formStack.addArrangedSubview(formBrandRow)
        formStack.setCustomSpacing(8, after: formBrandRow)

        formHeadlineLabel.textColor = .white
        formHeadlineLabel.font = PonllyFonts.display(size: 28)
        formHeadlineLabel.numberOfLines = 0
        formStack.addArrangedSubview(formHeadlineLabel)

        formSubtitleLabel.textColor = PonllyPalette.muted
        formSubtitleLabel.font = PonllyFonts.body(size: 14)
        formSubtitleLabel.numberOfLines = 0
        formStack.addArrangedSubview(formSubtitleLabel)
        formStack.setCustomSpacing(28, after: formSubtitleLabel)

        formStack.addArrangedSubview(labeledField(title: "Email", field: emailField))
        formStack.addArrangedSubview(labeledField(title: "Password", field: passwordField))

        errorLabel.textColor = PonllyPalette.pink
        errorLabel.font = PonllyFonts.body(size: 11, weight: .semibold)
        errorLabel.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.15)
        errorLabel.layer.cornerRadius = 6
        errorLabel.clipsToBounds = true
        errorLabel.isHidden = true
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        formStack.addArrangedSubview(errorLabel)

        let spacer = UIView()
        spacer.translatesAutoresizingMaskIntoConstraints = false
        formStack.addArrangedSubview(spacer)
        submitButton.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        formStack.addArrangedSubview(submitButton)

        configure(field: emailField, placeholder: "vandal_tagger")
        configure(field: passwordField, placeholder: "Password")
        passwordField.isSecureTextEntry = true
        passwordEyeButton.setImage(UIImage(systemName: "eye"), for: .normal)
        passwordEyeButton.tintColor = PonllyPalette.muted
        passwordEyeButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        passwordField.rightView = passwordEyeButton
        passwordField.rightViewMode = .always

        NSLayoutConstraint.activate([
            formBrandRow.heightAnchor.constraint(equalToConstant: 60),
            emailField.heightAnchor.constraint(equalToConstant: 56),
            passwordField.heightAnchor.constraint(equalToConstant: 56),
            errorLabel.heightAnchor.constraint(equalToConstant: 26),
            spacer.heightAnchor.constraint(greaterThanOrEqualToConstant: 70),
            submitButton.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    private func configureFormBrand() {
        formBrandRow.axis = .horizontal
        formBrandRow.alignment = .center
        formBrandRow.spacing = 12
        formBrandRow.translatesAutoresizingMaskIntoConstraints = false

        let icon = UIImageView(image: UIImage(named: "unghishdb"))
        icon.contentMode = .scaleAspectFill
        icon.clipsToBounds = true
        icon.layer.cornerRadius = 12
        icon.translatesAutoresizingMaskIntoConstraints = false
        formBrandRow.addArrangedSubview(icon)

        let brand = UILabel()
        brand.text = "Ponlly"
        brand.textColor = .white
        brand.font = PonllyFonts.display(size: 22)
        formBrandRow.addArrangedSubview(brand)

        NSLayoutConstraint.activate([
            icon.widthAnchor.constraint(equalToConstant: 60),
            icon.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func labeledField(title: String, field: UITextField) -> UIView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 7
        stack.translatesAutoresizingMaskIntoConstraints = false
        let label = UILabel()
        label.text = title
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.mono(size: 10)
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(field)
        return stack
    }

    private func configure(field: UITextField, placeholder: String) {
        field.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: PonllyPalette.muted])
        field.textColor = .white
        field.font = PonllyFonts.body(size: 15)
        field.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        field.layer.cornerRadius = 14
        field.layer.borderWidth = 1.5
        field.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 66/255, alpha: 1).cgColor
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        field.leftViewMode = .always
        field.addTarget(self, action: #selector(fieldDidChange), for: .editingChanged)
    }

    private func configurePrimaryButton(_ button: UIButton, title: String, symbol: String) {
        button.setTitle("  \(title)", for: .normal)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = PonllyFonts.display(size: 14)
        button.backgroundColor = PonllyPalette.pink
        button.layer.cornerRadius = 18
        button.layer.shadowColor = PonllyPalette.pink.cgColor
        button.layer.shadowOpacity = 0.42
        button.layer.shadowRadius = 18
        button.layer.shadowOffset = CGSize(width: 0, height: 8)
        button.translatesAutoresizingMaskIntoConstraints = false
    }

    private func configureCreateButton() {
        createButton.setTitle("Create An Account", for: .normal)
        createButton.setImage(UIImage(systemName: "person.crop.circle.badge.plus"), for: .normal)
        createButton.tintColor = .white
        createButton.setTitleColor(.white, for: .normal)
        createButton.titleLabel?.font = PonllyFonts.body(size: 14, weight: .semibold)
        createButton.backgroundColor = UIColor.black.withAlphaComponent(0.24)
        createButton.layer.cornerRadius = 18
        createButton.layer.borderWidth = 2
        createButton.layer.borderColor = PonllyPalette.cyan.cgColor
        createButton.layer.shadowColor = PonllyPalette.cyan.cgColor
        createButton.layer.shadowOpacity = 0.26
        createButton.layer.shadowRadius = 14
        createButton.translatesAutoresizingMaskIntoConstraints = false
    }

    private func agreementRow() -> UIView {
        let row = UIView()
        row.translatesAutoresizingMaskIntoConstraints = false
        agreeButton.setImage(UIImage(systemName: "square"), for: .normal)
        agreeButton.tintColor = PonllyPalette.cyan
        agreeButton.translatesAutoresizingMaskIntoConstraints = false
        agreeButton.addTarget(self, action: #selector(toggleAgree), for: .touchUpInside)
        row.addSubview(agreeButton)

        let prefix = UILabel()
        prefix.text = "I agree to"
        prefix.textColor = PonllyPalette.muted
        prefix.font = PonllyFonts.body(size: 12)
        prefix.translatesAutoresizingMaskIntoConstraints = false
        row.addSubview(prefix)

        let terms = agreementLink("User Agreement", action: #selector(userAgreementTapped))
        let middle = UILabel()
        middle.text = "and"
        middle.textColor = PonllyPalette.muted
        middle.font = PonllyFonts.body(size: 12)
        middle.translatesAutoresizingMaskIntoConstraints = false
        let eula = agreementLink("EULA Agreement", action: #selector(eulaTapped))
        row.addSubview(terms)
        row.addSubview(middle)
        row.addSubview(eula)

        NSLayoutConstraint.activate([
            row.heightAnchor.constraint(equalToConstant: 42),
            agreeButton.leadingAnchor.constraint(equalTo: row.leadingAnchor),
            agreeButton.centerYAnchor.constraint(equalTo: row.centerYAnchor),
            agreeButton.widthAnchor.constraint(equalToConstant: 30),
            agreeButton.heightAnchor.constraint(equalToConstant: 30),
            prefix.leadingAnchor.constraint(equalTo: agreeButton.trailingAnchor, constant: 12),
            prefix.centerYAnchor.constraint(equalTo: row.centerYAnchor),
            terms.leadingAnchor.constraint(equalTo: prefix.trailingAnchor, constant: 4),
            terms.centerYAnchor.constraint(equalTo: row.centerYAnchor),
            middle.leadingAnchor.constraint(equalTo: terms.trailingAnchor, constant: 4),
            middle.centerYAnchor.constraint(equalTo: row.centerYAnchor),
            eula.leadingAnchor.constraint(equalTo: middle.trailingAnchor, constant: 4),
            eula.centerYAnchor.constraint(equalTo: row.centerYAnchor),
            eula.trailingAnchor.constraint(lessThanOrEqualTo: row.trailingAnchor)
        ])
        return row
    }

    private func agreementLink(_ title: String, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(PonllyPalette.cyan, for: .normal)
        button.titleLabel?.font = PonllyFonts.body(size: 12, weight: .bold)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.82
        button.addTarget(self, action: action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    private func showLanding() {
        step = .landing
        headerTitleLabel.text = ""
        headerBackButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        heroView.isHidden = false
        loginButton.isHidden = false
        createButton.isHidden = false
        formStack.isHidden = true
        clearInlineError()
        view.endEditing(true)
    }

    private func showForm(_ nextStep: AuthStep) {
        step = nextStep
        headerBackButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        headerTitleLabel.text = nextStep == .login ? "Login" : "Creat Account"
        heroView.isHidden = true
        loginButton.isHidden = true
        createButton.isHidden = true
        formStack.isHidden = false
        formHeadlineLabel.text = nextStep == .login ? "Welcome Back" : "Create Your Account"
        formSubtitleLabel.text = nextStep == .login ? "Sign in to join the latest graffiti battles and show off your tags." : "Set your access details before building your street art profile."
        submitButton.setTitle(nextStep == .login ? "Login" : "Next", for: .normal)
        if nextStep == .login {
            emailField.text = "ponlly@gmail.com"
            passwordField.text = "555666"
        } else {
            emailField.text = ""
            passwordField.text = ""
        }
        clearInlineError()
        emailField.becomeFirstResponder()
    }

    private func refreshAgreementUI() {
        agreeButton.setImage(UIImage(systemName: agreed ? "checkmark.square.fill" : "square"), for: .normal)
        loginButton.alpha = agreed ? 1 : 0.62
        createButton.alpha = agreed ? 1 : 0.62
    }

    private func requireAgreementBeforeNext() -> Bool {
        guard agreed else {
            ponllyShowNotice("Please agree before continuing", style: .failure)
            return false
        }
        return true
    }

    private func presentEula() {
        ponllyShowThemeAlert(
            title: "End User License Agreement",
            message: "Ponlly is for lawful street art discussion and creative expression. You must meet the required age in your region, respect other artists, avoid harmful conduct, and use reporting or blocking tools for unsafe behavior. Severe violations may lead to account restrictions and appropriate escalation.",
            actionTitle: "Agree",
            style: .info,
            showsCancel: true
        ) {
            self.agreed = true
        }
    }

    private func showInlineError(_ message: String) {
        errorLabel.text = "  \(message)"
        errorLabel.isHidden = false
        passwordField.layer.borderColor = PonllyPalette.pink.cgColor
        passwordField.layer.shadowColor = PonllyPalette.pink.cgColor
        passwordField.layer.shadowOpacity = 0.26
        passwordField.layer.shadowRadius = 10
    }

    private func clearInlineError() {
        errorLabel.isHidden = true
        [emailField, passwordField].forEach {
            $0.layer.borderColor = PonllyPalette.line.cgColor
            $0.layer.shadowOpacity = 0
        }
    }

    @objc private func backTapped() {
        if step == .landing {
            dismiss(animated: true)
        } else {
            showLanding()
        }
    }

    @objc private func toggleAgree() {
        agreed.toggle()
    }

    @objc private func loginChoiceTapped() {
        guard requireAgreementBeforeNext() else { return }
        showForm(.login)
    }

    @objc private func createChoiceTapped() {
        guard requireAgreementBeforeNext() else { return }
        showForm(.create)
    }

    @objc private func userAgreementTapped() {
        let doc = PonllyPolicyViewController()
        doc.title = "Terms Of Service"
        navigationController?.pushViewController(doc, animated: true)
    }

    @objc private func eulaTapped() {
        let doc = PonllyPolicyViewController()
        doc.title = "EULA Agreement"
        navigationController?.pushViewController(doc, animated: true)
    }

    @objc private func togglePasswordVisibility() {
        passwordField.isSecureTextEntry.toggle()
        passwordEyeButton.setImage(UIImage(systemName: passwordField.isSecureTextEntry ? "eye" : "eye.slash"), for: .normal)
    }

    @objc private func fieldDidChange() {
        clearInlineError()
    }

    @objc private func submitTapped() {
        guard requireAgreementBeforeNext() else { return }
        let email = emailField.text ?? ""
        let password = passwordField.text ?? ""
        if step == .create {
            if let message = PonllyAuthCenter.shared.validateNewAccount(email: email, password: password) {
                showInlineError(message)
                return
            }
            let profile = PonllyCreateProfileViewController(email: email, password: password, completion: completion)
            navigationController?.pushViewController(profile, animated: true)
            return
        }

        submitButton.isEnabled = false
        submitButton.setTitle("Connecting...", for: .normal)
        PonllyAuthCenter.shared.login(email: email, password: password) { success, message in
            self.submitButton.isEnabled = true
            self.submitButton.setTitle("Login", for: .normal)
            if success {
                self.dismiss(animated: true) { self.completion() }
            } else {
                self.showInlineError(message ?? "Invalid email or password")
            }
        }
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
