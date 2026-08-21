import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllySelectArtworkViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let titleText: String
    private let submitTitle: String
    private let mode: PonllyArtworkSelectionMode
    private let artworkButton = UIButton(type: .system)
    private let previewImageView = UIImageView()
    private let actionButton: PonllyNeonButton
    private var selectedImage: UIImage? {
        didSet { updateSelectionState() }
    }

    init(titleText: String, submitTitle: String, mode: PonllyArtworkSelectionMode) {
        self.titleText = titleText
        self.submitTitle = submitTitle
        self.mode = mode
        self.actionButton = PonllyNeonButton(title: submitTitle)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = titleText
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let help = UILabel()
        help.text = "Choose a graffiti artwork from your library or capture a fresh wall shot."
        help.textColor = PonllyPalette.muted
        help.font = PonllyFonts.body(size: 14, weight: .semibold)
        help.numberOfLines = 0
        help.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(help)
        artworkButton.setTitle("+", for: .normal)
        artworkButton.titleLabel?.font = UIFont.systemFont(ofSize: 72, weight: .light)
        artworkButton.tintColor = PonllyPalette.cyan
        artworkButton.backgroundColor = PonllyPalette.panel
        artworkButton.layer.cornerRadius = 18
        artworkButton.layer.borderWidth = 3
        artworkButton.layer.borderColor = PonllyPalette.cyan.cgColor
        artworkButton.translatesAutoresizingMaskIntoConstraints = false
        artworkButton.addTarget(self, action: #selector(pickArtworkTapped), for: .touchUpInside)
        view.addSubview(artworkButton)
        previewImageView.contentMode = .scaleAspectFill
        previewImageView.clipsToBounds = true
        previewImageView.layer.cornerRadius = 18
        previewImageView.isHidden = true
        previewImageView.translatesAutoresizingMaskIntoConstraints = false
        artworkButton.addSubview(previewImageView)
        actionButton.addTarget(self, action: #selector(goNextTapped), for: .touchUpInside)
        view.addSubview(actionButton)
        updateSelectionState()
        NSLayoutConstraint.activate([
            help.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            help.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            help.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 26),
            artworkButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            artworkButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            artworkButton.topAnchor.constraint(equalTo: help.bottomAnchor, constant: 24),
            artworkButton.heightAnchor.constraint(equalTo: artworkButton.widthAnchor, multiplier: 0.72),
            previewImageView.leadingAnchor.constraint(equalTo: artworkButton.leadingAnchor),
            previewImageView.trailingAnchor.constraint(equalTo: artworkButton.trailingAnchor),
            previewImageView.topAnchor.constraint(equalTo: artworkButton.topAnchor),
            previewImageView.bottomAnchor.constraint(equalTo: artworkButton.bottomAnchor),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            actionButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func updateSelectionState() {
        let hasImage = selectedImage != nil
        previewImageView.image = selectedImage
        previewImageView.isHidden = !hasImage
        artworkButton.setTitle(hasImage ? "" : "+", for: .normal)
        actionButton.isEnabled = hasImage
        actionButton.alpha = hasImage ? 1 : 0.45
    }

    @objc private func pickArtworkTapped() {
        let sheet = UIAlertController(title: "Select Artwork", message: nil, preferredStyle: .actionSheet)
        sheet.addAction(UIAlertAction(title: "Photo Library", style: .default) { _ in
            self.presentPicker(source: .photoLibrary)
        })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            sheet.addAction(UIAlertAction(title: "Camera", style: .default) { _ in
                self.presentPicker(source: .camera)
            })
        }
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        if let popover = sheet.popoverPresentationController {
            popover.sourceView = artworkButton
            popover.sourceRect = artworkButton.bounds
        }
        present(sheet, animated: true)
    }

    private func presentPicker(source: UIImagePickerController.SourceType) {
        let picker = UIImagePickerController()
        picker.sourceType = source
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        selectedImage = (info[.editedImage] as? UIImage) ?? (info[.originalImage] as? UIImage)
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    @objc private func goNextTapped() {
        guard let selectedImage else {
            ponllyShowToast("Choose artwork to continue")
            return
        }
        switch mode {
        case .create:
            navigationController?.pushViewController(PonllyBattlePreviewViewController(selectedImage: selectedImage), animated: true)
        case .accept(let battle):
            actionButton.isEnabled = false
            actionButton.alpha = 0.55
            ponllyShowToast("Submitting challenge...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.actionButton.isEnabled = true
                self.actionButton.alpha = 1
                let updatedBattle = PonllyDataCenter.acceptBattle(battle, selectedImage: selectedImage)
                self.ponllyShowThemeAlert(
                    title: "Challenge Submitted",
                    message: "Your artwork is now live in the battle arena.",
                    actionTitle: "View Challenge",
                    style: .success
                ) {
                    self.navigationController?.pushViewController(PonllyBattleDetailViewController(battle: updatedBattle), animated: true)
                }
            }
        }
    }
}
