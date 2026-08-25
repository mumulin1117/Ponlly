import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class VuonllMetallicSprayontroller: UIViewController {
    private let ponllKind: PonllyRelationshipKind
    private let bruCiubruCiuStencilLab = UIScrollView()
    private let flckinkStack = UIStackView()

    init(kind ponllKind: PonllyRelationshipKind) {
        self.ponllKind = ponllKind
        super.init(nibName: nil, bundle: nil)
        title = ponllKind == .aerErstBrickTone ? "CFrGeHwI JCKoLnMnNeOcPtQiRoSnTsU".ponllPaintaerErstHours : "FVoWlXlYoZw0i1n2g3".ponllPaintaerErstHours
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        aerErstSetup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func aerErstSetup() {
        bruCiubruCiuStencilLab.alwaysBounceVertical = true
        bruCiubruCiuStencilLab.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiubruCiuStencilLab)
        flckinkStack.axis = .vertical
        flckinkStack.spacing = 16
        flckinkStack.translatesAutoresizingMaskIntoConstraints = false
        bruCiubruCiuStencilLab.addSubview(flckinkStack)
        let ponllUsers = PonllyponllTornEdge.aerErstRainWall(bruCiuShadowWall: ponllKind)
        let bruCiuCountLabel = UILabel()
        let aerErstLineMood = ponllKind == .aerErstBrickTone ? "Faoblcldoewfegrhsi".ponllPaintaerErstHours : "Faoblcldoewfignhgi".ponllPaintaerErstHours
        bruCiuCountLabel.text = "\(ponllUsers.count) \(aerErstLineMood)"
        bruCiuCountLabel.textColor = PonllyPalette.muted
        bruCiuCountLabel.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkStack.addArrangedSubview(bruCiuCountLabel)
        ponllUsers.forEach { flckinkStack.addArrangedSubview(bruCiuRow(for: $0)) }
        NSLayoutConstraint.activate([
            bruCiubruCiuStencilLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiubruCiuStencilLab.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiubruCiuStencilLab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiubruCiuStencilLab.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            flckinkStack.leadingAnchor.constraint(equalTo: bruCiubruCiuStencilLab.frameLayoutGuide.leadingAnchor, constant: 16),
            flckinkStack.trailingAnchor.constraint(equalTo: bruCiubruCiuStencilLab.frameLayoutGuide.trailingAnchor, constant: -16),
            flckinkStack.topAnchor.constraint(equalTo: bruCiubruCiuStencilLab.contentLayoutGuide.topAnchor, constant: 26),
            flckinkStack.bottomAnchor.constraint(equalTo: bruCiubruCiuStencilLab.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func bruCiuRow(for aerErstUser: PonllyaerErstTwoToneFillr) -> UIControl {
        let ponllflckinkLetterMaze = UIControl()
        ponllflckinkLetterMaze.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        ponllflckinkLetterMaze.layer.cornerRadius = 18
        ponllflckinkLetterMaze.layer.borderWidth = 1
        ponllflckinkLetterMaze.layer.borderColor = PonllyPalette.line.cgColor
        ponllflckinkLetterMaze.addAction(UIAction { [weak self] _ in
            let bruCiuProfile = FlckinkPrimerCoatController(user: aerErstUser)
            bruCiuProfile.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(bruCiuProfile, animated: true)
        }, for: .touchUpInside)
        let flckinkRow = UIStackView()
        flckinkRow.axis = .horizontal
        flckinkRow.alignment = .center
        flckinkRow.spacing = 14
        flckinkRow.translatesAutoresizingMaskIntoConstraints = false
        ponllflckinkLetterMaze.addSubview(flckinkRow)
        flckinkRow.addArrangedSubview(ErErstPaintLabView(user: aerErstUser, size: 54))
        let aerErstTextStack = UIStackView()
        aerErstTextStack.axis = .vertical
        aerErstTextStack.spacing = 4
        let ponllNameLabel = UILabel()
        ponllNameLabel.text = aerErstUser.aerosolDream.lowercased()
        ponllNameLabel.textColor = .white
        ponllNameLabel.font = PonllyFonts.muralForgepon(neonLab: 16)
        let bruCiuCrewLabel = UILabel()
        bruCiuCrewLabel.text = aerErstUser.sprayRhythm
        bruCiuCrewLabel.textColor = PonllyPalette.muted
        bruCiuCrewLabel.font = PonllyFonts.steelGate(rollingShutter: 12)
        aerErstTextStack.addArrangedSubview(ponllNameLabel)
        aerErstTextStack.addArrangedSubview(bruCiuCrewLabel)
        flckinkRow.addArrangedSubview(aerErstTextStack)
        let flcaerErstPaintLab = UILabel()
        flcaerErstPaintLab.text = PonllyponllTornEdge.ponllBrickCrack(aerErstUser.graffitiPulse) ? "M8u9taubacld".ponllPaintaerErstHours : (PonllyponllTornEdge.aerErstCrackedWall(aerErstUser.graffitiPulse) ? "Feoflglhoiwjiknlgm".ponllPaintaerErstHours : "Fnoolplqorws".ponllPaintaerErstHours)
        flcaerErstPaintLab.textColor = PonllyponllTornEdge.ponllBrickCrack(aerErstUser.graffitiPulse) ? PonllyPalette.green : .white
        flcaerErstPaintLab.font = PonllyFonts.muralForgepon(neonLab: 11)
        flcaerErstPaintLab.textAlignment = .center
        flcaerErstPaintLab.layer.cornerRadius = 12
        flcaerErstPaintLab.layer.borderWidth = 1
        flcaerErstPaintLab.layer.borderColor = (PonllyponllTornEdge.ponllBrickCrack(aerErstUser.graffitiPulse) ? PonllyPalette.green : PonllyPalette.pink).cgColor
        flcaerErstPaintLab.clipsToBounds = true
        flcaerErstPaintLab.widthAnchor.constraint(equalToConstant: 92).isActive = true
        flcaerErstPaintLab.heightAnchor.constraint(equalToConstant: 30).isActive = true
        flckinkRow.addArrangedSubview(flcaerErstPaintLab)
        NSLayoutConstraint.activate([
            ponllflckinkLetterMaze.heightAnchor.constraint(equalToConstant: 92),
            flckinkRow.leadingAnchor.constraint(equalTo: ponllflckinkLetterMaze.leadingAnchor, constant: 18),
            flckinkRow.trailingAnchor.constraint(equalTo: ponllflckinkLetterMaze.trailingAnchor, constant: -18),
            flckinkRow.centerYAnchor.constraint(equalTo: ponllflckinkLetterMaze.centerYAnchor)
        ])
        return ponllflckinkLetterMaze
    }
}
