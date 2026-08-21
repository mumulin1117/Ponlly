import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyWaitingChallengerViewController: UIViewController {
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
        title = "Waiting For Challenger"
        view.backgroundColor = PonllyPalette.background
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 30
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let arena = PonllyBattlePreviewArenaView(selectedImage: selectedImage)
        arena.heightAnchor.constraint(equalToConstant: 220).isActive = true
        let status = UILabel()
        status.text = "Your Challenge Is Live! Waiting For A Creator To Accept."
        status.textColor = PonllyPalette.green
        status.textAlignment = .center
        status.font = PonllyFonts.body(size: 14, weight: .bold)
        status.backgroundColor = UIColor.green.withAlphaComponent(0.1)
        status.layer.cornerRadius = 16
        status.clipsToBounds = true
        status.heightAnchor.constraint(equalToConstant: 58).isActive = true
        let detail = UILabel()
        detail.text = "Theme                                      Wildstyle\nStakes Duration                         24 Hours\nOpponent Acceptance Deadline       11 Hours Left"
        detail.textColor = .white
        detail.numberOfLines = 0
        detail.font = PonllyFonts.mono(size: 12)
        detail.backgroundColor = PonllyPalette.panel
        detail.layer.cornerRadius = 16
        detail.clipsToBounds = true
        detail.heightAnchor.constraint(equalToConstant: 120).isActive = true
        let delete = PonllyNeonButton(title: "Delete Challenge", color: PonllyPalette.pink)
        delete.setTitleColor(.white, for: .normal)
        delete.addTarget(self, action: #selector(deleteTapped), for: .touchUpInside)
        [arena, status, detail, delete].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 34),
            delete.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    @objc private func deleteTapped() {
        ponllyShowToast("Deleting challenge...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
}
