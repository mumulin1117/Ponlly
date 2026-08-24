import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class InkUnderpassMuralController: UIViewController {
    private let scrollView = UIScrollView()
    private let stack = UIStackView()
    private let hotButton = UIButton(type: .system)
    private let waitingButton = UIButton(type: .system)
    private var selectedStatus: PonllyBattleStatus = .hot

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = PonllyPalette.background
        navigationController?.navigationBar.isHidden = true
        setupUI()
        reloadBattles()
        NotificationCenter.default.addObserver(self, selector: #selector(battlesDidChange), name: .ponllyBattlesDidChange, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        reloadBattles()
    }

    private func setupUI() {
        let bg = PonllyGradientView(colors: [PonllyPalette.background, UIColor(red: 13/255, green: 16/255, blue: 22/255, alpha: 1)])
        view.addSubview(bg)
        bg.pinToEdges(of: view)

        scrollView.alwaysBounceVertical = true
        scrollView.delaysContentTouches = false
        scrollView.canCancelContentTouches = true
        view.addSubview(scrollView)
        scrollView.pinToEdges(of: view)

        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)

        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        let titleLabel = UILabel()
        titleLabel.text = "Ponlly"
        titleLabel.font = PonllyFonts.display(size: 22)
        titleLabel.textColor = .white
        titleLabel.layer.shadowColor = PonllyPalette.pink.cgColor
        titleLabel.layer.shadowOpacity = 0.35
        titleLabel.layer.shadowRadius = 10
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(titleLabel)

        let bell = UIButton(type: .system)
        bell.setImage(UIImage(named: "header_actions")?.withRenderingMode(.alwaysOriginal), for: .normal)
        bell.imageView?.contentMode = .scaleAspectFit
        bell.translatesAutoresizingMaskIntoConstraints = false
        bell.addTarget(self, action: #selector(privateMessagingTapped), for: .touchUpInside)
        header.addSubview(bell)

        let segments = UIStackView(arrangedSubviews: [hotButton, waitingButton])
        segments.axis = .horizontal
        segments.spacing = 10
        segments.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(segments)

        configureSegment(hotButton, title: "Hot Battles", status: .hot)
        configureSegment(waitingButton, title: "Waiting for Challenge", status: .waiting)

        stack.addArrangedSubview(header)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -16),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 22),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -30),
            header.heightAnchor.constraint(equalToConstant: 116),
            titleLabel.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 4),
            titleLabel.topAnchor.constraint(equalTo: header.topAnchor),
            bell.trailingAnchor.constraint(equalTo: header.trailingAnchor, constant: -4),
            bell.topAnchor.constraint(equalTo: header.topAnchor, constant: 2),
            bell.widthAnchor.constraint(equalToConstant: 52),
            bell.heightAnchor.constraint(equalToConstant: 52),
            segments.leadingAnchor.constraint(equalTo: header.leadingAnchor, constant: 4),
            segments.trailingAnchor.constraint(lessThanOrEqualTo: header.trailingAnchor, constant: -4),
            segments.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 18),
            hotButton.heightAnchor.constraint(equalToConstant: 48),
            waitingButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    private func configureSegment(_ button: UIButton, title: String, status: PonllyBattleStatus) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = status == .hot ? PonllyFonts.body(size: 12, weight: .medium) : PonllyFonts.body(size: 12, weight: .bold)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.minimumScaleFactor = 0.86
        button.layer.cornerRadius = 24
        button.layer.borderWidth = 1.5
        button.tag = status == .hot ? 0 : 1
        button.addTarget(self, action: #selector(segmentTapped(_:)), for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: status == .hot ? 106 : 174).isActive = true
    }

    private func reloadBattles() {
        while stack.arrangedSubviews.count > 1 {
            stack.arrangedSubviews.last?.removeFromSuperview()
        }
        updateSegments()
        stack.addArrangedSubview(sectionHeader())
        let battles = PonllyDataCenter.visibleBattles(status: selectedStatus)
        for battle in battles {
            if selectedStatus == .waiting {
                let card = PonllyWaitingBattleCardView(battle: battle)
                card.onTap = { [weak self] in self?.openBattle(battle) }
                card.onArtist = { [weak self] user in self?.openArtist(user) }
                card.onJoin = { [weak self] in self?.joinBattle(battle) }
                stack.addArrangedSubview(card)
            } else {
                let card = CkinkMuralLabView(battle: battle)
                card.onTap = { [weak self] in self?.openBattle(battle) }
                card.onMore = { [weak self] in self?.showReportSheet(for: battle) }
                card.onArtist = { [weak self] user in self?.openArtist(user) }
                stack.addArrangedSubview(card)
            }
        }
    }

    private func sectionHeader() -> UIView {
        let title = UILabel()
        title.text = selectedStatus == .hot ? "Hot Battles" : "Waiting For Challenge"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 12)
        return title
    }

    private func updateSegments() {
        let selected = selectedStatus == .hot
        hotButton.backgroundColor = selected ? PonllyPalette.pink : .clear
        hotButton.setTitleColor(.white, for: .normal)
        hotButton.layer.borderColor = selected ? PonllyPalette.pink.cgColor : UIColor.white.withAlphaComponent(0.35).cgColor
        waitingButton.backgroundColor = selected ? .clear : PonllyPalette.pink
        waitingButton.setTitleColor(.white, for: .normal)
        waitingButton.layer.borderColor = selected ? UIColor.white.withAlphaComponent(0.35).cgColor : PonllyPalette.pink.cgColor
    }

    private func openBattle(_ battle: PonllyBattle) {
        let latestBattle = PonllyDataCenter.visibleBattles().first { $0.id == battle.id } ?? battle
        let detail = PbruCiuStencilLabController(battle: latestBattle)
        detail.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(detail, animated: true)
    }

    private func openArtist(_ user: PonllyUser) {
        let profile = FlckinkPrimerCoatController(user: user)
        profile.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(profile, animated: true)
    }

    private func joinBattle(_ battle: PonllyBattle) {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let accept = BruCiuSilverSheenController(battle: battle)
            accept.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(accept, animated: true)
        }
    }

    private func showReportSheet(for battle: PonllyBattle) {
        let alert = UIAlertController(title: "Battle Options", message: battle.title, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Report Challenge", style: .destructive) { _ in
            FlckinkMatteFinish.shared.requireLogin(from: self) {
                let report = PonllyroughFillController(battle: battle)
                report.onReportSubmitted = { [weak self] in
                    self?.ponllyShowNotice("Report submitted", style: .success)
                }
                report.modalPresentationStyle = .overFullScreen
                report.modalTransitionStyle = .crossDissolve
                self.present(report, animated: true)
            }
        })
        alert.addAction(UIAlertAction(title: "Not Interested", style: .default) { _ in
            self.ponllyShowToast("Updated")
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        if let popover = alert.popoverPresentationController {
            popover.sourceView = view
            popover.sourceRect = CGRect(x: view.bounds.midX, y: view.bounds.maxY - 80, width: 1, height: 1)
        }
        present(alert, animated: true)
    }

    @objc private func segmentTapped(_ sender: UIButton) {
        selectedStatus = sender.tag == 0 ? .hot : .waiting
        reloadBattles()
    }

    @objc private func privateMessagingTapped() {
        FlckinkMatteFinish.shared.requireLogin(from: self) {
            let inbox = PonllyDirectInboxViewController(keepsTabBarVisible: false)
            inbox.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(inbox, animated: true)
        }
    }

    @objc private func battlesDidChange() {
        selectedStatus = .hot
        reloadBattles()
    }
}
