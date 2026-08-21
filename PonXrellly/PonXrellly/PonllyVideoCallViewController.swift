import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyVideoCallViewController: UIViewController {
    private let user: PonllyUser
    private var micMuted = false

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
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let art = PonllyArtworkView(artwork: PonllyDataCenter.profileArtworks(for: user.id).first!)
        art.alpha = 0.34
        view.addSubview(art)
        art.pinToEdges(of: view)
        let veil = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.36), PonllyPalette.background.withAlphaComponent(0.92)])
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        back.layer.cornerRadius = 22
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        view.addSubview(back)

        let more = UIButton(type: .system)
        more.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        more.tintColor = .white
        more.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.9)
        more.layer.cornerRadius = 22
        more.layer.borderWidth = 1
        more.layer.borderColor = PonllyPalette.line.cgColor
        more.translatesAutoresizingMaskIntoConstraints = false
        more.addTarget(self, action: #selector(moreTapped), for: .touchUpInside)
        view.addSubview(more)

        let title = UILabel()
        title.text = "Video Call"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 22)
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        let avatar = PonllyAvatarView(user: user, size: 126)
        avatar.layer.shadowColor = PonllyPalette.cyan.cgColor
        avatar.layer.shadowOpacity = 0.42
        avatar.layer.shadowRadius = 24
        view.addSubview(avatar)

        let name = UILabel()
        name.text = "@\(user.name.lowercased())"
        name.textColor = .white
        name.textAlignment = .center
        name.font = PonllyFonts.display(size: 24)
        name.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(name)

        let status = UILabel()
        status.text = "Connected for live wall critique"
        status.textColor = PonllyPalette.cyan
        status.textAlignment = .center
        status.font = PonllyFonts.body(size: 14, weight: .semibold)
        status.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(status)

        let controls = UIStackView()
        controls.axis = .horizontal
        controls.spacing = 18
        controls.distribution = .fillEqually
        controls.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(controls)
        controls.addArrangedSubview(callButton(symbol: "mic.fill", color: PonllyPalette.cyan, action: #selector(micTapped(_:))))
        controls.addArrangedSubview(callButton(symbol: "phone.down.fill", color: PonllyPalette.pink, action: #selector(endTapped)))

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 18),
            back.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14),
            back.widthAnchor.constraint(equalToConstant: 44),
            back.heightAnchor.constraint(equalToConstant: 44),
            more.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -18),
            more.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            more.widthAnchor.constraint(equalToConstant: 44),
            more.heightAnchor.constraint(equalToConstant: 44),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            avatar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatar.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80),
            name.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 26),
            name.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26),
            name.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 28),
            status.leadingAnchor.constraint(equalTo: name.leadingAnchor),
            status.trailingAnchor.constraint(equalTo: name.trailingAnchor),
            status.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 12),
            controls.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 76),
            controls.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -76),
            controls.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -34),
            controls.heightAnchor.constraint(equalToConstant: 62)
        ])
    }

    private func callButton(symbol: String, color: UIColor, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = symbol.contains("phone") ? .white : .black
        button.backgroundColor = color
        button.layer.cornerRadius = 31
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }

    @objc private func micTapped(_ sender: UIButton) {
        micMuted.toggle()
        sender.setImage(UIImage(systemName: micMuted ? "mic.slash.fill" : "mic.fill"), for: .normal)
        sender.tintColor = micMuted ? .white : .black
        sender.backgroundColor = micMuted ? PonllyPalette.panel : PonllyPalette.cyan
        ponllyShowToast(micMuted ? "Microphone muted" : "Microphone open")
    }

    @objc private func endTapped() {
        ponllyShowToast("Call ended")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.navigationController?.popViewController(animated: true)
        }
    }

    @objc private func moreTapped() {
        let menu = PonllyProfileActionMenuViewController(user: user)
        menu.onReport = { [weak self] in
            guard let self else { return }
            let report = PonllyReportUserViewController(user: self.user)
            report.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(report, animated: true)
        }
        menu.onBlock = { [weak self] in
            guard let self else { return }
            let confirm = PonllyBlockConfirmationViewController(user: self.user)
            confirm.onConfirm = { [weak self] in
                guard let self else { return }
                PonllyDataCenter.blockUser(self.user.id)
                self.ponllyShowToast("Artist blocked")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                    self.navigationController?.popViewController(animated: true)
                }
            }
            confirm.modalPresentationStyle = .overFullScreen
            self.present(confirm, animated: false)
        }
        menu.modalPresentationStyle = .overFullScreen
        present(menu, animated: false)
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
