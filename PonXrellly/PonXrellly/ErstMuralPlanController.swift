import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class ErstMuralPlanController: UIViewController {
    private let selectedImage: UIImage

    init(selectedImage: UIImage) {
        self.selectedImage = selectedImage
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Preview Challenge"
        view.backgroundColor = PonllyPalette.background
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 26
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let arena = PponllWallPlanView(selectedImage: selectedImage)
        arena.heightAnchor.constraint(equalToConstant: 220).isActive = true
        let card = UIView()
        card.backgroundColor = PonllyPalette.panel
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        let text = UILabel()
        text.text = "Wildstyle\n\nWildstyle Showdown\nBring Your Absolute Best Chrome Letters And Sharp Outlines to This Burner Arena"
        text.numberOfLines = 0
        text.textColor = .white
        text.font = PonllyFonts.display(size: 14)
        card.addSubview(text)
        text.pinToEdges(of: card, insets: UIEdgeInsets(top: 18, left: 18, bottom: 18, right: 18))
        let publish = PonllyNeonButton(title: "Publish Challenge")
        publish.addTarget(self, action: #selector(publishTapped), for: .touchUpInside)
        let edit = UIButton(type: .system)
        edit.setTitle("Edit Challenge", for: .normal)
        edit.tintColor = PonllyPalette.muted
        edit.titleLabel?.font = PonllyFonts.display(size: 12)
        [arena, card, publish, edit].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            card.heightAnchor.constraint(equalToConstant: 170),
            publish.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    @objc private func publishTapped() {
        ponllyShowToast("Publishing challenge...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.navigationController?.pushViewController(PonllyWaitingChallengerViewController(selectedImage: self.selectedImage), animated: true)
        }
    }
}
