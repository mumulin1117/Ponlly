import UIKit

final class PPonllMopMarkerController: UIViewController {
    private let userName: String
    private let avatar: UIImage?
    private let completion: () -> Void
    private let backgroundImageView = UIImageView(image: UIImage(named: "voice_room_bg_08"))

    init(userName: String, avatar: UIImage?, completion: @escaping () -> Void) {
        self.userName = userName
        self.avatar = avatar
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
    }

    private func setupUI() {
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 0.46
        view.addSubview(backgroundImageView)
        backgroundImageView.pinToEdges(of: view)

        let veil = PonllyGradientView(
            colors: [
                UIColor.black.withAlphaComponent(0.42),
                UIColor(red: 18/255, green: 0, blue: 15/255, alpha: 0.5),
                UIColor.black.withAlphaComponent(0.9)
            ],
            start: CGPoint(x: 0.5, y: 0),
            end: CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        let avatarWrap = UIView()
        avatarWrap.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        avatarWrap.layer.cornerRadius = 65
        avatarWrap.layer.borderWidth = 3
        avatarWrap.layer.borderColor = PonllyPalette.pink.cgColor
        avatarWrap.layer.shadowColor = PonllyPalette.cyan.cgColor
        avatarWrap.layer.shadowOpacity = 0.34
        avatarWrap.layer.shadowRadius = 24
        avatarWrap.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarWrap)

        let avatarView = UIImageView(image: avatar ?? PonllyDataCenter.avatarImage(for: PonllyDataCenter.currentUser()) ?? UIImage(named: "ponlly_avatar_01"))
        avatarView.contentMode = .scaleAspectFill
        avatarView.clipsToBounds = true
        avatarView.layer.cornerRadius = 57
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        avatarWrap.addSubview(avatarView)

        let crown = UILabel()
        crown.text = userName
        crown.textColor = PonllyPalette.cyan
        crown.textAlignment = .center
        crown.font = PonllyFonts.mono(size: 8)
        crown.translatesAutoresizingMaskIntoConstraints = false
        avatarWrap.addSubview(crown)

        let title = UILabel()
        title.text = "Welcome To\nPonlly"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 32)
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        let body = UILabel()
        body.text = "Your street art journey begins now. Battle with rivals, upload your masterpieces, and claim your turf."
        body.textColor = PonllyPalette.muted
        body.textAlignment = .center
        body.font = PonllyFonts.body(size: 15)
        body.numberOfLines = 0
        body.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        body.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(body)

        let enterButton = PonllyNeonButton(title: "Enter App")
        enterButton.addTarget(self, action: #selector(enterTapped), for: .touchUpInside)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(enterButton)

        let avatarCenterY = NSLayoutConstraint(
            item: avatarWrap,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.356,
            constant: 0
        )

        NSLayoutConstraint.activate([
            avatarWrap.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarCenterY,
            avatarWrap.widthAnchor.constraint(equalToConstant: 130),
            avatarWrap.heightAnchor.constraint(equalToConstant: 130),
            avatarView.centerXAnchor.constraint(equalTo: avatarWrap.centerXAnchor),
            avatarView.centerYAnchor.constraint(equalTo: avatarWrap.centerYAnchor, constant: -1),
            avatarView.widthAnchor.constraint(equalToConstant: 114),
            avatarView.heightAnchor.constraint(equalToConstant: 114),
            crown.leadingAnchor.constraint(equalTo: avatarWrap.leadingAnchor, constant: 8),
            crown.trailingAnchor.constraint(equalTo: avatarWrap.trailingAnchor, constant: -8),
            crown.bottomAnchor.constraint(equalTo: avatarWrap.bottomAnchor, constant: -10),

            title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 42),
            title.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -42),
            title.topAnchor.constraint(equalTo: avatarWrap.bottomAnchor, constant: 53),
            body.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            body.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            body.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 16),

            enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            body.bottomAnchor.constraint(lessThanOrEqualTo: enterButton.topAnchor, constant: -20),
            enterButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            enterButton.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    @objc private func enterTapped() {
        navigationController?.dismiss(animated: true) {
            self.completion()
        }
    }
}
