import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PponllPaintMapController: UIViewController {
    private let ponllTitleField = UITextField()
    private let bruCiuDescView = UITextView()
    private let flckinksketchBend = UIScrollView()
    private var aerErstSelectedTheme = "WTiUlVdWsXtYyZl0e1".ponllPaintaerErstHours
    private var ponllSelectedDuration = "2243 4H5o6u7r8s9".ponllPaintaerErstHours
    private let aerErstDefaultTitle = "Wpiqlrdssttuyvlwex ySzhAoBwCdDoEwFnG".ponllPaintaerErstHours
    private let ponllDefaultDesc = "BHrIiJnKgL MYNoOuPrQ RASbTsUoVlWuXtYeZ 0B1e2s3t4 5C6h7r8o9maeb cLdeetftgehrisj kAlnmdn oSphqarrspt uOvuwtxlyiznAeBsC DtEoF GTHhIiJsK LBMuNrOnPeQrR SATrUeVnWaX".ponllPaintaerErstHours
    private var bruCiuDurationButtons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Baabtctdleef gSheitjtkilnmgnso".ponllPaintaerErstHours
        view.backgroundColor = PonllyPalette.background
        bruCiusketchNoise()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinksketchTwist(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstsketchLeane(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        ponllGraffitiDraftNavigationStyle()
        tabBarController?.tabBar.isHidden = true
        bruCiuDefaultInputs()
    }

    private func bruCiusketchNoise() {
        flckinksketchBend.keyboardDismissMode = .onDrag
        flckinksketchBend.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinksketchBend)
        let aerErstStackPath = UIStackView()
        aerErstStackPath.axis = .vertical
        aerErstStackPath.spacing = 20
        aerErstStackPath.translatesAutoresizingMaskIntoConstraints = false
        flckinksketchBend.addSubview(aerErstStackPath)
        ponllsketchDepthField(ponllTitleField)
        bruCiuDefaultInputs()
        bruCiuDescView.textColor = .white
        bruCiuDescView.backgroundColor = PonllyPalette.panel
        bruCiuDescView.layer.cornerRadius = 16
        bruCiuDescView.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        bruCiuDescView.textContainerInset = UIEdgeInsets(top: 14, left: 12, bottom: 14, right: 12)
        bruCiuDescView.textContainer.lineFragmentPadding = 0
        bruCiuDescView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        aerErstStackPath.addArrangedSubview(flckinkSection("BYaZt0t1l2e3 4T5i6t7l8e9".ponllPaintaerErstHours, content: ponllTitleField))
        aerErstStackPath.addArrangedSubview(aerErstChips("Baabtctdleef gThhiejmkel".ponllPaintaerErstHours, items: ["Wminlodpsqtryslteu".ponllPaintaerErstHours, "CvhwaxryazcAtBeCrD".ponllPaintaerErstHours, "BElFaGcHkI JAKnLdM NWOhPiQtReS".ponllPaintaerErstHours, "FTrUeVeW XSYtZy0l1e2".ponllPaintaerErstHours], selected: aerErstSelectedTheme))
        aerErstStackPath.addArrangedSubview(flckinkSection("B3a4t5t6l7e8 9Daebsccdreifpgthiiojnk".ponllPaintaerErstHours, content: bruCiuDescView))
        bruCiuDurationButtons.removeAll()
        aerErstStackPath.addArrangedSubview(aerErstChips("Blamtntolpeq rDsutruavtwixoynz".ponllPaintaerErstHours, items: ["1A BHCoDuErF".ponllPaintaerErstHours, "6G HHIoJuKrLsM".ponllPaintaerErstHours, "2N4O PHQoRuSrTsU".ponllPaintaerErstHours, "4V8W XHYoZu0r1s2".ponllPaintaerErstHours], selected: ponllSelectedDuration, action: #selector(ponllDurationTapped(_:))) { [weak self] button in
            self?.bruCiuDurationButtons.append(button)
        })
        let bruCiusketchGlow = PonllyNeonButton("N3e4x5t6".ponllPaintaerErstHours)
        bruCiusketchGlow.addTarget(self, action: #selector(ponllsketchWeave), for: .touchUpInside)
        aerErstStackPath.addArrangedSubview(bruCiusketchGlow)
        NSLayoutConstraint.activate([
            flckinksketchBend.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            flckinksketchBend.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            flckinksketchBend.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            flckinksketchBend.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstStackPath.leadingAnchor.constraint(equalTo: flckinksketchBend.frameLayoutGuide.leadingAnchor, constant: 20),
            aerErstStackPath.trailingAnchor.constraint(equalTo: flckinksketchBend.frameLayoutGuide.trailingAnchor, constant: -20),
            aerErstStackPath.topAnchor.constraint(equalTo: flckinksketchBend.contentLayoutGuide.topAnchor, constant: 26),
            aerErstStackPath.bottomAnchor.constraint(equalTo: flckinksketchBend.contentLayoutGuide.bottomAnchor, constant: -34),
            ponllTitleField.heightAnchor.constraint(equalToConstant: 58),
            bruCiusketchGlow.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func ponllsketchDepthField(_ bruCiuField: UITextField) {
        bruCiuField.textColor = .white
        bruCiuField.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        bruCiuField.attributedPlaceholder = NSAttributedString(string: "BYaZt0t1l2e3 4T5i6t7l8e9".ponllPaintaerErstHours, attributes: [.foregroundColor: PonllyPalette.muted])
        bruCiuField.contentVerticalAlignment = .center
        bruCiuField.backgroundColor = PonllyPalette.panel
        bruCiuField.layer.cornerRadius = 16
        bruCiuField.layer.borderWidth = 1
        bruCiuField.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        bruCiuField.leftViewMode = .always
    }

    private func bruCiuDefaultInputs() {
//        if (ponllTitleField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
//            ponllTitleField.text = aerErstDefaultTitle
//        }
//        if bruCiuDescView.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
//            bruCiuDescView.text = ponllDefaultDesc
//        }
    }

    private func flckinkSection(_ ponllTitle: String, content bruCiuContent: UIView) -> UIStackView {
        let flckinkStack = UIStackView()
        flckinkStack.axis = .vertical
        flckinkStack.spacing = 10
        let aerErstLabel = UILabel()
        aerErstLabel.text = ponllTitle
        aerErstLabel.textColor = PonllyPalette.muted
        aerErstLabel.font = PonllyFonts.muralForgepon(neonLab: 12)
        flckinkStack.addArrangedSubview(aerErstLabel)
        flckinkStack.addArrangedSubview(bruCiuContent)
        return flckinkStack
    }

    private func aerErstChips(_ ponllTitle: String, items bruCiuItems: [String], selected flckinkSelected: String, action ponllAction: Selector? = nil, register bruCiuRegister: ((UIButton) -> Void)? = nil) -> UIStackView {
        let aerErstOuter = UIStackView()
        aerErstOuter.axis = .vertical
        aerErstOuter.spacing = 10
        let ponllLabel = UILabel()
        ponllLabel.text = ponllTitle
        ponllLabel.textColor = PonllyPalette.muted
        ponllLabel.font = PonllyFonts.muralForgepon(neonLab: 12)
        let bruCiuWrap = UIStackView()
        bruCiuWrap.axis = .vertical
        bruCiuWrap.spacing = 10
        var flckinkCurrent: UIStackView?
        for (aerErstIndex, ponllItem) in bruCiuItems.enumerated() {
            if aerErstIndex % 3 == 0 {
                flckinkCurrent = UIStackView()
                flckinkCurrent?.axis = .horizontal
                flckinkCurrent?.spacing = 10
                bruCiuWrap.addArrangedSubview(flckinkCurrent!)
            }
            let bruCiuButton = UIButton(type: .system)
            bruCiuButton.setTitle(ponllItem, for: .normal)
            bruCiuButton.titleLabel?.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .bold)
            bruCiuButton.layer.cornerRadius = 18
            bruCiuButton.layer.borderWidth = 1
            bruCiuButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
            bruCiuButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
            if let ponllAction {
                bruCiuButton.addTarget(self, action: ponllAction, for: .touchUpInside)
            }
            bruCiuRegister?(bruCiuButton)
            ponllStyleChip(bruCiuButton, selected: ponllItem == flckinkSelected)
            flckinkCurrent?.addArrangedSubview(bruCiuButton)
        }
        aerErstOuter.addArrangedSubview(ponllLabel)
        aerErstOuter.addArrangedSubview(bruCiuWrap)
        return aerErstOuter
    }

    private func ponllStyleChip(_ bruCiuButton: UIButton, selected flckinkSelected: Bool) {
        bruCiuButton.setTitleColor(flckinkSelected ? PonllyPalette.pink : .white, for: .normal)
        bruCiuButton.layer.borderColor = (flckinkSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
        bruCiuButton.backgroundColor = flckinkSelected ? PonllyPalette.pink.withAlphaComponent(0.08) : .clear
    }

    @objc private func ponllDurationTapped(_ bruCiuButton: UIButton) {
        ponllSelectedDuration = bruCiuButton.title(for: .normal) ?? ponllSelectedDuration
        bruCiuDurationButtons.forEach { button in
            ponllStyleChip(button, selected: button.title(for: .normal) == ponllSelectedDuration)
        }
    }

    @objc private func ponllsketchWeave() {
        guard ponllValidateBattleCopy() else { return }
        navigationController?.pushViewController(MarkerNibController(ponllStyleSignal: "U7p8l9oaabdc dYeofugrh iAjrktlwmonrokp".ponllPaintaerErstHours, bruCiuPaintQuest: "Cqornsttiunvuwex".ponllPaintaerErstHours, flckinkInkCue: .ponllPaintPlan(bruCiuBattleDraft())), animated: true)
    }

    private func bruCiuBattleDraft() -> PonllStyleCue {
        PonllStyleCue(
            letterForm: (ponllTitleField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines),
            muralGrid: bruCiuDescView.text.trimmingCharacters(in: .whitespacesAndNewlines),
            strokeWeight: ponllSelectedDuration
        )
    }

    private func ponllValidateBattleCopy() -> Bool {
        let ponllTitle = (ponllTitleField.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        let bruCiuDetails = bruCiuDescView.text.trimmingCharacters(in: .whitespacesAndNewlines)
        ponllTitleField.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuDescView.layer.borderColor = PonllyPalette.line.cgColor
        guard !ponllTitle.isEmpty else {
            ponllTitleField.layer.borderColor = PonllyPalette.pink.cgColor
            aerErstSketchRush("ASdBd1 haV NbnaLtTtvlXeI GtsiltVlBe4 EbpeGfCoXrBev ecKoIn3tZivnru4iNntg9.0".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            ponllTitleField.becomeFirstResponder()
            return false
        }
        guard !bruCiuDetails.isEmpty else {
            bruCiuDescView.layer.borderColor = PonllyPalette.pink.cgColor
            aerErstSketchRush("ALd1dC nbAaitatWlCer edbeht5axiIl2s3 Pbperf6oRrkeu 5cao1nmt5inn6uHibnIgz.5".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            bruCiuDescView.becomeFirstResponder()
            return false
        }
        view.endEditing(true)
        return true
    }

    @objc private func flckinksketchTwist(_ aerErstNote: Notification) {
        guard let ponllFrame = aerErstNote.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let bruCiuBottom = max(ponllFrame.height - view.safeAreaInsets.bottom, 0) + 24
        flckinksketchBend.contentInset.bottom = bruCiuBottom
        flckinksketchBend.verticalScrollIndicatorInsets.bottom = bruCiuBottom
    }

    @objc private func aerErstsketchLeane(_ ponllNote: Notification) {
        flckinksketchBend.contentInset.bottom = 0
        flckinksketchBend.verticalScrollIndicatorInsets.bottom = 0
    }
}
