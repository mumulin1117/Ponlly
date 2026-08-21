import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyCreateBattleEntryViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Battle"
        view.backgroundColor = PonllyPalette.background
        setupPage()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setupPage() {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 28
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let title = UILabel()
        title.text = "Challenge Other Graffiti Creators To Prove Your Skills"
        title.font = PonllyFonts.body(size: 16, weight: .semibold)
        title.textColor = PonllyPalette.muted
        title.numberOfLines = 0
        let hero = PonllyArtworkView(artwork: .init(id: "hero", ownerId: "u01", title: "Neon Fury Chrome Clash", style: "Battle", imageName: "graffiti_challenge_wall_05", colors: [.cyan, .systemPink, .orange]))
        hero.heightAnchor.constraint(equalToConstant: 240).isActive = true
        let how = UILabel()
        how.text = "How PK Battles Work"
        how.textColor = PonllyPalette.cyan
        how.font = PonllyFonts.display(size: 14)
        let steps = UILabel()
        steps.text = "1   Select Your Artwork From Your Crew Vault\n\n2   Set Battle Rules, Themes, And Time Stakes\n\n3   Wait For A Challenger To Drop Their Tag"
        steps.textColor = .white
        steps.font = PonllyFonts.body(size: 14, weight: .semibold)
        steps.numberOfLines = 0
        let button = PonllyNeonButton(title: "Start Creating")
        button.addTarget(self, action: #selector(goNextTapped), for: .touchUpInside)
        [title, hero, how, steps, button].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    @objc private func goNextTapped() {
        navigationController?.pushViewController(PonllyBattleSettingsViewController(), animated: true)
    }
}
