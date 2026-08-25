import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PponllPaintMapController: UIViewController {
    private let ponllTitleField = UITextField()
    private let bruCiuDescView = UITextView()
    private let flckinksketchBend = UIScrollView()
    private var aerErstSelectedTheme = "Wildstyle"
    private var ponllSelectedDuration = "24 Hours"

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Battle Settings"
        view.backgroundColor = PonllyPalette.background
        bruCiusketchNoise()
        NotificationCenter.default.addObserver(self, selector: #selector(flckinksketchTwist(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstsketchLeane(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
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
        ponllTitleField.text = "Wildstyle Showdown"
        ponllsketchDepthField(ponllTitleField)
        bruCiuDescView.text = "Bring Your Absolute Best Chrome Letters And Sharp Outlines to This Burner Arena"
        bruCiuDescView.textColor = .white
        bruCiuDescView.backgroundColor = PonllyPalette.panel
        bruCiuDescView.layer.cornerRadius = 16
        bruCiuDescView.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .medium)
        bruCiuDescView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        aerErstStackPath.addArrangedSubview(flckinkSection("Battle Title", content: ponllTitleField))
        aerErstStackPath.addArrangedSubview(aerErstChips("Battle Theme", items: ["Wildstyle", "Character", "Black And White", "Free Style"], selected: aerErstSelectedTheme))
        aerErstStackPath.addArrangedSubview(flckinkSection("Battle Description", content: bruCiuDescView))
        aerErstStackPath.addArrangedSubview(aerErstChips("Battle Duration", items: ["1 Hour", "6 Hours", "24 Hours", "48 Hours"], selected: ponllSelectedDuration))
        let bruCiusketchGlow = PonllyNeonButton("Next")
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
        bruCiuField.backgroundColor = PonllyPalette.panel
        bruCiuField.layer.cornerRadius = 16
        bruCiuField.layer.borderWidth = 1
        bruCiuField.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 1))
        bruCiuField.leftViewMode = .always
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

    private func aerErstChips(_ ponllTitle: String, items bruCiuItems: [String], selected flckinkSelected: String) -> UIStackView {
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
            bruCiuButton.setTitleColor(ponllItem == flckinkSelected ? PonllyPalette.pink : .white, for: .normal)
            bruCiuButton.layer.cornerRadius = 18
            bruCiuButton.layer.borderWidth = 1
            bruCiuButton.layer.borderColor = (ponllItem == flckinkSelected ? PonllyPalette.pink : PonllyPalette.line).cgColor
            bruCiuButton.heightAnchor.constraint(equalToConstant: 38).isActive = true
            bruCiuButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 92).isActive = true
            flckinkCurrent?.addArrangedSubview(bruCiuButton)
        }
        aerErstOuter.addArrangedSubview(ponllLabel)
        aerErstOuter.addArrangedSubview(bruCiuWrap)
        return aerErstOuter
    }

    @objc private func ponllsketchWeave() {
        navigationController?.pushViewController(MarkerNibController(ponllStyleSignal: "Upload Your Artwork", bruCiuPaintQuest: "Continue", flckinkInkCue: .ponllPaintPlan), animated: true)
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
