import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystencilCascadeTroller: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    private let ponllScrollVault = UIScrollView()
    private let bruCiuNameField = UITextField()
    private let flckinkwallPlanView = UITextView()
    private let aerErstneonDraftton = UIButton(type: .system)
    private let ponllshadowDraftiew = UIImageView()
    private let bruCiuaerosolDrafton = PonllyNeonButton("Next Step")
    private var flckinkpasteForgegory = "Graffiti Talk"
    private var aerErstCoverImage: UIImage?
    private var ponllshadowForgens: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Voice Room"
        view.backgroundColor = PonllyPalette.background
        bruCiusketchMuse()
        flckinkUpdateNextState()
        NotificationCenter.default.addObserver(self, selector: #selector(ponllKeyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiuKeyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiusketchMuse() {
        ponllScrollVault.keyboardDismissMode = .onDrag
        ponllScrollVault.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllScrollVault)

        let flckinkStackPath = UIStackView()
        flckinkStackPath.axis = .vertical
        flckinkStackPath.spacing = 22
        flckinkStackPath.translatesAutoresizingMaskIntoConstraints = false
        ponllScrollVault.addSubview(flckinkStackPath)

        let aerErsttextureMuseWrap = UIView()
        aerErsttextureMuseWrap.translatesAutoresizingMaskIntoConstraints = false
        aerErstneonDraftton.backgroundColor = PonllyPalette.panel
        aerErstneonDraftton.layer.cornerRadius = 42
        aerErstneonDraftton.layer.borderWidth = 2
        aerErstneonDraftton.layer.borderColor = PonllyPalette.cyan.cgColor
        aerErstneonDraftton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        aerErstneonDraftton.tintColor = PonllyPalette.cyan
        aerErstneonDraftton.translatesAutoresizingMaskIntoConstraints = false
        aerErstneonDraftton.addTarget(self, action: #selector(aerErstCoverTapped), for: .touchUpInside)
        aerErsttextureMuseWrap.addSubview(aerErstneonDraftton)
        ponllshadowDraftiew.image = UIImage(named: "graffiti_challenge_wall_04")
        ponllshadowDraftiew.contentMode = .scaleAspectFill
        ponllshadowDraftiew.clipsToBounds = true
        ponllshadowDraftiew.layer.cornerRadius = 39
        ponllshadowDraftiew.translatesAutoresizingMaskIntoConstraints = false
        aerErstneonDraftton.addSubview(ponllshadowDraftiew)
        let bruCiuCoverHint = UILabel()
        bruCiuCoverHint.text = "Tap To Upload Cover"
        bruCiuCoverHint.textColor = PonllyPalette.cyan
        bruCiuCoverHint.textAlignment = .center
        bruCiuCoverHint.font = PonllyFonts.muralForgepon(neonLab: 13)
        bruCiuCoverHint.translatesAutoresizingMaskIntoConstraints = false
        aerErsttextureMuseWrap.addSubview(bruCiuCoverHint)

        ponlldripMuse(bruCiuNameField, streetMuse: "", colorPlan: "Room Name")
        bruCiuNameField.delegate = self
        bruCiuNameField.addTarget(self, action: #selector(bruCiuTextDidChange), for: .editingChanged)
        flckinkwallPlanView.text = "What will you talk about..."
        flckinkwallPlanView.textColor = PonllyPalette.muted
        flckinkwallPlanView.delegate = self
        flckinkwallPlanView.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .medium)
        flckinkwallPlanView.backgroundColor = PonllyPalette.panel
        flckinkwallPlanView.layer.cornerRadius = 14
        flckinkwallPlanView.layer.borderWidth = 1
        flckinkwallPlanView.layer.borderColor = PonllyPalette.line.cgColor
        flckinkwallPlanView.textContainerInset = UIEdgeInsets(top: 14, left: 12, bottom: 14, right: 12)
        flckinkwallPlanView.heightAnchor.constraint(equalToConstant: 92).isActive = true

        flckinkStackPath.addArrangedSubview(aerErsttextureMuseWrap)
        flckinkStackPath.addArrangedSubview(flckinkFormSection(title: "Room Name", content: bruCiuNameField))
        flckinkStackPath.addArrangedSubview(flckinkFormSection(title: "Room Description", content: flckinkwallPlanView))
        flckinkStackPath.addArrangedSubview(aerErstCategorySection())
        bruCiuaerosolDrafton.addTarget(self, action: #selector(flckinkNextTapped), for: .touchUpInside)
        flckinkStackPath.addArrangedSubview(bruCiuaerosolDrafton)

        NSLayoutConstraint.activate([
            ponllScrollVault.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllScrollVault.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllScrollVault.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            ponllScrollVault.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkStackPath.leadingAnchor.constraint(equalTo: ponllScrollVault.frameLayoutGuide.leadingAnchor, constant: 22),
            flckinkStackPath.trailingAnchor.constraint(equalTo: ponllScrollVault.frameLayoutGuide.trailingAnchor, constant: -22),
            flckinkStackPath.topAnchor.constraint(equalTo: ponllScrollVault.contentLayoutGuide.topAnchor, constant: 24),
            flckinkStackPath.bottomAnchor.constraint(equalTo: ponllScrollVault.contentLayoutGuide.bottomAnchor, constant: -34),
            aerErsttextureMuseWrap.heightAnchor.constraint(equalToConstant: 118),
            aerErstneonDraftton.centerXAnchor.constraint(equalTo: aerErsttextureMuseWrap.centerXAnchor),
            aerErstneonDraftton.topAnchor.constraint(equalTo: aerErsttextureMuseWrap.topAnchor),
            aerErstneonDraftton.widthAnchor.constraint(equalToConstant: 84),
            aerErstneonDraftton.heightAnchor.constraint(equalToConstant: 84),
            ponllshadowDraftiew.leadingAnchor.constraint(equalTo: aerErstneonDraftton.leadingAnchor, constant: 3),
            ponllshadowDraftiew.trailingAnchor.constraint(equalTo: aerErstneonDraftton.trailingAnchor, constant: -3),
            ponllshadowDraftiew.topAnchor.constraint(equalTo: aerErstneonDraftton.topAnchor, constant: 3),
            ponllshadowDraftiew.bottomAnchor.constraint(equalTo: aerErstneonDraftton.bottomAnchor, constant: -3),
            bruCiuCoverHint.centerXAnchor.constraint(equalTo: aerErsttextureMuseWrap.centerXAnchor),
            bruCiuCoverHint.topAnchor.constraint(equalTo: aerErstneonDraftton.bottomAnchor, constant: 8),
            bruCiuNameField.heightAnchor.constraint(equalToConstant: 50),
            bruCiuaerosolDrafton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func ponlldripMuse(_ bruCiuField: UITextField, streetMuse ponllTextValue: String, colorPlan flckinkPlaceholder: String) {
        bruCiuField.text = ponllTextValue
        bruCiuField.placeholder = flckinkPlaceholder
        bruCiuField.textColor = .white
        bruCiuField.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .medium)
        bruCiuField.backgroundColor = PonllyPalette.panel
        bruCiuField.layer.cornerRadius = 14
        bruCiuField.layer.borderWidth = 1
        bruCiuField.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 1))
        bruCiuField.leftViewMode = .always
    }

    private func flckinkFormSection(title ponllSectionTitle: String, content bruCiuSectionContent: UIView) -> UIStackView {
        let aerErstSectionStack = UIStackView()
        aerErstSectionStack.axis = .vertical
        aerErstSectionStack.spacing = 8
        let flckinkSectionLabel = UILabel()
        flckinkSectionLabel.text = ponllSectionTitle
        flckinkSectionLabel.textColor = PonllyPalette.muted
        flckinkSectionLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        aerErstSectionStack.addArrangedSubview(flckinkSectionLabel)
        aerErstSectionStack.addArrangedSubview(bruCiuSectionContent)
        return aerErstSectionStack
    }

    private func aerErstCategorySection() -> UIStackView {
        let ponllOuterStack = UIStackView()
        ponllOuterStack.axis = .vertical
        ponllOuterStack.spacing = 10
        let bruCiuCategoryLabel = UILabel()
        bruCiuCategoryLabel.text = "Select Category"
        bruCiuCategoryLabel.textColor = PonllyPalette.muted
        bruCiuCategoryLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllOuterStack.addArrangedSubview(bruCiuCategoryLabel)
        let flckinkCategoryGrid = UIStackView()
        flckinkCategoryGrid.axis = .vertical
        flckinkCategoryGrid.spacing = 10
        let aerErstRows = [["Graffiti Talk", "Music"], ["Battle Discussion", "Open Critique"]]
        for ponllRowItems in aerErstRows {
            let bruCiuRowStack = UIStackView()
            bruCiuRowStack.axis = .horizontal
            bruCiuRowStack.spacing = 10
            bruCiuRowStack.distribution = .fillEqually
            for flckinkItem in ponllRowItems {
                let aerErstCategoryButton = UIButton(type: .system)
                aerErstCategoryButton.setTitle(flckinkItem, for: .normal)
                aerErstCategoryButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
                aerErstCategoryButton.layer.cornerRadius = 12
                aerErstCategoryButton.layer.borderWidth = 1
                aerErstCategoryButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
                aerErstCategoryButton.addTarget(self, action: #selector(ponllCategoryTapped(_:)), for: .touchUpInside)
                ponllshadowForgens.append(aerErstCategoryButton)
                bruCiuRowStack.addArrangedSubview(aerErstCategoryButton)
            }
            flckinkCategoryGrid.addArrangedSubview(bruCiuRowStack)
        }
        ponllOuterStack.addArrangedSubview(flckinkCategoryGrid)
        bruCiuRefreshCategories()
        return ponllOuterStack
    }

    private func bruCiuRefreshCategories() {
        ponllshadowForgens.forEach { flckinkButton in
            let aerErstSelected = flckinkButton.title(for: .normal) == flckinkpasteForgegory
            flckinkButton.setTitleColor(aerErstSelected ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
            flckinkButton.layer.borderColor = (aerErstSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
            flckinkButton.backgroundColor = aerErstSelected ? PonllyPalette.pink.withAlphaComponent(0.08) : PonllyPalette.panel
        }
    }

    private func flckinkUpdateNextState() {
        let ponllReady = !(bruCiuNameField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        bruCiuaerosolDrafton.isEnabled = ponllReady
        bruCiuaerosolDrafton.alpha = ponllReady ? 1 : 0.45
    }

    @objc private func ponllCategoryTapped(_ aerErstSender: UIButton) {
        flckinkpasteForgegory = aerErstSender.title(for: .normal) ?? flckinkpasteForgegory
        bruCiuRefreshCategories()
    }

    @objc private func bruCiuTextDidChange() {
        flckinkUpdateNextState()
    }

    @objc private func aerErstCoverTapped() {
        let ponllSheet = UIAlertController(title: "Room Cover", message: nil, preferredStyle: .actionSheet)
        ponllSheet.addAction(UIAlertAction(title: "Photo Library", style: .default) { _ in self.flckinkPresentCoverPicker(.photoLibrary) })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            ponllSheet.addAction(UIAlertAction(title: "Camera", style: .default) { _ in self.flckinkPresentCoverPicker(.camera) })
        }
        ponllSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        if let bruCiuPopover = ponllSheet.popoverPresentationController {
            bruCiuPopover.sourceView = aerErstneonDraftton
            bruCiuPopover.sourceRect = aerErstneonDraftton.bounds
        }
        present(ponllSheet, animated: true)
    }

    private func flckinkPresentCoverPicker(_ aerErstSource: UIImagePickerController.SourceType) {
        let ponllPicker = UIImagePickerController()
        ponllPicker.sourceType = aerErstSource
        ponllPicker.allowsEditing = true
        ponllPicker.delegate = self
        present(ponllPicker, animated: true)
    }

    func imagePickerController(_ ponllPicker: UIImagePickerController, didFinishPickingMediaWithInfo bruCiuInfo: [UIImagePickerController.InfoKey: Any]) {
        aerErstCoverImage = (bruCiuInfo[.editedImage] as? UIImage) ?? (bruCiuInfo[.originalImage] as? UIImage)
        ponllshadowDraftiew.image = aerErstCoverImage
        ponllPicker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ flckinkPicker: UIImagePickerController) {
        flckinkPicker.dismiss(animated: true)
    }

    func textViewDidBeginEditing(_ aerErstTextView: UITextView) {
        if aerErstTextView.text == "What will you talk about..." {
            aerErstTextView.text = ""
            aerErstTextView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ ponllTextView: UITextView) {
        if ponllTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            ponllTextView.text = "What will you talk about..."
            ponllTextView.textColor = PonllyPalette.muted
        }
    }

    @objc private func flckinkNextTapped() {
        let aerErstDraft = BruCiuOutlinePlan(
            flckinkPrimerCoatpon: bruCiuNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "Vandal Street Legends",
            bruCiuSilverSheenpon: flckinkwallPlanView.text == "What will you talk about..." ? "" : flckinkwallPlanView.text,
            ponllWhiteEdgepon: flckinkpasteForgegory,
            aerErstBlackOutlinepon: aerErstCoverImage
        )
        navigationController?.pushViewController(RErstSteelGateController(bruCiuPaintedFence: aerErstDraft), animated: true)
    }

    @objc private func ponllKeyboardWillShow(_ bruCiuNote: Notification) {
        guard let flckinkFrame = bruCiuNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let aerErstBottomInset = max(flckinkFrame.height - view.safeAreaInsets.bottom, 0) + 22
        ponllScrollVault.contentInset.bottom = aerErstBottomInset
        ponllScrollVault.verticalScrollIndicatorInsets.bottom = aerErstBottomInset
    }

    @objc private func bruCiuKeyboardWillHide(_ ponllNote: Notification) {
        ponllScrollVault.contentInset.bottom = 0
        ponllScrollVault.verticalScrollIndicatorInsets.bottom = 0
    }
}
