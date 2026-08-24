import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllystencilCascadeTroller: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    private let scrollView = UIScrollView()
    private let nameField = UITextField()
    private let detailView = UITextView()
    private let coverButton = UIButton(type: .system)
    private let coverImageView = UIImageView()
    private let nextButton = PonllyNeonButton(title: "Next Step")
    private var selectedCategory = "Graffiti Talk"
    private var coverImage: UIImage?
    private var categoryButtons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create Voice Room"
        view.backgroundColor = PonllyPalette.background
        setup()
        updateNextState()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        scrollView.keyboardDismissMode = .onDrag
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)

        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 22
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let coverWrap = UIView()
        coverWrap.translatesAutoresizingMaskIntoConstraints = false
        coverButton.backgroundColor = PonllyPalette.panel
        coverButton.layer.cornerRadius = 42
        coverButton.layer.borderWidth = 2
        coverButton.layer.borderColor = PonllyPalette.cyan.cgColor
        coverButton.setImage(UIImage(systemName: "camera.fill"), for: .normal)
        coverButton.tintColor = PonllyPalette.cyan
        coverButton.translatesAutoresizingMaskIntoConstraints = false
        coverButton.addTarget(self, action: #selector(coverTapped), for: .touchUpInside)
        coverWrap.addSubview(coverButton)
        coverImageView.image = UIImage(named: "graffiti_challenge_wall_04")
        coverImageView.contentMode = .scaleAspectFill
        coverImageView.clipsToBounds = true
        coverImageView.layer.cornerRadius = 39
        coverImageView.translatesAutoresizingMaskIntoConstraints = false
        coverButton.addSubview(coverImageView)
        let coverHint = UILabel()
        coverHint.text = "Tap To Upload Cover"
        coverHint.textColor = PonllyPalette.cyan
        coverHint.textAlignment = .center
        coverHint.font = PonllyFonts.display(size: 13)
        coverHint.translatesAutoresizingMaskIntoConstraints = false
        coverWrap.addSubview(coverHint)

        configureField(nameField, text: "Vandal Street Legends", placeholder: "Room Name")
        nameField.delegate = self
        nameField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        detailView.text = "What will you talk about..."
        detailView.textColor = PonllyPalette.muted
        detailView.delegate = self
        detailView.font = PonllyFonts.body(size: 16, weight: .medium)
        detailView.backgroundColor = PonllyPalette.panel
        detailView.layer.cornerRadius = 14
        detailView.layer.borderWidth = 1
        detailView.layer.borderColor = PonllyPalette.line.cgColor
        detailView.textContainerInset = UIEdgeInsets(top: 14, left: 12, bottom: 14, right: 12)
        detailView.heightAnchor.constraint(equalToConstant: 92).isActive = true

        stack.addArrangedSubview(coverWrap)
        stack.addArrangedSubview(formSection(title: "Room Name", content: nameField))
        stack.addArrangedSubview(formSection(title: "Room Description", content: detailView))
        stack.addArrangedSubview(categorySection())
        nextButton.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        stack.addArrangedSubview(nextButton)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 22),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -22),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 24),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34),
            coverWrap.heightAnchor.constraint(equalToConstant: 118),
            coverButton.centerXAnchor.constraint(equalTo: coverWrap.centerXAnchor),
            coverButton.topAnchor.constraint(equalTo: coverWrap.topAnchor),
            coverButton.widthAnchor.constraint(equalToConstant: 84),
            coverButton.heightAnchor.constraint(equalToConstant: 84),
            coverImageView.leadingAnchor.constraint(equalTo: coverButton.leadingAnchor, constant: 3),
            coverImageView.trailingAnchor.constraint(equalTo: coverButton.trailingAnchor, constant: -3),
            coverImageView.topAnchor.constraint(equalTo: coverButton.topAnchor, constant: 3),
            coverImageView.bottomAnchor.constraint(equalTo: coverButton.bottomAnchor, constant: -3),
            coverHint.centerXAnchor.constraint(equalTo: coverWrap.centerXAnchor),
            coverHint.topAnchor.constraint(equalTo: coverButton.bottomAnchor, constant: 8),
            nameField.heightAnchor.constraint(equalToConstant: 50),
            nextButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func configureField(_ field: UITextField, text: String, placeholder: String) {
        field.text = text
        field.placeholder = placeholder
        field.textColor = .white
        field.font = PonllyFonts.body(size: 16, weight: .medium)
        field.backgroundColor = PonllyPalette.panel
        field.layer.cornerRadius = 14
        field.layer.borderWidth = 1
        field.layer.borderColor = PonllyPalette.line.cgColor
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 14, height: 1))
        field.leftViewMode = .always
    }

    private func formSection(title: String, content: UIView) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        let label = UILabel()
        label.text = title
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(content)
        return stack
    }

    private func categorySection() -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let label = UILabel()
        label.text = "Select Category"
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 14)
        outer.addArrangedSubview(label)
        let grid = UIStackView()
        grid.axis = .vertical
        grid.spacing = 10
        let rows = [["Graffiti Talk", "Music"], ["Battle Discussion", "Open Critique"]]
        for rowItems in rows {
            let row = UIStackView()
            row.axis = .horizontal
            row.spacing = 10
            row.distribution = .fillEqually
            for item in rowItems {
                let button = UIButton(type: .system)
                button.setTitle(item, for: .normal)
                button.titleLabel?.font = PonllyFonts.display(size: 14)
                button.layer.cornerRadius = 12
                button.layer.borderWidth = 1
                button.heightAnchor.constraint(equalToConstant: 38).isActive = true
                button.addTarget(self, action: #selector(categoryTapped(_:)), for: .touchUpInside)
                categoryButtons.append(button)
                row.addArrangedSubview(button)
            }
            grid.addArrangedSubview(row)
        }
        outer.addArrangedSubview(grid)
        refreshCategories()
        return outer
    }

    private func refreshCategories() {
        categoryButtons.forEach { button in
            let selected = button.title(for: .normal) == selectedCategory
            button.setTitleColor(selected ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
            button.layer.borderColor = (selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
            button.backgroundColor = selected ? PonllyPalette.pink.withAlphaComponent(0.08) : PonllyPalette.panel
        }
    }

    private func updateNextState() {
        let ready = !(nameField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        nextButton.isEnabled = ready
        nextButton.alpha = ready ? 1 : 0.45
    }

    @objc private func categoryTapped(_ sender: UIButton) {
        selectedCategory = sender.title(for: .normal) ?? selectedCategory
        refreshCategories()
    }

    @objc private func textDidChange() {
        updateNextState()
    }

    @objc private func coverTapped() {
        let sheet = UIAlertController(title: "Room Cover", message: nil, preferredStyle: .actionSheet)
        sheet.addAction(UIAlertAction(title: "Photo Library", style: .default) { _ in self.presentCoverPicker(.photoLibrary) })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            sheet.addAction(UIAlertAction(title: "Camera", style: .default) { _ in self.presentCoverPicker(.camera) })
        }
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        if let popover = sheet.popoverPresentationController {
            popover.sourceView = coverButton
            popover.sourceRect = coverButton.bounds
        }
        present(sheet, animated: true)
    }

    private func presentCoverPicker(_ source: UIImagePickerController.SourceType) {
        let picker = UIImagePickerController()
        picker.sourceType = source
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        coverImage = (info[.editedImage] as? UIImage) ?? (info[.originalImage] as? UIImage)
        coverImageView.image = coverImage
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "What will you talk about..." {
            textView.text = ""
            textView.textColor = .white
        }
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            textView.text = "What will you talk about..."
            textView.textColor = PonllyPalette.muted
        }
    }

    @objc private func nextTapped() {
        let draft = BruCiuOutlinePlan(
            name: nameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "Vandal Street Legends",
            details: detailView.text == "What will you talk about..." ? "" : detailView.text,
            category: selectedCategory,
            coverImage: coverImage
        )
        navigationController?.pushViewController(RErstSteelGateController(draft: draft), animated: true)
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bottom = max(frame.height - view.safeAreaInsets.bottom, 0) + 22
        scrollView.contentInset.bottom = bottom
        scrollView.verticalScrollIndicatorInsets.bottom = bottom
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
