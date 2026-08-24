import AVFoundation
import UIKit

extension PonllyVideoFeedViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        visibleVideos.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PonllyVideoFeedCell.reuseId, for: indexPath) as! PonllyVideoFeedCell
        var video = visibleVideos[indexPath.item]
        video.isFollowingAuthor = PonllyDataCenter.isFollowing(video.authorId)
        cell.configure(video: video)
        cell.onAvatar = { [weak self] in
            guard let self else { return }
            let profile = FlckinkPrimerCoatController(user: PonllyDataCenter.user(video.authorId))
            profile.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(profile, animated: true)
        }
        cell.onFollow = { [weak self] in
            guard let self else { return }
            self.requireVideoLogin {
                var updated = video
                let following = PonllyDataCenter.toggleFollow(video.authorId)
                updated.isFollowingAuthor = following
                self.updateVideo(updated)
                self.ponllyShowToast(following ? "Artist followed" : "Artist unfollowed")
            }
        }
        cell.onLike = { [weak self] in
            guard let self else { return }
            self.requireVideoLogin {
                var updated = video
                updated.isLiked.toggle()
                updated.reactionCount += updated.isLiked ? 1 : -1
                self.updateVideo(updated)
                self.ponllyShowToast(updated.isLiked ? "Added to your likes" : "Updated")
            }
        }
        cell.onComment = { [weak self] in
            guard let self else { return }
            self.presentComments(for: video)
        }
        cell.onReport = { [weak self] in
            guard let self else { return }
            self.requireVideoLogin {
                let report = PonllyReportRoomViewController(video: video)
                report.onReportSubmitted = { [weak self] in
                    self?.ponllyShowNotice("Report submitted", style: .success)
                }
                report.modalPresentationStyle = .overFullScreen
                report.modalTransitionStyle = .crossDissolve
                self.present(report, animated: true)
            }
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        collectionView.bounds.size
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? PonllyVideoFeedCell)?.play()
    }

    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? PonllyVideoFeedCell)?.pause()
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updatePlaybackForVisibleCells()
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        snapToNearestVideo(animated: false)
        playCenteredCell()
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            snapToNearestVideo(animated: true)
            playCenteredCell()
        }
    }

    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        playCenteredCell()
    }

    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        targetContentOffset.pointee.y = snappedOffsetY(for: targetContentOffset.pointee.y, velocityY: velocity.y)
        targetContentOffset.pointee.x = 0
    }
}

private extension PonllyVideoFeedViewController {
    func presentComments(for video: PonllyVideo) {
        requireVideoLogin {
            let sheet = PonllyVideoCommentsViewController(video: video) { [weak self] updated in
                self?.updateVideo(updated)
            }
            sheet.modalPresentationStyle = .overFullScreen
            self.present(sheet, animated: false)
        }
    }
}
