import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class RErstSteelGateController: UIViewController {
    private let draft: BruCiuOutlinePlan
    private let balanceLabel = UILabel()

    init(draft: BruCiuOutlinePlan) {
        self.draft = draft
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Theme Store"
        view.backgroundColor = PonllyPalette.background
        setup()
        NotificationCenter.default.addObserver(self, selector: #selector(balanceDidChange), name: .ponllyCoinBalanceDidChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        stack.addArrangedSubview(balanceStrip())
        if let spotlight = RErstLayerPlan.themes.first {
            stack.addArrangedSubview(spotlightCard(spotlight))
        }
        let browse = UILabel()
        browse.text = "Browse Themes"
        browse.textColor = PonllyPalette.muted
        browse.font = PonllyFonts.display(size: 11)
        stack.addArrangedSubview(browse)

        let grid = UIStackView()
        grid.axis = .vertical
        grid.spacing = 12
        let otherThemes = Array(RErstLayerPlan.themes.dropFirst())
        for index in stride(from: 0, to: otherThemes.count, by: 2) {
            let row = UIStackView()
            row.axis = .horizontal
            row.spacing = 12
            row.distribution = .fillEqually
            row.addArrangedSubview(themeTile(otherThemes[index]))
            if index + 1 < otherThemes.count {
                row.addArrangedSubview(themeTile(otherThemes[index + 1]))
            } else {
                row.addArrangedSubview(UIView())
            }
            grid.addArrangedSubview(row)
        }
        stack.addArrangedSubview(grid)

        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 16),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -30)
        ])
    }

    private func balanceStrip() -> UIView {
        let strip = UIView()
        strip.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        strip.layer.cornerRadius = 14
        strip.layer.borderWidth = 1
        strip.layer.borderColor = UIColor(red: 1, green: 217/255, blue: 0, alpha: 0.42).cgColor

        let icon = UIImageView(image: UIImage(named: "coin_glow_wrapper"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        strip.addSubview(icon)

        balanceLabel.textColor = .white
        balanceLabel.font = PonllyFonts.display(size: 13)
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        strip.addSubview(balanceLabel)
        refreshBalanceLabel()

        let hint = UILabel()
        hint.text = "Choose a room look"
        hint.textColor = PonllyPalette.muted
        hint.font = PonllyFonts.body(size: 12, weight: .medium)
        hint.translatesAutoresizingMaskIntoConstraints = false
        strip.addSubview(hint)

        NSLayoutConstraint.activate([
            strip.heightAnchor.constraint(equalToConstant: 48),
            icon.leadingAnchor.constraint(equalTo: strip.leadingAnchor, constant: 14),
            icon.centerYAnchor.constraint(equalTo: strip.centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: 22),
            icon.heightAnchor.constraint(equalToConstant: 22),
            balanceLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 8),
            balanceLabel.centerYAnchor.constraint(equalTo: strip.centerYAnchor),
            hint.trailingAnchor.constraint(equalTo: strip.trailingAnchor, constant: -14),
            hint.centerYAnchor.constraint(equalTo: strip.centerYAnchor),
            hint.leadingAnchor.constraint(greaterThanOrEqualTo: balanceLabel.trailingAnchor, constant: 10)
        ])
        return strip
    }

    private func refreshBalanceLabel() {
        balanceLabel.text = "\(PonllyDataCenter.coinBalance.formatted()) Coins"
    }

    private func spotlightCard(_ theme: OnllPaintPlanTheme) -> UIView {
        let card = UIControl()
        card.backgroundColor = PonllyPalette.panel
        card.layer.cornerRadius = 18
        card.layer.borderWidth = 1
        card.layer.borderColor = PonllyPalette.line.cgColor
        card.translatesAutoresizingMaskIntoConstraints = false
        card.addTarget(self, action: #selector(previewSpotlight), for: .touchUpInside)

        let image = UIImageView(image: UIImage(named: theme.imageName))
        image.isUserInteractionEnabled = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        image.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(image)
        let badge = UILabel()
        badge.isUserInteractionEnabled = false
        badge.text = theme.availability
        badge.textColor = .black
        badge.backgroundColor = .yellow
        badge.font = PonllyFonts.themeFont(size: 8)
        badge.textAlignment = .center
        badge.layer.cornerRadius = 8
        badge.clipsToBounds = true
        badge.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(badge)
        let title = UILabel()
        title.isUserInteractionEnabled = false
        title.text = theme.name
        title.textColor = .white
        title.font = PonllyFonts.display(size: 16)
        title.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(title)
        let subtitle = UILabel()
        subtitle.isUserInteractionEnabled = false
        subtitle.text = theme.subtitle
        subtitle.textColor = PonllyPalette.muted
        subtitle.font = PonllyFonts.body(size: 12, weight: .regular)
        subtitle.numberOfLines = 2
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(subtitle)
        let meta = UILabel()
        meta.isUserInteractionEnabled = false
        meta.text = "\(theme.cost.formatted()) Coins"
        meta.textColor = theme.accent
        meta.font = PonllyFonts.mono(size: 14)
        meta.translatesAutoresizingMaskIntoConstraints = false
        card.addSubview(meta)
        let preview = UIButton(type: .system)
        preview.setTitle("Choose", for: .normal)
        preview.setTitleColor(.black, for: .normal)
        preview.titleLabel?.font = PonllyFonts.display(size: 10)
        preview.backgroundColor = PonllyPalette.cyan
        preview.layer.cornerRadius = 10
        preview.translatesAutoresizingMaskIntoConstraints = false
        preview.addTarget(self, action: #selector(previewSpotlight), for: .touchUpInside)
        card.addSubview(preview)

        NSLayoutConstraint.activate([
            card.heightAnchor.constraint(equalToConstant: 196),
            image.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 12),
            image.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -12),
            image.topAnchor.constraint(equalTo: card.topAnchor, constant: 12),
            image.heightAnchor.constraint(equalToConstant: 88),
            badge.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 8),
            badge.topAnchor.constraint(equalTo: image.topAnchor, constant: 8),
            badge.widthAnchor.constraint(greaterThanOrEqualToConstant: 88),
            badge.heightAnchor.constraint(equalToConstant: 18),
            title.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 14),
            title.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 12),
            subtitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subtitle.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -14),
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 4),
            meta.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            meta.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -16),
            preview.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -14),
            preview.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -12),
            preview.widthAnchor.constraint(equalToConstant: 82),
            preview.heightAnchor.constraint(equalToConstant: 32)
        ])
        return card
    }

    private func themeTile(_ theme: OnllPaintPlanTheme) -> UIControl {
        let tile = PoponllRollingShutterTile(theme: theme)
        tile.addTarget(self, action: #selector(themeTileTapped(_:)), for: .touchUpInside)
        return tile
    }

    @objc private func previewSpotlight() {
        guard let theme = RErstLayerPlan.themes.first else { return }
        showThemeConfirm(theme)
    }

    @objc private func themeTileTapped(_ sender: PoponllRollingShutterTile) {
        showThemeConfirm(sender.theme)
    }

    private func showThemeConfirm(_ theme: OnllPaintPlanTheme) {
        let confirm = PonllysprayRhythmController(theme: theme) { [weak self] selectedTheme in
            guard let self else { return }
            if PonllyDataCenter.coinBalance < selectedTheme.cost {
                self.ponllyShowNotice("Add coins to unlock this theme", style: .info)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    let store = PoonllFineLineController()
                    store.hidesBottomBarWhenPushed = true
                    self.navigationController?.pushViewController(store, animated: true)
                }
                return
            }
            self.ponllyShowNotice("Preparing room...", style: .loading, autoDismissAfter: 0.75)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                guard PonllyDataCenter.spendCoins(selectedTheme.cost) else {
                    self.ponllyShowNotice("Add coins to unlock this theme", style: .info)
                    let store = PoonllFineLineController()
                    store.hidesBottomBarWhenPushed = true
                    self.navigationController?.pushViewController(store, animated: true)
                    return
                }
                self.navigationController?.pushViewController(PonllyurbanCanvasController(draft: self.draft, theme: selectedTheme), animated: true)
            }
        }
        confirm.modalPresentationStyle = .overFullScreen
        confirm.modalTransitionStyle = .crossDissolve
        present(confirm, animated: true)
    }

    @objc private func balanceDidChange() {
        refreshBalanceLabel()
    }
}
