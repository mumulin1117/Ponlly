import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyBattlePreviewArenaView: UIView {
    private let selectedImage: UIImage?

    init(selectedImage: UIImage? = nil) {
        self.selectedImage = selectedImage
        super.init(frame: .zero)
        setup()
    }

    override init(frame: CGRect) {
        self.selectedImage = nil
        super.init(frame: frame)
        setup()
    }

    private func setup() {
        let left: UIView
        if let selectedImage {
            left = PonllyUploadedArtworkView(image: selectedImage)
        } else {
            left = PonllyArtworkView(artwork: .init(id: "preview", ownerId: "u01", title: "Wildstyle", style: "Wildstyle", imageName: "graffiti_challenge_wall_03", colors: [.systemPink, .cyan, .gray]))
        }
        let right = PonllyEmptyOpponentView()
        [left, right].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        NSLayoutConstraint.activate([
            left.leadingAnchor.constraint(equalTo: leadingAnchor),
            left.topAnchor.constraint(equalTo: topAnchor),
            left.bottomAnchor.constraint(equalTo: bottomAnchor),
            left.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            right.trailingAnchor.constraint(equalTo: trailingAnchor),
            right.topAnchor.constraint(equalTo: topAnchor),
            right.bottomAnchor.constraint(equalTo: bottomAnchor),
            right.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
