import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoonllFineLineController: UIViewController {
    private let ponllbruCiuPressureFlows = UIScrollView()
    private let bruCiuStackPath = UIStackView()
    private let ponllAngleBreak = PonllyNeonButton("Charge")
    private var aerErstSelectedPackage = PoncanShaketalog.aerErstChromeNoise[3]
    private var flckinkPlasterDust: [String: Product] = [:]
    private var bruCiuColorRack: [PNeonDripCard] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        view.backgroundColor = PonllyPalette.background
        bruCiuBridgePillar()
        aerErstpaintAura()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiuBridgePillar() {
        ponllbruCiuPressureFlows.alwaysBounceVertical = true
        ponllbruCiuPressureFlows.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllbruCiuPressureFlows)
        bruCiuStackPath.axis = .vertical
        bruCiuStackPath.spacing = 24
        bruCiuStackPath.clipsToBounds = false
        bruCiuStackPath.translatesAutoresizingMaskIntoConstraints = false
        ponllbruCiuPressureFlows.addSubview(bruCiuStackPath)

        let flckinkmuralAura = ponllmuralSurge()
        let aerErstBanner = bruCiuFirstBonusBanner()
        let ponllmuralFlicker = UILabel()
        ponllmuralFlicker.text = "Select Coin Package"
        ponllmuralFlicker.textColor = PonllyPalette.muted
        ponllmuralFlicker.font = PonllyFonts.muralForgepon(neonLab: 11)
        let bruCiuGrid = flckinkPackageGrid()
        [flckinkmuralAura, aerErstBanner, ponllmuralFlicker, bruCiuGrid].forEach(bruCiuStackPath.addArrangedSubview)

        let aerErstmuralBurst = UIView()
        aerErstmuralBurst.backgroundColor = PonllyPalette.background
        aerErstmuralBurst.layer.borderWidth = 1
        aerErstmuralBurst.layer.borderColor = PonllyPalette.line.cgColor
        aerErstmuralBurst.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstmuralBurst)
        ponllAngleBreak.addTarget(self, action: #selector(bruCiupaintKicked), for: .touchUpInside)
        ponllAngleBreak.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 13)
        aerErstmuralBurst.addSubview(ponllAngleBreak)

        NSLayoutConstraint.activate([
            ponllbruCiuPressureFlows.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllbruCiuPressureFlows.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllbruCiuPressureFlows.topAnchor.constraint(equalTo: view.topAnchor),
            ponllbruCiuPressureFlows.bottomAnchor.constraint(equalTo: aerErstmuralBurst.topAnchor),
            bruCiuStackPath.leadingAnchor.constraint(equalTo: ponllbruCiuPressureFlows.frameLayoutGuide.leadingAnchor, constant: 20),
            bruCiuStackPath.trailingAnchor.constraint(equalTo: ponllbruCiuPressureFlows.frameLayoutGuide.trailingAnchor, constant: -20),
            bruCiuStackPath.topAnchor.constraint(equalTo: ponllbruCiuPressureFlows.contentLayoutGuide.topAnchor, constant: -56),
            bruCiuStackPath.bottomAnchor.constraint(equalTo: ponllbruCiuPressureFlows.contentLayoutGuide.bottomAnchor, constant: -28),
            aerErstmuralBurst.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            aerErstmuralBurst.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            aerErstmuralBurst.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstmuralBurst.heightAnchor.constraint(equalToConstant: 118),
            ponllAngleBreak.leadingAnchor.constraint(equalTo: aerErstmuralBurst.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllAngleBreak.trailingAnchor.constraint(equalTo: aerErstmuralBurst.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            ponllAngleBreak.topAnchor.constraint(equalTo: aerErstmuralBurst.topAnchor, constant: 22),
            ponllAngleBreak.heightAnchor.constraint(equalToConstant: 58)
        ])
        ponllpaintWeaveon()
    }

    private func ponllmuralSurge() -> UIView {
        let bruCiuaerosolMood = UIView()
        bruCiuaerosolMood.translatesAutoresizingMaskIntoConstraints = false
        let flckinkmuralCascaden = UIButton(type: .system)
        flckinkmuralCascaden.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        flckinkmuralCascaden.tintColor = .white
        flckinkmuralCascaden.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        flckinkmuralCascaden.layer.cornerRadius = 30
        flckinkmuralCascaden.layer.borderWidth = 1
        flckinkmuralCascaden.layer.borderColor = PonllyPalette.line.cgColor
        flckinkmuralCascaden.translatesAutoresizingMaskIntoConstraints = false
        flckinkmuralCascaden.addTarget(self, action: #selector(aerErstBackTapped), for: .touchUpInside)
        bruCiuaerosolMood.addSubview(flckinkmuralCascaden)

        let aerErstaerosolGlowe = UILabel()
        aerErstaerosolGlowe.text = "COIN STORE"
        aerErstaerosolGlowe.textColor = .white
        aerErstaerosolGlowe.font = PonllyFonts.muralForgepon(neonLab: 16)
        aerErstaerosolGlowe.adjustsFontSizeToFitWidth = true
        aerErstaerosolGlowe.minimumScaleFactor = 0.75
        aerErstaerosolGlowe.translatesAutoresizingMaskIntoConstraints = false
        bruCiuaerosolMood.addSubview(aerErstaerosolGlowe)
        let ponllaerosolPath = UILabel()
        ponllaerosolPath.text = "RECHARGE STASH"
        ponllaerosolPath.textColor = PonllyPalette.muted
        ponllaerosolPath.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .regular)
        ponllaerosolPath.translatesAutoresizingMaskIntoConstraints = false
        bruCiuaerosolMood.addSubview(ponllaerosolPath)

        NSLayoutConstraint.activate([
            bruCiuaerosolMood.heightAnchor.constraint(equalToConstant: 148),
            flckinkmuralCascaden.leadingAnchor.constraint(equalTo: bruCiuaerosolMood.leadingAnchor),
            flckinkmuralCascaden.bottomAnchor.constraint(equalTo: bruCiuaerosolMood.bottomAnchor, constant: -20),
            flckinkmuralCascaden.widthAnchor.constraint(equalToConstant: 60),
            flckinkmuralCascaden.heightAnchor.constraint(equalToConstant: 60),
            aerErstaerosolGlowe.leadingAnchor.constraint(equalTo: flckinkmuralCascaden.trailingAnchor, constant: 24),
            aerErstaerosolGlowe.trailingAnchor.constraint(equalTo: bruCiuaerosolMood.trailingAnchor),
            aerErstaerosolGlowe.topAnchor.constraint(equalTo: flckinkmuralCascaden.topAnchor, constant: 6),
            ponllaerosolPath.leadingAnchor.constraint(equalTo: aerErstaerosolGlowe.leadingAnchor),
            ponllaerosolPath.topAnchor.constraint(equalTo: aerErstaerosolGlowe.bottomAnchor, constant: 8)
        ])
        return bruCiuaerosolMood
    }

    private func bruCiuFirstBonusBanner() -> UIView {
        let flckinkwallContrast = PonllyponllCyanGlowView(bruCiuDripMarker: [PonllyPalette.pink, PonllyPalette.cyan], CGPoint(x: 0, y: 0.5), CGPoint(x: 1, y: 0.5))
        flckinkwallContrast.layer.cornerRadius = 0
        flckinkwallContrast.translatesAutoresizingMaskIntoConstraints = false

        let aerErstIconWrap = UIView()
        aerErstIconWrap.backgroundColor = UIColor.black.withAlphaComponent(0.62)
        aerErstIconWrap.layer.cornerRadius = 40
        aerErstIconWrap.translatesAutoresizingMaskIntoConstraints = false
        flckinkwallContrast.addSubview(aerErstIconWrap)
        let ponllIcon = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        ponllIcon.contentMode = .scaleAspectFit
        ponllIcon.translatesAutoresizingMaskIntoConstraints = false
        aerErstIconWrap.addSubview(ponllIcon)

        let bruCiuwallQuest = UILabel()
        bruCiuwallQuest.text = "Power Up Your Stash"
        bruCiuwallQuest.textColor = .black
        bruCiuwallQuest.font = PonllyFonts.muralForgepon(neonLab: 12)
        bruCiuwallQuest.translatesAutoresizingMaskIntoConstraints = false
        flckinkwallContrast.addSubview(bruCiuwallQuest)
        let flckinkBannerBody = UILabel()
        flckinkBannerBody.text = "Choose a coin pack before unlocking premium room themes."
        flckinkBannerBody.textColor = UIColor.black.withAlphaComponent(0.82)
        flckinkBannerBody.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .regular)
        flckinkBannerBody.numberOfLines = 0
        flckinkBannerBody.translatesAutoresizingMaskIntoConstraints = false
        flckinkwallContrast.addSubview(flckinkBannerBody)

        NSLayoutConstraint.activate([
            flckinkwallContrast.heightAnchor.constraint(equalToConstant: 128),
            aerErstIconWrap.leadingAnchor.constraint(equalTo: flckinkwallContrast.leadingAnchor, constant: 20),
            aerErstIconWrap.centerYAnchor.constraint(equalTo: flckinkwallContrast.centerYAnchor),
            aerErstIconWrap.widthAnchor.constraint(equalToConstant: 80),
            aerErstIconWrap.heightAnchor.constraint(equalToConstant: 80),
            ponllIcon.centerXAnchor.constraint(equalTo: aerErstIconWrap.centerXAnchor),
            ponllIcon.centerYAnchor.constraint(equalTo: aerErstIconWrap.centerYAnchor),
            ponllIcon.widthAnchor.constraint(equalToConstant: 42),
            ponllIcon.heightAnchor.constraint(equalToConstant: 42),
            bruCiuwallQuest.leadingAnchor.constraint(equalTo: aerErstIconWrap.trailingAnchor, constant: 22),
            bruCiuwallQuest.trailingAnchor.constraint(equalTo: flckinkwallContrast.trailingAnchor, constant: -18),
            bruCiuwallQuest.topAnchor.constraint(equalTo: aerErstIconWrap.topAnchor, constant: 12),
            flckinkBannerBody.leadingAnchor.constraint(equalTo: bruCiuwallQuest.leadingAnchor),
            flckinkBannerBody.trailingAnchor.constraint(equalTo: bruCiuwallQuest.trailingAnchor),
            flckinkBannerBody.topAnchor.constraint(equalTo: bruCiuwallQuest.bottomAnchor, constant: 8)
        ])
        return flckinkwallContrast
    }

    private func flckinkPackageGrid() -> UIStackView {
        let aerErstGrid = UIStackView()
        aerErstGrid.axis = .vertical
        aerErstGrid.spacing = 14
        aerErstGrid.clipsToBounds = false
        for ponllIndex in stride(from: 0, to: PoncanShaketalog.aerErstChromeNoise.count, by: 2) {
            let bruCiuRow = UIStackView()
            bruCiuRow.axis = .horizontal
            bruCiuRow.spacing = 14
            bruCiuRow.distribution = .fillEqually
            bruCiuRow.clipsToBounds = false
            for flckinkOffset in 0..<2 {
                let aerErstPackageIndex = ponllIndex + flckinkOffset
                if aerErstPackageIndex < PoncanShaketalog.aerErstChromeNoise.count {
                    let ponllCard = PNeonDripCard(aerErstMuralFuse: PoncanShaketalog.aerErstChromeNoise[aerErstPackageIndex])
                    ponllCard.addTarget(self, action: #selector(ponllpaintTwisted(_:)), for: .touchUpInside)
                    bruCiuColorRack.append(ponllCard)
                    bruCiuRow.addArrangedSubview(ponllCard)
                } else {
                    bruCiuRow.addArrangedSubview(UIView())
                }
            }
            aerErstGrid.addArrangedSubview(bruCiuRow)
        }
        return aerErstGrid
    }

    private func aerErstpaintAura() {
        aerErstSketchRush("Loading coin packages...", bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.75)
        Task {
            do {
                let flckinkIds = PoncanShaketalog.aerErstChromeNoise.map(\.ponllPaintKick)
                let aerErstProducts = try await Product.products(for: flckinkIds)
                await MainActor.run {
                    flckinkPlasterDust = Dictionary(uniqueKeysWithValues: aerErstProducts.map { ($0.id, $0) })
                    bruCiuColorRack.forEach { ponllCard in
                        let bruCiuPrice = flckinkPlasterDust[ponllCard.ponllWallFlicker.ponllPaintKick]?.displayPrice ?? ponllCard.ponllWallFlicker.flckinkWallTwist
                        ponllCard.flckinkStencilTrace(bruCiuPrice)
                    }
                }
            } catch {
                await MainActor.run {
                    aerErstSketchRush("Coin packages are unavailable right now", bruCiuLetterForm: .ponllWhiteEdge)
                }
            }
        }
    }

    private func ponllpaintWeaveon() {
        bruCiuColorRack.forEach { $0.ponllChromeTrail($0.ponllWallFlicker.ponllPaintKick == aerErstSelectedPackage.ponllPaintKick) }
    }

    @objc private func ponllpaintTwisted(_ bruCiuSender: PNeonDripCard) {
        aerErstSelectedPackage = bruCiuSender.ponllWallFlicker
        ponllpaintWeaveon()
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }

    @objc private func bruCiupaintKicked() {
        guard let paintBend = flckinkPlasterDust[aerErstSelectedPackage.ponllPaintKick] else {
            aerErstSketchRush("Coin packages are unavailable right now", bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        ponllAngleBreak.isEnabled = false
        aerErstSketchRush("Processing charge...", bruCiuLetterForm: .bruCiuEdgeSnap, flckinkFillPattern: 0.9)
        Task {
            do {
                let aerErstpaintArc = try await paintBend.purchase()
                await flckinkHandlepaintFlowline(aerErstpaintArc)
            } catch {
                await MainActor.run {
                    ponllAngleBreak.isEnabled = true
                    aerErstSketchRush("Charge could not be completed", bruCiuLetterForm: .ponllWhiteEdge)
                }
            }
        }
    }

    @MainActor
    private func flckinkHandlepaintFlowline(_ ponllpaintMood: Product.PurchaseResult) async {
        ponllAngleBreak.isEnabled = true
        switch ponllpaintMood {
        case .success(let bruCiupaintSpark):
            switch bruCiupaintSpark {
            case .verified(let flckinkstyleMotion):
                PonllyponllTornEdge.ponllWhitePop(aerErstSelectedPackage.ponllMuralDepth)
                await flckinkstyleMotion.finish()
                aerErstSketchRush("\(aerErstSelectedPackage.ponllMuralDepth.formatted()) Coins added", bruCiuLetterForm: .flckinkSplitFill)
            case .unverified:
                aerErstSketchRush("Charge could not be verified", bruCiuLetterForm: .ponllWhiteEdge)
            }
        case .userCancelled:
            aerErstSketchRush("Charge canceled", bruCiuLetterForm: .bruCiuSilverSheen)
        case .pending:
            aerErstSketchRush("Charge is pending approval", bruCiuLetterForm: .bruCiuSilverSheen)
        @unknown default:
            aerErstSketchRush("Charge could not be completed", bruCiuLetterForm: .ponllWhiteEdge)
        }
    }

    @objc private func aerErstBackTapped() {
        navigationController?.popViewController(animated: true)
    }
}
