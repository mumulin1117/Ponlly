import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyPlaceholderViewController: UIViewController {
    private let pageTitle: String
    private let subtitle: String
    private let systemImage: String

    init(title: String, subtitle: String, systemImage: String) {
        self.pageTitle = title
        self.subtitle = subtitle
        self.systemImage = systemImage
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        let image = UIImageView(image: UIImage(systemName: systemImage))
        image.tintColor = PonllyPalette.cyan
        image.contentMode = .scaleAspectFit
        image.widthAnchor.constraint(equalToConstant: 70).isActive = true
        image.heightAnchor.constraint(equalToConstant: 70).isActive = true
        let title = UILabel()
        title.text = pageTitle
        title.textColor = .white
        title.font = PonllyFonts.display(size: 22)
        let body = UILabel()
        body.text = subtitle
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 14, weight: .medium)
        body.textAlignment = .center
        body.numberOfLines = 0
        [image, title, body].forEach(stack.addArrangedSubview)
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stack.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 30),
            stack.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -30)
        ])
    }
}
