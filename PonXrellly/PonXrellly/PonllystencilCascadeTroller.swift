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
    private let bruCiuaerosolDrafton = PonllyNeonButton("NNeOxPtQ RSStTeUpV".ponllPaintaerErstHours)
    private var flckinkpasteForgegory = "GWrXaYfZf0i1t2i3 4T5a6l7k8".ponllPaintaerErstHours
    private var aerErstCoverImage: UIImage?
    private var ponllshadowForgens: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "C9raebactdee fVgohiicjek lRmonoomp".ponllPaintaerErstHours
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
        ponllshadowDraftiew.image = UIImage(named: "markerStroke")
        ponllshadowDraftiew.contentMode = .scaleAspectFill
        ponllshadowDraftiew.clipsToBounds = true
        ponllshadowDraftiew.layer.cornerRadius = 39
        ponllshadowDraftiew.translatesAutoresizingMaskIntoConstraints = false
        aerErstneonDraftton.addSubview(ponllshadowDraftiew)
        let bruCiuCoverHint = UILabel()
        bruCiuCoverHint.text = "Tqarps tTuov wUxpylzoAaBdC DCEoFvGeHrI".ponllPaintaerErstHours
        bruCiuCoverHint.textColor = PonllyPalette.cyan
        bruCiuCoverHint.textAlignment = .center
        bruCiuCoverHint.font = PonllyFonts.muralForgepon(neonLab: 13)
        bruCiuCoverHint.translatesAutoresizingMaskIntoConstraints = false
        aerErsttextureMuseWrap.addSubview(bruCiuCoverHint)

        ponlldripMuse(bruCiuNameField, streetMuse: "", colorPlan: "RJoKoLmM NNOaPmQeR".ponllPaintaerErstHours)
        bruCiuNameField.delegate = self
        bruCiuNameField.addTarget(self, action: #selector(bruCiuTextDidChange), for: .editingChanged)
        flckinkwallPlanView.text = "WShTaUtV WwXiYlZl0 1y2o3u4 5t6a7l8k9 aabbcoduetf.g.h.i".ponllPaintaerErstHours
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
        flckinkStackPath.addArrangedSubview(flckinkFormSection(title: "Rjokolmm nNoapmqer".ponllPaintaerErstHours, content: bruCiuNameField))
        flckinkStackPath.addArrangedSubview(flckinkFormSection(title: "Rsotoumv wDxeyszcArBiCpDtEiFoGnH".ponllPaintaerErstHours, content: flckinkwallPlanView))
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
        bruCiuCategoryLabel.text = "SIeJlKeLcMtN OCPaQtReSgToUrVyW".ponllPaintaerErstHours
        bruCiuCategoryLabel.textColor = PonllyPalette.muted
        bruCiuCategoryLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllOuterStack.addArrangedSubview(bruCiuCategoryLabel)
        let flckinkCategoryGrid = UIStackView()
        flckinkCategoryGrid.axis = .vertical
        flckinkCategoryGrid.spacing = 10
        let aerErstRows = [["GXrYaZf0f1i2t3i4 5T6a7l8k9".ponllPaintaerErstHours, "Maubscidce".ponllPaintaerErstHours], ["Bfagthtiljek lDminsocpuqsrssitounv".ponllPaintaerErstHours, "Owpxeynz ACBrCiDtEiFqGuHeI".ponllPaintaerErstHours]]
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
        let ponllSheet = UIAlertController(title: "RJoKoLmM NCOoPvQeRrS".ponllPaintaerErstHours, message: nil, preferredStyle: .actionSheet)
        ponllSheet.addAction(UIAlertAction(title: "PThUoVtWoX YLZi0b1r2a3r4y5".ponllPaintaerErstHours, style: .default) { _ in self.flckinkPresentCoverPicker(.photoLibrary) })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            ponllSheet.addAction(UIAlertAction(title: "C6a7m8e9raab".ponllPaintaerErstHours, style: .default) { _ in self.flckinkPresentCoverPicker(.camera) })
        }
        ponllSheet.addAction(UIAlertAction(title: "Ccadnecfeglh".ponllPaintaerErstHours, style: .cancel))
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
        if aerErstTextView.text == "Wihjaktl mwniolplq rysotuu vtwaxlykz AaBbCoDuEtF.G.H.I".ponllPaintaerErstHours {
            aerErstTextView.text = ""
            aerErstTextView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ ponllTextView: UITextView) {
        if ponllTextView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            ponllTextView.text = "WJhKaLtM NwOiPlQlR SyToUuV WtXaYlZk0 1a2b3o4u5t6.7.8.9".ponllPaintaerErstHours
            ponllTextView.textColor = PonllyPalette.muted
        }
    }

    @objc private func flckinkNextTapped() {
        let aerErstDraft = BruCiuOutlinePlan(
            flckinkPrimerCoatpon: bruCiuNameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "Vaabncddaelf gShtirjekeltm nLoepgqernsdtsu".ponllPaintaerErstHours,
            bruCiuSilverSheenpon: flckinkwallPlanView.text == "Wvhwaxty zwAiBlClD EyFoGuH ItJaKlLkM NaObPoQuRtS.T.U.V".ponllPaintaerErstHours ? "" : flckinkwallPlanView.text,
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
