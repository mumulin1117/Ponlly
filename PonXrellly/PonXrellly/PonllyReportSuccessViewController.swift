import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyReportSuccessViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        view.backgroundColor = PonllyPalette.background
        if let artwork = PonllyDataCenter.profileArtworks(for: PonllyDataCenter.currentUserId).first {
            let bgArt = PonllyArtworkView(artwork: artwork)
            bgArt.alpha = 0.18
            view.addSubview(bgArt)
            bgArt.pinToEdges(of: view)
        }
        let shade = PonllyGradientView(colors: [UIColor.black.withAlphaComponent(0.7), PonllyPalette.background.withAlphaComponent(0.95)])
        view.addSubview(shade)
        shade.pinToEdges(of: view)

        let iconWrap = UIView()
        iconWrap.backgroundColor = PonllyPalette.cyan.withAlphaComponent(0.12)
        iconWrap.layer.cornerRadius = 58
        iconWrap.layer.borderWidth = 4
        iconWrap.layer.borderColor = PonllyPalette.cyan.cgColor
        iconWrap.layer.shadowColor = PonllyPalette.cyan.cgColor
        iconWrap.layer.shadowOpacity = 0.48
        iconWrap.layer.shadowRadius = 26
        iconWrap.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(iconWrap)
        let check = UIImageView(image: UIImage(systemName: "checkmark"))
        check.tintColor = PonllyPalette.cyan
        check.translatesAutoresizingMaskIntoConstraints = false
        iconWrap.addSubview(check)

        let title = UILabel()
        title.text = "Report Submitted"
        title.textColor = .white
        title.textAlignment = .center
        title.font = PonllyFonts.display(size: 28)
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(title)

        let body = UILabel()
        body.text = "Thank you for helping keep our community safe.\nWe will review your report within 24 hours."
        body.textColor = PonllyPalette.muted
        body.textAlignment = .center
        body.font = PonllyFonts.body(size: 15)
        body.numberOfLines = 0
        body.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(body)

        let button = PonllyNeonButton(title: "Back To Profile")
        button.addTarget(self, action: #selector(backToProfileTapped), for: .touchUpInside)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            iconWrap.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconWrap.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 172),
            iconWrap.widthAnchor.constraint(equalToConstant: 116),
            iconWrap.heightAnchor.constraint(equalToConstant: 116),
            check.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
            check.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor),
            check.widthAnchor.constraint(equalToConstant: 48),
            check.heightAnchor.constraint(equalToConstant: 48),
            title.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            title.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            title.topAnchor.constraint(equalTo: iconWrap.bottomAnchor, constant: 48),
            body.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            body.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            body.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 22),
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            button.topAnchor.constraint(equalTo: body.bottomAnchor, constant: 62),
            button.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    @objc private func backToProfileTapped() {
        if let profile = navigationController?.viewControllers.reversed().first(where: { $0 is PonllyArtistProfileViewController }) {
            navigationController?.popToViewController(profile, animated: true)
        } else {
            navigationController?.popToRootViewController(animated: true)
        }
    }
}
