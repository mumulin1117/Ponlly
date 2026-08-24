import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PasteupEchoController: UIViewController {
    private enum SectionMode {
        case following
        case process
    }

    private let followButton = UIButton(type: .system)
    private let processButton = UIButton(type: .system)
    private let indicator = UIView()
    private let emptyView = UIStackView()
    private var collectionView: UICollectionView!
    private var indicatorCenterConstraint: NSLayoutConstraint?
    private var selectedMode: SectionMode = .process
    var visibleVideos: [PonllyVideo] {
        switch selectedMode {
        case .following:
            return PonllyDataCenter.visibleVideos().filter { PonllyDataCenter.isFollowing($0.authorId) }
        case .process:
            return PonllyDataCenter.visibleVideos()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        navigationController?.setNavigationBarHidden(true, animated: false)
        setupCollection()
        setupHeader()
        setupEmptyView()
        updateTabs()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
        reloadFeed()
        collectionView.reloadData()
        playCenteredCell()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        collectionView.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { $0.pause() }
    }

    private func setupCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = PonllyPalette.background
        collectionView.isPagingEnabled = false
        collectionView.decelerationRate = .fast
        collectionView.alwaysBounceVertical = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(MMuralGridell.self, forCellWithReuseIdentifier: MMuralGridell.reuseId)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        collectionView.pinToEdges(of: view)
    }

    private func setupHeader() {
        let header = UIStackView(arrangedSubviews: [followButton, processButton])
        header.axis = .horizontal
        header.spacing = 24
        header.alignment = .center
        header.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(header)

        configureTab(followButton, title: "Follow", action: #selector(followTapped))
        configureTab(processButton, title: "Process", action: #selector(processTapped))

        indicator.backgroundColor = PonllyPalette.pink
        indicator.layer.cornerRadius = 1.5
        indicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(indicator)

        indicatorCenterConstraint = indicator.centerXAnchor.constraint(equalTo: processButton.centerXAnchor)
        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
            indicator.widthAnchor.constraint(equalToConstant: 40),
            indicator.heightAnchor.constraint(equalToConstant: 3),
            indicator.topAnchor.constraint(equalTo: processButton.bottomAnchor, constant: 6),
            indicatorCenterConstraint!
        ])
    }

    private func configureTab(_ button: UIButton, title: String, action: Selector) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = PonllyFonts.display(size: 13)
        button.addTarget(self, action: action, for: .touchUpInside)
    }

    private func setupEmptyView() {
        emptyView.axis = .vertical
        emptyView.alignment = .center
        emptyView.spacing = 14
        emptyView.isHidden = true
        emptyView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emptyView)

        let icon = UIImageView(image: UIImage(systemName: "play.rectangle.on.rectangle"))
        icon.tintColor = PonllyPalette.cyan
        icon.contentMode = .scaleAspectFit
        icon.widthAnchor.constraint(equalToConstant: 58).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 58).isActive = true

        let title = UILabel()
        title.text = "No followed artists yet"
        title.textColor = .white
        title.font = PonllyFonts.display(size: 18)
        title.textAlignment = .center

        let body = UILabel()
        body.text = "Follow street artists from Process to build your clip lane."
        body.textColor = PonllyPalette.muted
        body.font = PonllyFonts.body(size: 13, weight: .medium)
        body.numberOfLines = 0
        body.textAlignment = .center

        [icon, title, body].forEach(emptyView.addArrangedSubview)
        NSLayoutConstraint.activate([
            emptyView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emptyView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            emptyView.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 34),
            emptyView.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -34)
        ])
    }

    private func updateTabs() {
        let isProcess = selectedMode == .process
        followButton.setTitleColor(isProcess ? PonllyPalette.muted : PonllyPalette.pink, for: .normal)
        processButton.setTitleColor(isProcess ? PonllyPalette.pink : PonllyPalette.muted, for: .normal)
        followButton.titleLabel?.font = PonllyFonts.display(size: 13)
        processButton.titleLabel?.font = PonllyFonts.display(size: 13)
        emptyView.isHidden = !(selectedMode == .following && visibleVideos.isEmpty)
        collectionView.isHidden = selectedMode == .following && visibleVideos.isEmpty
        indicatorCenterConstraint?.isActive = false
        indicatorCenterConstraint = indicator.centerXAnchor.constraint(equalTo: isProcess ? processButton.centerXAnchor : followButton.centerXAnchor)
        indicatorCenterConstraint?.isActive = true
        UIView.animate(withDuration: 0.22) {
            self.view.layoutIfNeeded()
        }
    }

    private func reloadFeed() {
        collectionView.reloadData()
        collectionView.layoutIfNeeded()
        collectionView.setContentOffset(.zero, animated: false)
        updateTabs()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.playCenteredCell()
        }
    }

    func updateVideo(_ video: PonllyVideo) {
        guard let index = PonllyDataCenter.videos.firstIndex(where: { $0.id == video.id }) else { return }
        PonllyDataCenter.videos[index] = video
        reloadFeed()
    }

    private func currentVideo(at indexPath: IndexPath) -> PonllyVideo? {
        guard visibleVideos.indices.contains(indexPath.item) else { return nil }
        return visibleVideos[indexPath.item]
    }

    func playCenteredCell() {
        let center = CGPoint(x: collectionView.bounds.midX, y: collectionView.contentOffset.y + collectionView.bounds.midY)
        collectionView.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { $0.pause() }
        if let indexPath = collectionView.indexPathForItem(at: center),
           let cell = collectionView.cellForItem(at: indexPath) as? MMuralGridell {
            cell.play()
        }
    }

    func updatePlaybackForVisibleCells() {
        guard !collectionView.isHidden else { return }
        let viewport = CGRect(origin: collectionView.contentOffset, size: collectionView.bounds.size)
        collectionView.visibleCells.compactMap { $0 as? MMuralGridell }.forEach { cell in
            let visibleHeight = cell.frame.intersection(viewport).height
            let visibility = visibleHeight / max(cell.bounds.height, 1)
            visibility >= 0.55 ? cell.play() : cell.pause()
        }
    }

    func snappedOffsetY(for proposedY: CGFloat, velocityY: CGFloat) -> CGFloat {
        let pageHeight = max(collectionView.bounds.height, 1)
        let currentPage = collectionView.contentOffset.y / pageHeight
        let proposedPage = proposedY / pageHeight
        let targetPage: CGFloat
        if velocityY > 0.25 {
            targetPage = floor(currentPage) + 1
        } else if velocityY < -0.25 {
            targetPage = ceil(currentPage) - 1
        } else {
            targetPage = round(proposedPage)
        }
        let maxPage = max(CGFloat(visibleVideos.count - 1), 0)
        return min(max(targetPage, 0), maxPage) * pageHeight
    }

    func snapToNearestVideo(animated: Bool) {
        let y = snappedOffsetY(for: collectionView.contentOffset.y, velocityY: 0)
        collectionView.setContentOffset(CGPoint(x: 0, y: y), animated: animated)
    }

    func requireVideoLogin(_ completion: @escaping () -> Void) {
        FlckinkMatteFinish.shared.requireLogin(from: self, completion: completion)
    }

    @objc private func followTapped() {
        selectedMode = .following
        reloadFeed()
    }

    @objc private func processTapped() {
        selectedMode = .process
        reloadFeed()
    }
}
