import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllybruCiuRailYardtroller: UIViewController, UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let ponllScrollCanvas = UIScrollView()
    private let bruCiuaerErstCurveFlow = UITextField()
    private let flckinkBioView = UITextView()
    private let aerErstCountLabel = UILabel()
    private let bruCiuDripMarker = UIImageView()
    private let bruCiuflckinkSqueezeMarker = UIImageView()
    private var flckinkaerErstSolidMarker: UIImage?
    private var aerErstPendingCoverImage: UIImage?
    private enum PonllImageTarget {
        case bruCiuAvatar
        case flckinkCover
    }
    private var ponllImageTarget: PonllImageTarget = .bruCiuAvatar
    private var bruCiuSelectedTags = Set(PonllyponllTornEdge.ponllPipeShadowInterests)
    private let flckinkAllTags = ["Wildstyle", "Chrome Letters", "Street Art", "Characters", "Stencil", "Throw-Ups", "Murals", "Calligraphy"]
    private var aerErstTagButtons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        ponllbruCiuShadowWall()
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiuflckinkWallTexture(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkponllPaintLayere(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func ponllbruCiuShadowWall() {
        ponllScrollCanvas.keyboardDismissMode = .onDrag
        ponllScrollCanvas.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllScrollCanvas)
        let bruCiuStackPath = UIStackView()
        bruCiuStackPath.axis = .vertical
        bruCiuStackPath.spacing = 22
        bruCiuStackPath.translatesAutoresizingMaskIntoConstraints = false
        ponllScrollCanvas.addSubview(bruCiuStackPath)
        let flckinkHeader = aerErstProfileHeader()
        bruCiuStackPath.addArrangedSubview(flckinkHeader)

        let aerErstUser = PonllyponllTornEdge.ponllBrickFacade()
        flckinkflckinkRollerPaste(bruCiuaerErstCurveFlow, aerErstUser.aerosolDream)
        flckinkBioView.text = aerErstUser.urbanCanvas
        flckinkBioView.textColor = .white
        flckinkBioView.font = PonllyFonts.utilityBox(blankFacade: 15, aerosolMuse: .regular)
        flckinkBioView.backgroundColor = PonllyPalette.panel
        flckinkBioView.layer.cornerRadius = 16
        flckinkBioView.layer.borderWidth = 1
        flckinkBioView.layer.borderColor = PonllyPalette.line.cgColor
        flckinkBioView.textContainerInset = UIEdgeInsets(top: 16, left: 14, bottom: 16, right: 14)
        flckinkBioView.delegate = self
        flckinkBioView.heightAnchor.constraint(equalToConstant: 124).isActive = true
        ponllUpdateCountLabel()

        let ponllFormStack = UIStackView()
        ponllFormStack.axis = .vertical
        ponllFormStack.spacing = 20
        ponllFormStack.translatesAutoresizingMaskIntoConstraints = false
        ponllFormStack.addArrangedSubview(bruCiuFormSection("Username", bruCiuaerErstCurveFlow))
        ponllFormStack.addArrangedSubview(flckinkBioSection())
        ponllFormStack.addArrangedSubview(aerErstTagsSection())
        let bruCiuFormWrap = UIView()
        bruCiuFormWrap.addSubview(ponllFormStack)
        bruCiuStackPath.addArrangedSubview(bruCiuFormWrap)

        let flckinkBottomBar = UIView()
        flckinkBottomBar.backgroundColor = PonllyPalette.background
        flckinkBottomBar.layer.borderWidth = 1
        flckinkBottomBar.layer.borderColor = PonllyPalette.line.cgColor
        flckinkBottomBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkBottomBar)
        let aerErstSaveButton = PonllyNeonButton("Save Changes")
        aerErstSaveButton.addTarget(self, action: #selector(ponllSaveTapped), for: .touchUpInside)
        flckinkBottomBar.addSubview(aerErstSaveButton)

        NSLayoutConstraint.activate([
            flckinkHeader.heightAnchor.constraint(equalToConstant: 292),
            ponllScrollCanvas.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ponllScrollCanvas.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ponllScrollCanvas.topAnchor.constraint(equalTo: view.topAnchor),
            ponllScrollCanvas.bottomAnchor.constraint(equalTo: flckinkBottomBar.topAnchor),
            bruCiuStackPath.leadingAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.leadingAnchor),
            bruCiuStackPath.trailingAnchor.constraint(equalTo: ponllScrollCanvas.frameLayoutGuide.trailingAnchor),
            bruCiuStackPath.topAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.topAnchor),
            bruCiuStackPath.bottomAnchor.constraint(equalTo: ponllScrollCanvas.contentLayoutGuide.bottomAnchor, constant: -28),
            ponllFormStack.leadingAnchor.constraint(equalTo: bruCiuFormWrap.leadingAnchor, constant: 20),
            ponllFormStack.trailingAnchor.constraint(equalTo: bruCiuFormWrap.trailingAnchor, constant: -20),
            ponllFormStack.topAnchor.constraint(equalTo: bruCiuFormWrap.topAnchor),
            ponllFormStack.bottomAnchor.constraint(equalTo: bruCiuFormWrap.bottomAnchor),
            flckinkBottomBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            flckinkBottomBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            flckinkBottomBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkBottomBar.heightAnchor.constraint(equalToConstant: 112),
            aerErstSaveButton.leadingAnchor.constraint(equalTo: flckinkBottomBar.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            aerErstSaveButton.trailingAnchor.constraint(equalTo: flckinkBottomBar.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aerErstSaveButton.topAnchor.constraint(equalTo: flckinkBottomBar.topAnchor, constant: 22),
            aerErstSaveButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func aerErstProfileHeader() -> UIView {
        let ponllHeader = UIView()
        ponllHeader.translatesAutoresizingMaskIntoConstraints = false
        bruCiuDripMarker.image = PonllyponllTornEdge.ponllBlankFacade() ?? UIImage(named: "graffiti_challenge_wall_03")
        bruCiuDripMarker.contentMode = .scaleAspectFill
        bruCiuDripMarker.clipsToBounds = true
        bruCiuDripMarker.alpha = 0.78
        bruCiuDripMarker.translatesAutoresizingMaskIntoConstraints = false
        ponllHeader.addSubview(bruCiuDripMarker)
        let bruCiuShade = PonllyponllCyanGlowView(bruCiuDripMarker: [UIColor.black.withAlphaComponent(0.2), PonllyPalette.background], CGPoint(x: 0.5, y: 0), CGPoint(x: 0.5, y: 1))
        ponllHeader.addSubview(bruCiuShade)
        bruCiuShade.woodPanelPonlly(steelGate: ponllHeader)

        let aerErstSprayShieldButton = ponllRoundHeaderButton("chevron.left", action: #selector(aerErstBackTapped))
        ponllHeader.addSubview(aerErstSprayShieldButton)
        let aerErstTitleLabel = UILabel()
        aerErstTitleLabel.text = "Edit Profile"
        aerErstTitleLabel.textColor = .white
        aerErstTitleLabel.font = PonllyFonts.muralForgepon(neonLab: 24)
        aerErstTitleLabel.textAlignment = .center
        aerErstTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        ponllHeader.addSubview(aerErstTitleLabel)
        let ponllChangeCoverButton = UIButton(type: .system)
        ponllChangeCoverButton.setTitle("Change Cover", for: .normal)
        ponllChangeCoverButton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        ponllChangeCoverButton.tintColor = .white
        ponllChangeCoverButton.setTitleColor(.white, for: .normal)
        ponllChangeCoverButton.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .bold)
        ponllChangeCoverButton.backgroundColor = UIColor.black.withAlphaComponent(0.58)
        ponllChangeCoverButton.layer.cornerRadius = 18
        ponllChangeCoverButton.translatesAutoresizingMaskIntoConstraints = false
        ponllChangeCoverButton.addTarget(self, action: #selector(flckinkCoverTapped), for: .touchUpInside)
        ponllHeader.addSubview(ponllChangeCoverButton)

        bruCiuflckinkSqueezeMarker.image = PonllyponllTornEdge.bruCiuUtilityBox(flckinkTrafficBarrier: PonllyponllTornEdge.ponllBrickFacade())
        bruCiuflckinkSqueezeMarker.contentMode = .scaleAspectFill
        bruCiuflckinkSqueezeMarker.clipsToBounds = true
        bruCiuflckinkSqueezeMarker.layer.cornerRadius = 48
        bruCiuflckinkSqueezeMarker.layer.borderWidth = 4
        bruCiuflckinkSqueezeMarker.layer.borderColor = PonllyPalette.pink.cgColor
        bruCiuflckinkSqueezeMarker.translatesAutoresizingMaskIntoConstraints = false
        ponllHeader.addSubview(bruCiuflckinkSqueezeMarker)
        let bruCiuCameraButton = UIButton(type: .system)
        bruCiuCameraButton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        bruCiuCameraButton.tintColor = .white
        bruCiuCameraButton.backgroundColor = PonllyPalette.pink
        bruCiuCameraButton.layer.cornerRadius = 20
        bruCiuCameraButton.translatesAutoresizingMaskIntoConstraints = false
        bruCiuCameraButton.addTarget(self, action: #selector(bruCiuAvatarTapped), for: .touchUpInside)
        ponllHeader.addSubview(bruCiuCameraButton)

        NSLayoutConstraint.activate([
            bruCiuDripMarker.leadingAnchor.constraint(equalTo: ponllHeader.leadingAnchor),
            bruCiuDripMarker.trailingAnchor.constraint(equalTo: ponllHeader.trailingAnchor),
            bruCiuDripMarker.topAnchor.constraint(equalTo: ponllHeader.topAnchor),
            bruCiuDripMarker.heightAnchor.constraint(equalToConstant: 232),
            aerErstSprayShieldButton.leadingAnchor.constraint(equalTo: ponllHeader.leadingAnchor, constant: 20),
            aerErstSprayShieldButton.topAnchor.constraint(equalTo: ponllHeader.topAnchor, constant: 56),
            aerErstTitleLabel.centerXAnchor.constraint(equalTo: ponllHeader.centerXAnchor),
            aerErstTitleLabel.centerYAnchor.constraint(equalTo: aerErstSprayShieldButton.centerYAnchor),
            ponllChangeCoverButton.trailingAnchor.constraint(equalTo: ponllHeader.trailingAnchor, constant: -16),
            ponllChangeCoverButton.bottomAnchor.constraint(equalTo: bruCiuDripMarker.bottomAnchor, constant: -16),
            ponllChangeCoverButton.widthAnchor.constraint(equalToConstant: 132),
            ponllChangeCoverButton.heightAnchor.constraint(equalToConstant: 40),
            bruCiuflckinkSqueezeMarker.centerXAnchor.constraint(equalTo: ponllHeader.centerXAnchor),
            bruCiuflckinkSqueezeMarker.centerYAnchor.constraint(equalTo: bruCiuDripMarker.bottomAnchor),
            bruCiuflckinkSqueezeMarker.widthAnchor.constraint(equalToConstant: 96),
            bruCiuflckinkSqueezeMarker.heightAnchor.constraint(equalToConstant: 96),
            bruCiuCameraButton.trailingAnchor.constraint(equalTo: bruCiuflckinkSqueezeMarker.trailingAnchor, constant: 2),
            bruCiuCameraButton.bottomAnchor.constraint(equalTo: bruCiuflckinkSqueezeMarker.bottomAnchor, constant: 2),
            bruCiuCameraButton.widthAnchor.constraint(equalToConstant: 40),
            bruCiuCameraButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        return ponllHeader
    }

    private func flckinkflckinkRollerPaste(_ bruCiuField: UITextField, _ flckinkTextValue: String) {
        bruCiuField.text = flckinkTextValue
        bruCiuField.textColor = .white
        bruCiuField.font = PonllyFonts.utilityBox(blankFacade: 15, aerosolMuse: .regular)
        bruCiuField.backgroundColor = PonllyPalette.panel
        bruCiuField.layer.cornerRadius = 16
        bruCiuField.layer.borderWidth = 1
        bruCiuField.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        bruCiuField.leftViewMode = .always
        bruCiuField.heightAnchor.constraint(equalToConstant: 58).isActive = true
    }

    private func bruCiuFormSection(_ ponllTitle: String, _ aerErstContent: UIView) -> UIStackView {
        let flckinkStackPath = UIStackView()
        flckinkStackPath.axis = .vertical
        flckinkStackPath.spacing = 10
        let bruCiuLabel = UILabel()
        bruCiuLabel.text = ponllTitle
        bruCiuLabel.textColor = PonllyPalette.muted
        bruCiuLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkStackPath.addArrangedSubview(bruCiuLabel)
        flckinkStackPath.addArrangedSubview(aerErstContent)
        return flckinkStackPath
    }

    private func flckinkBioSection() -> UIStackView {
        let ponllOuterStack = UIStackView()
        ponllOuterStack.axis = .vertical
        ponllOuterStack.spacing = 10
        let bruCiuRowStack = UIStackView()
        bruCiuRowStack.axis = .horizontal
        let flckinkLabel = UILabel()
        flckinkLabel.text = "Bio"
        flckinkLabel.textColor = PonllyPalette.muted
        flckinkLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        aerErstCountLabel.textColor = PonllyPalette.muted
        aerErstCountLabel.font = PonllyFonts.steelGate(rollingShutter: 12)
        bruCiuRowStack.addArrangedSubview(flckinkLabel)
        bruCiuRowStack.addArrangedSubview(UIView())
        bruCiuRowStack.addArrangedSubview(aerErstCountLabel)
        ponllOuterStack.addArrangedSubview(bruCiuRowStack)
        ponllOuterStack.addArrangedSubview(flckinkBioView)
        return ponllOuterStack
    }

    private func aerErstTagsSection() -> UIStackView {
        let ponllOuterStack = UIStackView()
        ponllOuterStack.axis = .vertical
        ponllOuterStack.spacing = 12
        let bruCiuTitleLabel = UILabel()
        bruCiuTitleLabel.text = "Interest Tags"
        bruCiuTitleLabel.textColor = PonllyPalette.muted
        bruCiuTitleLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        let flckinkHintLabel = UILabel()
        flckinkHintLabel.text = "Select Up To 5"
        flckinkHintLabel.textColor = PonllyPalette.muted
        flckinkHintLabel.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        ponllOuterStack.addArrangedSubview(bruCiuTitleLabel)
        ponllOuterStack.addArrangedSubview(flckinkHintLabel)
        let aerErstRows = [["Wildstyle", "Chrome Letters", "Street Art"], ["Characters", "Stencil", "Throw-Ups", "Murals"], ["Calligraphy"]]
        for ponllTags in aerErstRows {
            let bruCiuRowStack = UIStackView()
            bruCiuRowStack.axis = .horizontal
            bruCiuRowStack.alignment = .leading
            bruCiuRowStack.spacing = 8
            ponllTags.forEach { flckinkTag in
                let aerErstTagButton = UIButton(type: .system)
                aerErstTagButton.setTitle(flckinkTag, for: .normal)
                aerErstTagButton.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .medium)
                aerErstTagButton.layer.cornerRadius = 18
                aerErstTagButton.layer.borderWidth = 1
                aerErstTagButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
                aerErstTagButton.widthAnchor.constraint(greaterThanOrEqualToConstant: flckinkTag.count > 9 ? 128 : 92).isActive = true
                aerErstTagButton.addTarget(self, action: #selector(aerErstTagTapped(_:)), for: .touchUpInside)
                aerErstTagButtons.append(aerErstTagButton)
                bruCiuRowStack.addArrangedSubview(aerErstTagButton)
            }
            bruCiuRowStack.addArrangedSubview(UIView())
            ponllOuterStack.addArrangedSubview(bruCiuRowStack)
        }
        bruCiuRefreshTags()
        return ponllOuterStack
    }

    private func ponllRoundHeaderButton(_ bruCiuSymbol: String, action aerErstAction: Selector) -> UIButton {
        let flckinkButton = UIButton(type: .system)
        flckinkButton.setImage(UIImage(systemName: bruCiuSymbol), for: .normal)
        flckinkButton.tintColor = .white
        flckinkButton.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkButton.layer.cornerRadius = 30
        flckinkButton.layer.borderWidth = 1
        flckinkButton.layer.borderColor = PonllyPalette.line.cgColor
        flckinkButton.translatesAutoresizingMaskIntoConstraints = false
        flckinkButton.addTarget(self, action: aerErstAction, for: .touchUpInside)
        flckinkButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        flckinkButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return flckinkButton
    }

    private func bruCiuRefreshTags() {
        aerErstTagButtons.forEach { ponllButton in
            let bruCiuText = ponllButton.title(for: .normal) ?? ""
            let flckinkSelected = bruCiuSelectedTags.contains(bruCiuText)
            ponllButton.backgroundColor = flckinkSelected ? PonllyPalette.pink.withAlphaComponent(0.14) : PonllyPalette.panel
            ponllButton.setTitleColor(flckinkSelected ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
            ponllButton.layer.borderColor = (flckinkSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        }
    }

    private func ponllUpdateCountLabel() {
        aerErstCountLabel.text = "\(min(flckinkBioView.text.count, 200))/200"
    }

    func textViewDidChange(_ aerErstTextView: UITextView) {
        if aerErstTextView.text.count > 200 {
            aerErstTextView.text = String(aerErstTextView.text.prefix(200))
        }
        ponllUpdateCountLabel()
    }

    @objc private func aerErstTagTapped(_ ponllSender: UIButton) {
        guard let bruCiuTag = ponllSender.title(for: .normal) else { return }
        if bruCiuSelectedTags.contains(bruCiuTag) {
            bruCiuSelectedTags.remove(bruCiuTag)
        } else if bruCiuSelectedTags.count < 5 {
            bruCiuSelectedTags.insert(bruCiuTag)
        } else {
            aerErstSketchRush("Choose up to five tags", bruCiuLetterForm: .bruCiuSilverSheen)
        }
        bruCiuRefreshTags()
    }

    @objc private func ponllSaveTapped() {
        let flckinkName = bruCiuaerErstCurveFlow.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        guard !flckinkName.isEmpty else {
            aerErstSketchRush("Username is required", bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        aerErstSketchRush("Saving profile...", bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.7)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
            PonllyponllTornEdge.updatebruCiuNightWall(flckinkDawnWall: flckinkName, aerErstRainWall: self.flckinkBioView.text, ponllSunlitWall: Array(self.bruCiuSelectedTags))
            PonllyponllTornEdge.saveCurrentaerErstBlackOutline(ponllWhiteEdge: self.flckinkaerErstSolidMarker, bruCiuSilverSheen: self.aerErstPendingCoverImage)
            self.aerErstSketchRush("Profile updated", bruCiuLetterForm: .flckinkSplitFill)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    @objc private func bruCiuAvatarTapped() {
        ponllImageTarget = .bruCiuAvatar
        aerErstShowImagePicker()
    }

    @objc private func flckinkCoverTapped() {
        ponllImageTarget = .flckinkCover
        aerErstShowImagePicker()
    }

    private func aerErstShowImagePicker() {
        let bruCiuPicker = UIImagePickerController()
        bruCiuPicker.sourceType = .photoLibrary
        bruCiuPicker.allowsEditing = true
        bruCiuPicker.delegate = self
        present(bruCiuPicker, animated: true)
    }

    func imagePickerController(_ bruCiuPicker: UIImagePickerController, didFinishPickingMediaWithInfo flckinkInfo: [UIImagePickerController.InfoKey: Any]) {
        let ponllImage = (flckinkInfo[.editedImage] as? UIImage) ?? (flckinkInfo[.originalImage] as? UIImage)
        if let ponllImage {
            switch ponllImageTarget {
            case .bruCiuAvatar:
                flckinkaerErstSolidMarker = ponllImage
                bruCiuflckinkSqueezeMarker.image = ponllImage
            case .flckinkCover:
                aerErstPendingCoverImage = ponllImage
                bruCiuDripMarker.image = ponllImage
            }
        }
        bruCiuPicker.dismiss(animated: true) {
            self.aerErstSketchRush("Image selected", bruCiuLetterForm: .flckinkSplitFill)
        }
    }

    func imagePickerControllerDidCancel(_ ponllPicker: UIImagePickerController) {
        ponllPicker.dismiss(animated: true)
    }

    @objc private func aerErstBackTapped() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func bruCiuflckinkWallTexture(_ ponllNote: Notification) {
        guard let flckinkFrame = ponllNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let aerErstBottomInset = max(flckinkFrame.height - view.safeAreaInsets.bottom, 0) + 18
        ponllScrollCanvas.contentInset.bottom = aerErstBottomInset
        ponllScrollCanvas.verticalScrollIndicatorInsets.bottom = aerErstBottomInset
    }

    @objc private func flckinkponllPaintLayere(_ ponllNote: Notification) {
        ponllScrollCanvas.contentInset.bottom = 0
        ponllScrollCanvas.verticalScrollIndicatorInsets.bottom = 0
    }
}
