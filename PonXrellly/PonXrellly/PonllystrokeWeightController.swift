import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystrokeWeightController: UIViewController {
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
        let remoteImage = UIImageView(image: PonllyDataCenter.avatarImage(for: user) ?? UIImage(named: "voice_room_bg_08"))
        remoteImage.contentMode = .scaleAspectFill
        remoteImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(remoteImage)
        remoteImage.pinToEdges(of: view)

        let blur = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark))
        blur.alpha = remoteImage.image == nil ? 0 : 0.18
        blur.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blur)
        blur.pinToEdges(of: view)

        let veil = PonllyGradientView(
            colors: [
                UIColor.black.withAlphaComponent(0.08),
                UIColor.black.withAlphaComponent(0.1),
                PonllyPalette.background.withAlphaComponent(0.72)
            ],
            start: CGPoint(x: 0.5, y: 0),
            end: CGPoint(x: 0.5, y: 1)
        )
        view.addSubview(veil)
        veil.pinToEdges(of: view)

        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        back.layer.cornerRadius = 38
        back.layer.borderWidth = 1
        back.layer.borderColor = UIColor.black.withAlphaComponent(0.28).cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        view.addSubview(back)

        let more = UIButton(type: .system)
        more.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        more.tintColor = .white
        more.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.82)
        more.layer.cornerRadius = 38
        more.layer.borderWidth = 1
        more.layer.borderColor = UIColor.black.withAlphaComponent(0.28).cgColor
        more.translatesAutoresizingMaskIntoConstraints = false
        more.addTarget(self, action: #selector(moreTapped), for: .touchUpInside)
        view.addSubview(more)

        let title = UILabel()
        title.text = user.name.replacingOccurrences(of: "@", with: "")
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 24)
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        let localPreview = UIImageView(image: PonllyDataCenter.avatarImage(for: PonllyDataCenter.currentUser()) ?? UIImage(named: "ponlly_avatar_01"))
        localPreview.contentMode = .scaleAspectFill
        localPreview.clipsToBounds = true
        localPreview.layer.cornerRadius = 16
        localPreview.layer.borderWidth = 2.5
        localPreview.layer.borderColor = UIColor.white.cgColor
        localPreview.layer.shadowColor = UIColor.black.cgColor
        localPreview.layer.shadowOpacity = 0.35
        localPreview.layer.shadowRadius = 18
        localPreview.layer.shadowOffset = CGSize(width: 0, height: 8)
        localPreview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(localPreview)

        let timer = UILabel()
        timer.text = "04:15 Hrs"
        timer.textColor = .white
        timer.textAlignment = .center
        timer.font = PonllyFonts.body(size: 24, weight: .black)
        timer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(timer)

        let mic = callButton(symbol: "mic.fill", background: .black.withAlphaComponent(0.78), tint: .white, size: 76, action: #selector(micTapped(_:)))
        let end = callButton(symbol: "phone.down.fill", background: UIColor(red: 1, green: 31/255, blue: 39/255, alpha: 1), tint: .white, size: 92, action: #selector(endTapped))
        let camera = callButton(symbol: "video.fill", background: .black.withAlphaComponent(0.78), tint: .white, size: 76, action: #selector(cameraTapped))
        [mic, end, camera].forEach(view.addSubview)

        NSLayoutConstraint.activate([
            back.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            back.widthAnchor.constraint(equalToConstant: 76),
            back.heightAnchor.constraint(equalToConstant: 76),
            more.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            more.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            more.widthAnchor.constraint(equalToConstant: 76),
            more.heightAnchor.constraint(equalToConstant: 76),
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            localPreview.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32),
            localPreview.bottomAnchor.constraint(equalTo: timer.topAnchor, constant: -16),
            localPreview.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.38),
            localPreview.heightAnchor.constraint(equalTo: localPreview.widthAnchor, multiplier: 1.25),
            timer.centerXAnchor.constraint(equalTo: localPreview.centerXAnchor),
            timer.bottomAnchor.constraint(equalTo: mic.topAnchor, constant: -54),
            end.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            end.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -76),
            mic.centerYAnchor.constraint(equalTo: end.centerYAnchor),
            mic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            camera.centerYAnchor.constraint(equalTo: end.centerYAnchor),
            camera.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36)
        ])
    }

    private func callButton(symbol: String, background: UIColor, tint: UIColor, size: CGFloat, action: Selector) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = tint
        button.backgroundColor = background
        button.layer.cornerRadius = size / 2
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        button.widthAnchor.constraint(equalToConstant: size).isActive = true
        button.heightAnchor.constraint(equalToConstant: size).isActive = true
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }

    @objc private func micTapped(_ sender: UIButton) {
        micMuted.toggle()
        sender.setImage(UIImage(systemName: micMuted ? "mic.slash.fill" : "mic.fill"), for: .normal)
        sender.tintColor = .white
        sender.backgroundColor = micMuted ? PonllyPalette.pink.withAlphaComponent(0.86) : .black.withAlphaComponent(0.78)
        ponllyShowToast(micMuted ? "Microphone muted" : "Microphone open")
    }

    @objc private func cameraTapped() {
        ponllyShowToast("Camera switched")
    }

    @objc private func endTapped() {
        ponllyShowToast("Call ended")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.navigationController?.popViewController(animated: true)
        }
    }

    @objc private func moreTapped() {
        let menu = PaerosolGritMenuViewController(user: user)
        menu.onReport = { [weak self] in
            guard let self else { return }
            let report = PonllycolorFadeController(user: self.user)
            report.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(report, animated: true)
        }
        menu.onBlock = { [weak self] in
            guard let self else { return }
            let confirm = PaerErstHighlightStrokeController(user: self.user)
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
