import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PponllPaintMapController: UIViewController {
    private let titleField = UITextField()
    private let desc = UITextView()
    private let scrollView = UIScrollView()
    private var selectedTheme = "Wildstyle"
    private var selectedDuration = "24 Hours"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Battle Settings"
        view.backgroundColor = PonllyPalette.background
        setup()
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
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        titleField.text = "Wildstyle Showdown"
        configureTextField(titleField)
        desc.text = "Bring Your Absolute Best Chrome Letters And Sharp Outlines to This Burner Arena"
        desc.textColor = .white
        desc.backgroundColor = PonllyPalette.panel
        desc.layer.cornerRadius = 16
        desc.font = PonllyFonts.body(size: 14, weight: .medium)
        desc.heightAnchor.constraint(equalToConstant: 130).isActive = true
        stack.addArrangedSubview(section("Battle Title", content: titleField))
        stack.addArrangedSubview(chips("Battle Theme", items: ["Wildstyle", "Character", "Black And White", "Free Style"], selected: selectedTheme))
        stack.addArrangedSubview(section("Battle Description", content: desc))
        stack.addArrangedSubview(chips("Battle Duration", items: ["1 Hour", "6 Hours", "24 Hours", "48 Hours"], selected: selectedDuration))
        let next = PonllyNeonButton(title: "Next")
        next.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        stack.addArrangedSubview(next)
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 26),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34),
            titleField.heightAnchor.constraint(equalToConstant: 58),
            next.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func configureTextField(_ field: UITextField) {
        field.textColor = .white
        field.font = PonllyFonts.body(size: 14, weight: .medium)
        field.backgroundColor = PonllyPalette.panel
        field.layer.cornerRadius = 16
        field.layer.borderWidth = 1
        field.layer.borderColor = PonllyPalette.line.cgColor
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        field.leftViewMode = .always
    }

    private func section(_ title: String, content: UIView) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 10
        let label = UILabel()
        label.text = title
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 12)
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(content)
        return stack
    }

    private func chips(_ title: String, items: [String], selected: String) -> UIStackView {
        let outer = UIStackView()
        outer.axis = .vertical
        outer.spacing = 10
        let label = UILabel()
        label.text = title
        label.textColor = PonllyPalette.muted
        label.font = PonllyFonts.display(size: 12)
        let wrap = UIStackView()
        wrap.axis = .vertical
        wrap.spacing = 10
        var current: UIStackView?
        for (index, item) in items.enumerated() {
            if index % 3 == 0 {
                current = UIStackView()
                current?.axis = .horizontal
                current?.spacing = 10
                wrap.addArrangedSubview(current!)
            }
            let button = UIButton(type: .system)
            button.setTitle(item, for: .normal)
            button.titleLabel?.font = PonllyFonts.body(size: 12, weight: .bold)
            button.setTitleColor(item == selected ? PonllyPalette.pink : .white, for: .normal)
            button.layer.cornerRadius = 18
            button.layer.borderWidth = 1
            button.layer.borderColor = (item == selected ? PonllyPalette.pink : PonllyPalette.line).cgColor
            button.heightAnchor.constraint(equalToConstant: 38).isActive = true
            button.widthAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
            current?.addArrangedSubview(button)
        }
        outer.addArrangedSubview(label)
        outer.addArrangedSubview(wrap)
        return outer
    }

    @objc private func nextTapped() {
        navigationController?.pushViewController(PonllySelectArtworkViewController(titleText: "Upload Your Artwork", submitTitle: "Continue", mode: .create), animated: true)
    }

    @objc private func keyboardWillShow(_ note: Notification) {
        guard let frame = note.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bottom = max(frame.height - view.safeAreaInsets.bottom, 0) + 24
        scrollView.contentInset.bottom = bottom
        scrollView.verticalScrollIndicatorInsets.bottom = bottom
    }

    @objc private func keyboardWillHide(_ note: Notification) {
        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
