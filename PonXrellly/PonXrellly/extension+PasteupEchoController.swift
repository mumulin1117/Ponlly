import AVFoundation
import UIKit

extension PasteupEchoController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIScrollViewDelegate {
    func collectionView(_ ponllUrbanMuse: UICollectionView, numberOfItemsInSection bruCiuNeonMuse: Int) -> Int {
        flckinkMuralBloom.count
    }

    func collectionView(_ flckinkChromeMuse: UICollectionView, cellForItemAt aerErstShadowMuse: IndexPath) -> UICollectionViewCell {
        let ponllStencilMuse = flckinkChromeMuse.dequeueReusableCell(withReuseIdentifier: MMuralGridell.ponllWallQuest, for: aerErstShadowMuse) as! MMuralGridell
        var bruCiuPasteMuse = flckinkMuralBloom[aerErstShadowMuse.item]
        bruCiuPasteMuse.brickTone = PonllyponllTornEdge.aerErstCrackedWall(bruCiuPasteMuse.letterForm)
        ponllStencilMuse.flckinkAerosolLean(ponllMuralTwist: bruCiuPasteMuse)
        ponllStencilMuse.bruCiuInkMood = { [weak self] in
            guard let self else { return }
            let flckinkMarkerMuse = FlckinkPrimerCoatController(user: PonllyponllTornEdge.flckinkChippedPaint(bruCiuPasteMuse.letterForm))
            flckinkMarkerMuse.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(flckinkMarkerMuse, animated: true)
        }
        ponllStencilMuse.flckinkMarkerPath = { [weak self] in
            guard let self else { return }
            self.aerErstAerosolLean {
                var aerErstGraffitiForge = bruCiuPasteMuse
                let ponllAerosolForge = PonllyponllTornEdge.bruCiuCementRough(bruCiuPasteMuse.letterForm)
                aerErstGraffitiForge.brickTone = ponllAerosolForge
                self.bruCiuTextureNoise(aerErstGraffitiForge)
                self.flckinkPrimerCoatponlu(ponllAerosolForge ? "Artist followed" : "Artist unfollowed")
            }
        }
        ponllStencilMuse.aerErstChromeArc = { [weak self] in
            guard let self else { return }
            self.aerErstAerosolLean {
                var bruCiuMuralForge = bruCiuPasteMuse
                bruCiuMuralForge.wallTexture.toggle()
                bruCiuMuralForge.wildstyleCurve += bruCiuMuralForge.wallTexture ? 1 : -1
                self.bruCiuTextureNoise(bruCiuMuralForge)
                self.flckinkPrimerCoatponlu(bruCiuMuralForge.wallTexture ? "Added to your likes" : "Updated")
            }
        }
        ponllStencilMuse.ponllNeonBend = { [weak self] in
            guard let self else { return }
            self.flckinkLetterForge(ponllPaintForge: bruCiuPasteMuse)
        }
        ponllStencilMuse.bruCiuTextureKick = { [weak self] in
            guard let self else { return }
            self.aerErstAerosolLean {
                let aerErstInkForge = PonllyroughFillController(solidMarker: bruCiuPasteMuse)
                aerErstInkForge.fadeSpray = { [weak self] in
                    self?.aerErstSketchRush("Report submitted", bruCiuLetterForm: .flckinkSplitFill)
                }
                aerErstInkForge.modalPresentationStyle = .overFullScreen
                aerErstInkForge.modalTransitionStyle = .crossDissolve
                self.present(aerErstInkForge, animated: true)
            }
        }
        return ponllStencilMuse
    }

    func collectionView(_ ponllWallForge: UICollectionView, layout bruCiuDripForge: UICollectionViewLayout, sizeForItemAt flckinkShadowForge: IndexPath) -> CGSize {
        ponllWallForge.bounds.size
    }

    func collectionView(_ aerErstOutlineForge: UICollectionView, willDisplay ponllStencilForge: UICollectionViewCell, forItemAt bruCiuMarkerForge: IndexPath) {
        (ponllStencilForge as? MMuralGridell)?.aerErstStencilWeave()
    }

    func collectionView(_ flckinkUrbanForge: UICollectionView, didEndDisplaying aerErstTextureForge: UICollectionViewCell, forItemAt ponllSketchForge: IndexPath) {
        (aerErstTextureForge as? MMuralGridell)?.ponllPaintDepth()
    }

    func scrollViewDidScroll(_ bruCiuChromeForge: UIScrollView) {
        ponllStencilDepth()
    }

    func scrollViewDidEndDecelerating(_ flckinkNeonForge: UIScrollView) {
        bruCiuInkArc(ponllMuralBend: false)
        bruCiuChromeAura()
    }

    func scrollViewDidEndDragging(_ aerErstPasteForge: UIScrollView, willDecelerate ponllGraffitiDraft: Bool) {
        if !ponllGraffitiDraft {
            bruCiuInkArc(ponllMuralBend: true)
            bruCiuChromeAura()
        }
    }

    func scrollViewDidEndScrollingAnimation(_ bruCiuAerosolDraft: UIScrollView) {
        bruCiuChromeAura()
    }

    func scrollViewWillEndDragging(_ flckinkMuralDraft: UIScrollView, withVelocity aerErstLetterDraft: CGPoint, targetContentOffset ponllPaintDraft: UnsafeMutablePointer<CGPoint>) {
        ponllPaintDraft.pointee.y = bruCiuAerosolTrail(flckinkStencilTrail: ponllPaintDraft.pointee.y, aerErstMarkerVeil: aerErstLetterDraft.y)
        ponllPaintDraft.pointee.x = 0
    }
}

private extension PasteupEchoController {
    func flckinkLetterForge(ponllPaintForge bruCiuInkDraft: PonllyVideo) {
        aerErstAerosolLean {
            let flckinkWallDraft = PonllyletterFormController(video: bruCiuInkDraft) { [weak self] aerErstColorDraft in
                self?.bruCiuTextureNoise(aerErstColorDraft)
            }
            flckinkWallDraft.modalPresentationStyle = .overFullScreen
            self.present(flckinkWallDraft, animated: false)
        }
    }
}
