import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyCoinStoreViewController: UIViewController {
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let chargeButton = PonllyNeonButton(title: "Charge")
    private var selectedPackage = PonllyCoinStoreCatalog.packages[3]
    private var productMap: [String: Product] = [:]
    private var packageCards: [PonllyCoinPackageCard] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        view.backgroundColor = PonllyPalette.background
        setup()
        loadProducts()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 24
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let header = pageHeader()
        let banner = firstBonusBanner()
        let title = UILabel()
        title.text = "Select Coin Package"
        title.textColor = PonllyPalette.muted
        title.font = PonllyFonts.display(size: 11)
        let grid = packageGrid()
        [header, banner, title, grid].forEach(stack.addArrangedSubview)

        let bottomBar = UIView()
        bottomBar.backgroundColor = PonllyPalette.background
        bottomBar.layer.borderWidth = 1
        bottomBar.layer.borderColor = PonllyPalette.line.cgColor
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomBar)
        chargeButton.addTarget(self, action: #selector(chargeTapped), for: .touchUpInside)
        chargeButton.titleLabel?.font = PonllyFonts.display(size: 13)
        bottomBar.addSubview(chargeButton)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomBar.topAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: -56),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -28),
            bottomBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomBar.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomBar.heightAnchor.constraint(equalToConstant: 118),
            chargeButton.leadingAnchor.constraint(equalTo: bottomBar.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            chargeButton.trailingAnchor.constraint(equalTo: bottomBar.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            chargeButton.topAnchor.constraint(equalTo: bottomBar.topAnchor, constant: 22),
            chargeButton.heightAnchor.constraint(equalToConstant: 58)
        ])
        refreshSelection()
    }

    private func pageHeader() -> UIView {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        back.layer.cornerRadius = 30
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        header.addSubview(back)

        let title = UILabel()
        title.text = "COIN STORE"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        title.adjustsFontSizeToFitWidth = true
        title.minimumScaleFactor = 0.75
        title.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(title)
        let subtitle = UILabel()
        subtitle.text = "RECHARGE STASH"
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 11, weight: .regular)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(subtitle)

        NSLayoutConstraint.activate([
            header.heightAnchor.constraint(equalToConstant: 148),
            back.leadingAnchor.constraint(equalTo: header.leadingAnchor),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -20),
            back.widthAnchor.constraint(equalToConstant: 60),
            back.heightAnchor.constraint(equalToConstant: 60),
            title.leadingAnchor.constraint(equalTo: back.trailingAnchor, constant: 24),
            title.trailingAnchor.constraint(equalTo: header.trailingAnchor),
            title.topAnchor.constraint(equalTo: back.topAnchor, constant: 6),
            subtitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8)
        ])
        return header
    }

    private func firstBonusBanner() -> UIView {
        let banner = PonllyGradientView(colors: [PonllyPalette.pink, PonllyPalette.cyan], start: CGPoint(x: 0, y: 0.5), end: CGPoint(x: 1, y: 0.5))
        banner.layer.cornerRadius = 0
        banner.translatesAutoresizingMaskIntoConstraints = false

        let iconWrap = UIView()
        iconWrap.backgroundColor = UIColor.black.withAlphaComponent(0.62)
        iconWrap.layer.cornerRadius = 40
        iconWrap.translatesAutoresizingMaskIntoConstraints = false
        banner.addSubview(iconWrap)
        let icon = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        iconWrap.addSubview(icon)

        let title = UILabel()
        title.text = "+50% First-Time Bonus"
        title.textColor = .black
        title.font = PonllyFonts.display(size: 12)
        title.translatesAutoresizingMaskIntoConstraints = false
        banner.addSubview(title)
        let body = UILabel()
        body.text = "Get extra coins on your initial top-up today."
        body.textColor = UIColor.black.withAlphaComponent(0.82)
        body.font = PonllyFonts.body(size: 11, weight: .regular)
        body.numberOfLines = 0
        body.translatesAutoresizingMaskIntoConstraints = false
        banner.addSubview(body)

        NSLayoutConstraint.activate([
            banner.heightAnchor.constraint(equalToConstant: 128),
            iconWrap.leadingAnchor.constraint(equalTo: banner.leadingAnchor, constant: 20),
            iconWrap.centerYAnchor.constraint(equalTo: banner.centerYAnchor),
            iconWrap.widthAnchor.constraint(equalToConstant: 80),
            iconWrap.heightAnchor.constraint(equalToConstant: 80),
            icon.centerXAnchor.constraint(equalTo: iconWrap.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: iconWrap.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 42),
            icon.heightAnchor.constraint(equalToConstant: 42),
            title.leadingAnchor.constraint(equalTo: iconWrap.trailingAnchor, constant: 22),
            title.trailingAnchor.constraint(equalTo: banner.trailingAnchor, constant: -18),
            title.topAnchor.constraint(equalTo: iconWrap.topAnchor, constant: 12),
            body.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            body.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            body.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 8)
        ])
        return banner
    }

    private func packageGrid() -> UIStackView {
        let grid = UIStackView()
        grid.axis = .vertical
        grid.spacing = 14
        for index in stride(from: 0, to: PonllyCoinStoreCatalog.packages.count, by: 2) {
            let row = UIStackView()
            row.axis = .horizontal
            row.spacing = 14
            row.distribution = .fillEqually
            for offset in 0..<2 {
                let packageIndex = index + offset
                if packageIndex < PonllyCoinStoreCatalog.packages.count {
                    let card = PonllyCoinPackageCard(package: PonllyCoinStoreCatalog.packages[packageIndex])
                    card.addTarget(self, action: #selector(packageTapped(_:)), for: .touchUpInside)
                    packageCards.append(card)
                    row.addArrangedSubview(card)
                } else {
                    row.addArrangedSubview(UIView())
                }
            }
            grid.addArrangedSubview(row)
        }
        return grid
    }

    private func loadProducts() {
        ponllyShowNotice("Loading coin packages...", style: .loading, autoDismissAfter: 0.75)
        Task {
            do {
                let ids = PonllyCoinStoreCatalog.packages.map(\.productId)
                let products = try await Product.products(for: ids)
                await MainActor.run {
                    productMap = Dictionary(uniqueKeysWithValues: products.map { ($0.id, $0) })
                    packageCards.forEach { card in
                        let price = productMap[card.package.productId]?.displayPrice ?? card.package.fallbackPrice
                        card.updatePrice(price)
                    }
                }
            } catch {
                await MainActor.run {
                    ponllyShowNotice("Coin packages are unavailable right now", style: .failure)
                }
            }
        }
    }

    private func refreshSelection() {
        packageCards.forEach { $0.setSelected($0.package.productId == selectedPackage.productId) }
    }

    @objc private func packageTapped(_ sender: PonllyCoinPackageCard) {
        selectedPackage = sender.package
        refreshSelection()
        UIImpactFeedbackGenerator(style: .light).impactOccurred()
    }

    @objc private func chargeTapped() {
        guard let product = productMap[selectedPackage.productId] else {
            ponllyShowNotice("Coin packages are unavailable right now", style: .failure)
            return
        }
        chargeButton.isEnabled = false
        ponllyShowNotice("Processing charge...", style: .loading, autoDismissAfter: 0.9)
        Task {
            do {
                let result = try await product.purchase()
                await handlePurchase(result)
            } catch {
                await MainActor.run {
                    chargeButton.isEnabled = true
                    ponllyShowNotice("Charge could not be completed", style: .failure)
                }
            }
        }
    }

    @MainActor
    private func handlePurchase(_ result: Product.PurchaseResult) async {
        chargeButton.isEnabled = true
        switch result {
        case .success(let verification):
            switch verification {
            case .verified(let transaction):
                PonllyDataCenter.addCoins(selectedPackage.totalCoins)
                await transaction.finish()
                ponllyShowNotice("\(selectedPackage.totalCoins.formatted()) Coins added", style: .success)
            case .unverified:
                ponllyShowNotice("Charge could not be verified", style: .failure)
            }
        case .userCancelled:
            ponllyShowNotice("Charge canceled", style: .info)
        case .pending:
            ponllyShowNotice("Charge is pending approval", style: .info)
        @unknown default:
            ponllyShowNotice("Charge could not be completed", style: .failure)
        }
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
