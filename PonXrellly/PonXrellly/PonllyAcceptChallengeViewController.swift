import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyAcceptChallengeViewController: UIViewController {
    private let battle: PonllyBattle

    init(battle: PonllyBattle) {
        self.battle = battle
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Accept Challenge"
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 26
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let challenger = PonllyArtworkView(artwork: battle.artworkA)
        challenger.heightAnchor.constraint(equalToConstant: 190).isActive = true
        let label = UILabel()
        label.text = "VS\n\nUpload Your Artwork"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = PonllyFonts.display(size: 16)
        let plus = PonllyEmptyOpponentView()
        plus.heightAnchor.constraint(equalToConstant: 220).isActive = true
        let submit = PonllyNeonButton(title: "Submit Challenge")
        submit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        [challenger, label, plus, submit].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 28),
            submit.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    @objc private func submitTapped() {
        navigationController?.pushViewController(PonllySelectArtworkViewController(titleText: "Upload Your Artwork", submitTitle: "Submit Challenge", mode: .accept(battle)), animated: true)
    }
}
