import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyVideoFeedCell: UICollectionViewCell {
    static let reuseId = "PonllyVideoFeedCell"

    var onAvatar: (() -> Void)?
    var onFollow: (() -> Void)?
    var onLike: (() -> Void)?
    var onComment: (() -> Void)?
    var onReport: (() -> Void)?

    private let playerLayer = AVPlayerLayer()
    private var player: AVPlayer?
    private var isPlaying = false
    private let overlay = CAGradientLayer()
    private let centerPlayButton = UIButton(type: .system)
    private let avatarButton = UIButton(type: .system)
    private let followButton = UIButton(type: .system)
    private let authorLabel = UILabel()
    private let captionLabel = UILabel()
    private let progressTrack = UIView()
    private let progressBar = UIView()
    private let likeButton = UIButton(type: .system)
    private let likeCountLabel = UILabel()
    private let commentButton = UIButton(type: .system)
    private let commentCountLabel = UILabel()
    private let reportButton = UIButton(type: .system)
    private let reportLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        pause()
        player = nil
        playerLayer.player = nil
        NotificationCenter.default.removeObserver(self)
        isPlaying = false
        updateCenterPlayButton()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = contentView.bounds
        overlay.frame = contentView.bounds
    }

    func configure(video: PonllyVideo) {
        let user = PonllyDataCenter.user(video.authorId)
        authorLabel.text = "@\(user.name.lowercased())"
        captionLabel.text = video.details
        likeCountLabel.text = compactCount(video.reactionCount)
        commentCountLabel.text = compactCount(video.commentCount)
        followButton.setTitle(video.isFollowingAuthor ? "Following" : "Follow", for: .normal)
        likeButton.tintColor = video.isLiked ? PonllyPalette.pink : .white
        likeButton.setImage(UIImage(systemName: video.isLiked ? "heart.fill" : "heart"), for: .normal)

        avatarButton.subviews.forEach { $0.removeFromSuperview() }
        let avatar = PonllyAvatarView(user: user, size: 44)
        avatar.isUserInteractionEnabled = false
        avatarButton.addSubview(avatar)
        avatar.pinToEdges(of: avatarButton)

        let videoURL = Bundle.main.url(forResource: video.fileName, withExtension: "mp4")
            ?? Bundle.main.url(forResource: video.fileName, withExtension: "mp4", subdirectory: "VideoClips")
        if let url = videoURL {
            let item = AVPlayerItem(url: url)
            player = AVPlayer(playerItem: item)
            player?.isMuted = true
            playerLayer.player = player
            NotificationCenter.default.addObserver(self, selector: #selector(loopVideo), name: .AVPlayerItemDidPlayToEndTime, object: item)
        }
    }

    func play() {
        isPlaying = true
        updateCenterPlayButton()
        player?.play()
    }

    func pause() {
        isPlaying = false
        updateCenterPlayButton()
        player?.pause()
    }

    private func setup() {
        contentView.backgroundColor = PonllyPalette.background
        playerLayer.videoGravity = .resizeAspectFill
        contentView.layer.addSublayer(playerLayer)

        overlay.colors = [
            UIColor.black.withAlphaComponent(0.15).cgColor,
            UIColor.black.withAlphaComponent(0.05).cgColor,
            UIColor.black.withAlphaComponent(0.78).cgColor
        ]
        overlay.locations = [0, 0.48, 1]
        contentView.layer.addSublayer(overlay)

        [centerPlayButton, avatarButton, followButton, authorLabel, captionLabel, progressTrack, likeButton, likeCountLabel, commentButton, commentCountLabel, reportButton, reportLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }

        centerPlayButton.backgroundColor = UIColor.black.withAlphaComponent(0.42)
        centerPlayButton.tintColor = .white
        centerPlayButton.layer.cornerRadius = 34
        centerPlayButton.layer.borderWidth = 2
        centerPlayButton.layer.borderColor = PonllyPalette.cyan.cgColor
        centerPlayButton.layer.shadowColor = PonllyPalette.cyan.cgColor
        centerPlayButton.layer.shadowOpacity = 0.35
        centerPlayButton.layer.shadowRadius = 14
        centerPlayButton.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 24, weight: .bold), forImageIn: .normal)
        centerPlayButton.addTarget(self, action: #selector(centerPlayTapped), for: .touchUpInside)
        updateCenterPlayButton()

        avatarButton.layer.cornerRadius = 22
        avatarButton.layer.borderWidth = 2
        avatarButton.layer.borderColor = PonllyPalette.pink.cgColor
        avatarButton.clipsToBounds = true
        avatarButton.addTarget(self, action: #selector(avatarTapped), for: .touchUpInside)

        followButton.backgroundColor = PonllyPalette.pink
        followButton.layer.cornerRadius = 15
        followButton.titleLabel?.font = PonllyFonts.display(size: 9)
        followButton.titleLabel?.adjustsFontSizeToFitWidth = true
        followButton.titleLabel?.minimumScaleFactor = 0.72
        followButton.setTitleColor(.white, for: .normal)
        followButton.addTarget(self, action: #selector(followTapped), for: .touchUpInside)

        authorLabel.textColor = PonllyPalette.cyan
        authorLabel.font = PonllyFonts.display(size: 14)
        authorLabel.layer.shadowColor = PonllyPalette.cyan.cgColor
        authorLabel.layer.shadowOpacity = 0.35
        authorLabel.layer.shadowRadius = 10

        captionLabel.textColor = .white
        captionLabel.font = PonllyFonts.body(size: 13, weight: .regular)
        captionLabel.numberOfLines = 3

        progressTrack.backgroundColor = UIColor.white.withAlphaComponent(0.16)
        progressTrack.layer.cornerRadius = 3
        progressTrack.addSubview(progressBar)
        progressBar.backgroundColor = PonllyPalette.pink
        progressBar.layer.cornerRadius = 3
        progressBar.translatesAutoresizingMaskIntoConstraints = false

        configureActionButton(likeButton, symbol: "heart")
        configureActionButton(commentButton, symbol: "bubble.left")
        configureActionButton(reportButton, symbol: "exclamationmark.circle")
        likeButton.addTarget(self, action: #selector(likeTapped), for: .touchUpInside)
        commentButton.addTarget(self, action: #selector(commentTapped), for: .touchUpInside)
        reportButton.addTarget(self, action: #selector(reportTapped), for: .touchUpInside)

        [likeCountLabel, commentCountLabel].forEach {
            $0.textColor = .white
            $0.font = PonllyFonts.mono(size: 11)
            $0.textAlignment = .center
        }
        reportLabel.text = "Report"
        reportLabel.textColor = .white
        reportLabel.font = PonllyFonts.body(size: 11, weight: .regular)
        reportLabel.textAlignment = .center

        NSLayoutConstraint.activate([
            centerPlayButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            centerPlayButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            centerPlayButton.widthAnchor.constraint(equalToConstant: 68),
            centerPlayButton.heightAnchor.constraint(equalToConstant: 68),

            avatarButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            avatarButton.bottomAnchor.constraint(equalTo: followButton.topAnchor, constant: -8),
            avatarButton.widthAnchor.constraint(equalToConstant: 44),
            avatarButton.heightAnchor.constraint(equalToConstant: 44),
            followButton.centerXAnchor.constraint(equalTo: avatarButton.centerXAnchor),
            followButton.bottomAnchor.constraint(equalTo: likeButton.topAnchor, constant: -32),
            followButton.widthAnchor.constraint(equalToConstant: 80),
            followButton.heightAnchor.constraint(equalToConstant: 30),

            likeButton.centerXAnchor.constraint(equalTo: avatarButton.centerXAnchor),
            likeButton.bottomAnchor.constraint(equalTo: likeCountLabel.topAnchor, constant: -10),
            likeButton.widthAnchor.constraint(equalToConstant: 44),
            likeButton.heightAnchor.constraint(equalToConstant: 44),
            likeCountLabel.centerXAnchor.constraint(equalTo: likeButton.centerXAnchor),
            likeCountLabel.bottomAnchor.constraint(equalTo: commentButton.topAnchor, constant: -28),

            commentButton.centerXAnchor.constraint(equalTo: avatarButton.centerXAnchor),
            commentButton.bottomAnchor.constraint(equalTo: commentCountLabel.topAnchor, constant: -10),
            commentButton.widthAnchor.constraint(equalToConstant: 44),
            commentButton.heightAnchor.constraint(equalToConstant: 44),
            commentCountLabel.centerXAnchor.constraint(equalTo: commentButton.centerXAnchor),
            commentCountLabel.bottomAnchor.constraint(equalTo: reportButton.topAnchor, constant: -32),

            reportButton.centerXAnchor.constraint(equalTo: avatarButton.centerXAnchor),
            reportButton.bottomAnchor.constraint(equalTo: reportLabel.topAnchor, constant: -8),
            reportButton.widthAnchor.constraint(equalToConstant: 44),
            reportButton.heightAnchor.constraint(equalToConstant: 44),
            reportLabel.centerXAnchor.constraint(equalTo: reportButton.centerXAnchor),
            reportLabel.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -58),

            authorLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            authorLabel.bottomAnchor.constraint(equalTo: captionLabel.topAnchor, constant: -8),

            captionLabel.leadingAnchor.constraint(equalTo: authorLabel.leadingAnchor),
            captionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            captionLabel.bottomAnchor.constraint(equalTo: progressTrack.topAnchor, constant: -18),

            progressTrack.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            progressTrack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -96),
            progressTrack.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: -28),
            progressTrack.heightAnchor.constraint(equalToConstant: 6),
            progressBar.leadingAnchor.constraint(equalTo: progressTrack.leadingAnchor),
            progressBar.topAnchor.constraint(equalTo: progressTrack.topAnchor),
            progressBar.bottomAnchor.constraint(equalTo: progressTrack.bottomAnchor),
            progressBar.widthAnchor.constraint(equalTo: progressTrack.widthAnchor, multiplier: 0.58)
        ])
    }

    private func configureActionButton(_ button: UIButton, symbol: String) {
        button.setImage(UIImage(systemName: symbol), for: .normal)
        button.tintColor = .white
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        button.imageView?.contentMode = .scaleAspectFit
    }

    private func compactCount(_ count: Int) -> String {
        if count >= 1000 {
            let value = Double(count) / 1000
            return String(format: value >= 10 ? "%.1fK" : "%.1fK", value)
        }
        return "\(count)"
    }

    private func updateCenterPlayButton() {
        let imageName = isPlaying ? "pause.fill" : "play.fill"
        centerPlayButton.setImage(UIImage(systemName: imageName), for: .normal)
    }

    @objc private func loopVideo() {
        player?.seek(to: .zero)
        player?.play()
    }

    @objc private func centerPlayTapped() {
        isPlaying ? pause() : play()
    }

    @objc private func avatarTapped() { onAvatar?() }
    @objc private func followTapped() { onFollow?() }
    @objc private func likeTapped() { onLike?() }
    @objc private func commentTapped() { onComment?() }
    @objc private func reportTapped() { onReport?() }
}
