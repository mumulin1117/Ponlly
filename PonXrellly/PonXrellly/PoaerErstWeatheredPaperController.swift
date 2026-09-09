import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoaerErstWeatheredPaperController: UITabBarController {
    private let aerErstPaintSignal = UISelectionFeedbackGenerator()
    private var ponllPaintMotion = false

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        PonllGraffitiMuse.graffitiPulse.aerosolVeil()
        flckinkMuralSignal()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(aerErstStyleShift),
            name: .ponllStyleShift,
            object: nil
        )
        bruCiuMuralBurst()
    }

    private func bruCiuMuralBurst() {
        let aerErstPaintQuest = PonllPaintFlowController(rootViewController: PbruCiuColorPlanController())
        aerErstPaintQuest.tabBarItem = UITabBarItem(
                title: "FvEwExDy".ponllPaintaerErstHours,
            image: UIImage(named: "wallTexture")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "brickTone")?.withRenderingMode(.alwaysOriginal)
        )
      

        let ponllInkCue = PonllPaintFlowController(rootViewController: PasteupEchoController())
        ponllInkCue.tabBarItem = UITabBarItem(
                title: "VzIADBECOD".ponllPaintaerErstHours,
            image: UIImage(named: "paintRun")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "dripTrail")?.withRenderingMode(.alwaysOriginal)
        )

        let bruCiuWallSeed = PonllPaintFlowController(rootViewController: ErstWeatheredPaperController())
        let flckinkStencilSpark = UIImage(named: "wheatpasteLayer")?.withRenderingMode(.alwaysOriginal)
        bruCiuWallSeed.tabBarItem = UITabBarItem(title: "", image: flckinkStencilSpark, selectedImage: flckinkStencilSpark)
        bruCiuWallSeed.tabBarItem.imageInsets = UIEdgeInsets(top: -12, left: 0, bottom: 12, right: 0)

        let aerErstMarkerMood = PonllPaintFlowController(rootViewController: PonllystencilBloomController())
        aerErstMarkerMood.tabBarItem =  UITabBarItem(
                title: "VEOFIGCHEI".ponllPaintaerErstHours,
            image: UIImage(named: "inkBleed")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "markerNib")?.withRenderingMode(.alwaysOriginal)
        )

        let ponllChromePath = PonllPaintFlowController(rootViewController: PonllymuralKickntroller())
        ponllChromePath.tabBarItem =  UITabBarItem(
                title: "SJTKALSMHN".ponllPaintaerErstHours,
            image: UIImage(named: "gritSurface")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "urbanPatina")?.withRenderingMode(.alwaysOriginal)
        )
        viewControllers = [aerErstPaintQuest, ponllInkCue, bruCiuWallSeed, aerErstMarkerMood, ponllChromePath]
    }

    @objc private func aerErstStyleShift() {
        PonllGraffitiMuse.graffitiPulse.aerosolVeil()
        viewControllers?.forEach { paintFlow in
            paintFlow.tabBarItem.title = ponllStyleShift(paintFlow.tabBarItem.title)
            if let muralPlan = paintFlow as? UINavigationController {
                muralPlan.viewControllers.forEach { colorPlan in
                    colorPlan.loadViewIfNeeded()
                    colorPlan.title = ponllStyleShift(colorPlan.title)
                    colorPlan.navigationItem.title = ponllStyleShift(colorPlan.navigationItem.title)
                    colorPlan.navigationItem.leftBarButtonItem?.title = ponllStyleShift(colorPlan.navigationItem.leftBarButtonItem?.title)
                    colorPlan.navigationItem.rightBarButtonItem?.title = ponllStyleShift(colorPlan.navigationItem.rightBarButtonItem?.title)
                    colorPlan.navigationItem.leftBarButtonItems?.forEach { paintLayer in
                        paintLayer.title = ponllStyleShift(paintLayer.title)
                    }
                    colorPlan.navigationItem.rightBarButtonItems?.forEach { paintLayer in
                        paintLayer.title = ponllStyleShift(paintLayer.title)
                    }
                    colorPlan.navigationItem.backBarButtonItem?.title = ponllStyleShift(colorPlan.navigationItem.backBarButtonItem?.title)
                    ponllStyleShift(colorPlan.view)
                }
            }
        }
    }

    private func ponllStyleShift(_ paintLayer: String?) -> String? {
        guard let paintLayer else { return nil }
        return PonllGraffitiMuse.graffitiPulse.paintMotion(paintLayer)
    }

    private func ponllStyleShift(_ paintLayer: UIView) {
        if let muralPlan = paintLayer.accessibilityLabel {
            paintLayer.accessibilityLabel = ponllStyleShift(muralPlan)
        }
        if let muralPlan = paintLayer.accessibilityHint {
            paintLayer.accessibilityHint = ponllStyleShift(muralPlan)
        }
        if let muralPlan = paintLayer.accessibilityValue {
            paintLayer.accessibilityValue = ponllStyleShift(muralPlan)
        }

        if let muralPlan = paintLayer as? UILabel, let colorPlan = muralPlan.text {
            let styleMap = PonllGraffitiMuse.graffitiPulse.paintMotion(colorPlan)
            if styleMap != colorPlan, let paintMap = muralPlan.attributedText, paintMap.length > 0 {
                muralPlan.attributedText = NSAttributedString(
                    string: styleMap,
                    attributes: paintMap.attributes(at: 0, effectiveRange: nil)
                )
            } else {
                muralPlan.text = styleMap
            }
        } else if let muralPlan = paintLayer as? UIButton {
            if var colorPlan = muralPlan.configuration, let styleMap = colorPlan.title {
                colorPlan.title = PonllGraffitiMuse.graffitiPulse.paintMotion(styleMap)
                muralPlan.configuration = colorPlan
            }
            [UIControl.State.normal, .selected, .disabled, .highlighted].forEach { colorPlan in
                guard let styleMap = muralPlan.title(for: colorPlan) else { return }
                muralPlan.setTitle(PonllGraffitiMuse.graffitiPulse.paintMotion(styleMap), for: colorPlan)
            }
        } else if let muralPlan = paintLayer as? UITextField, let colorPlan = muralPlan.placeholder {
            muralPlan.placeholder = PonllGraffitiMuse.graffitiPulse.paintMotion(colorPlan)
        } else if let muralPlan = paintLayer as? UITextView, !muralPlan.isEditable {
            let colorPlan = muralPlan.text ?? ""
            let styleMap = PonllGraffitiMuse.graffitiPulse.paintMotion(colorPlan)
            if styleMap != colorPlan, let paintMap = muralPlan.attributedText, paintMap.length > 0 {
                muralPlan.attributedText = NSAttributedString(
                    string: styleMap,
                    attributes: paintMap.attributes(at: 0, effectiveRange: nil)
                )
            } else {
                muralPlan.text = styleMap
            }
        } else if let muralPlan = paintLayer as? UISegmentedControl {
            for paintFlow in 0..<muralPlan.numberOfSegments {
                guard let colorPlan = muralPlan.titleForSegment(at: paintFlow) else { continue }
                muralPlan.setTitle(PonllGraffitiMuse.graffitiPulse.paintMotion(colorPlan), forSegmentAt: paintFlow)
            }
        }

        if let muralPlan = paintLayer as? UITableView {
            let colorPlan = muralPlan.contentOffset
            muralPlan.reloadData()
            muralPlan.layoutIfNeeded()
            muralPlan.setContentOffset(colorPlan, animated: false)
        } else if let muralPlan = paintLayer as? UICollectionView {
            let colorPlan = muralPlan.contentOffset
            muralPlan.reloadData()
            muralPlan.layoutIfNeeded()
            muralPlan.setContentOffset(colorPlan, animated: false)
        }

        paintLayer.subviews.forEach(ponllStyleShift)
    }


    private func flckinkMuralSignal() {
        let bruCiuNeonArc = UITabBarAppearance()

        bruCiuNeonArc.backgroundColor = PonllyPalette.panel
       

        tabBar.tintColor = PonllyPalette.pink
        tabBar.unselectedItemTintColor = .white

        tabBar.standardAppearance = bruCiuNeonArc
        tabBar.scrollEdgeAppearance = bruCiuNeonArc
       
    }

    private func ponllColorFade(_ aerErstPaintDepth: Int) {
        guard let bruCiuLayerBlend = flckinkPaintLayer(aerErstPaintDepth),
              let ponllHighlightStroke = bruCiuPaintLayer(bruCiuLayerBlend) else { return }
        let flckinkColorFade = CATransition()
        flckinkColorFade.duration = 0.18
        flckinkColorFade.type = .fade
        flckinkColorFade.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        ponllHighlightStroke.layer.add(flckinkColorFade, forKey: nil)
    }

    private func flckinkPaintLayer(_ ponllPaintDepth: Int) -> UIControl? {
        let aerErstPaintLayer = tabBar.subviews
            .compactMap { $0 as? UIControl }
            .sorted { $0.frame.minX < $1.frame.minX }
        guard aerErstPaintLayer.indices.contains(ponllPaintDepth) else { return nil }
        return aerErstPaintLayer[ponllPaintDepth]
    }

    private func bruCiuPaintLayer(_ ponllPaintLayer: UIView) -> UIImageView? {
        if let aerErstPaintLayer = ponllPaintLayer as? UIImageView {
            return aerErstPaintLayer
        }
        for flckinkPaintLayer in ponllPaintLayer.subviews {
            if let aerErstPaintLayer = bruCiuPaintLayer(flckinkPaintLayer) {
                return aerErstPaintLayer
            }
        }
        return nil
    }

    private func aerErstPaintMotion(_ ponllPaintDepth: Int) {
        guard let bruCiuLayerBlend = flckinkPaintLayer(ponllPaintDepth),
              let flckinkHighlightStroke = bruCiuPaintLayer(bruCiuLayerBlend) else { return }

        flckinkHighlightStroke.layer.masksToBounds = false
        flckinkHighlightStroke.layer.shadowColor = PonllyPalette.pink.cgColor
        flckinkHighlightStroke.layer.shadowOffset = .zero
        flckinkHighlightStroke.layer.shadowRadius = 0
        flckinkHighlightStroke.layer.shadowOpacity = 0

        UIView.animateKeyframes(
            withDuration: 0.28,
            delay: 0,
            options: [.calculationModeCubic, .beginFromCurrentState]
        ) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.24) {
                flckinkHighlightStroke.transform = CGAffineTransform(scaleX: 0.88, y: 0.88)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.24, relativeDuration: 0.42) {
                flckinkHighlightStroke.transform = CGAffineTransform(scaleX: 1.12, y: 1.12)
                flckinkHighlightStroke.layer.shadowRadius = 6
                flckinkHighlightStroke.layer.shadowOpacity = 0.2
            }
            UIView.addKeyframe(withRelativeStartTime: 0.66, relativeDuration: 0.34) {
                flckinkHighlightStroke.transform = .identity
                flckinkHighlightStroke.layer.shadowRadius = 2
                flckinkHighlightStroke.layer.shadowOpacity = 0.04
            }
        } completion: { _ in
            flckinkHighlightStroke.transform = .identity
            flckinkHighlightStroke.layer.shadowOpacity = 0
        }
    }

    private func bruCiuPaintMotion(_ aerErstPaintFlow: UIViewController) {
        aerErstPaintFlow.loadViewIfNeeded()
        guard let flckinkPaintFlow = aerErstPaintFlow.view else { return }
        flckinkPaintFlow.alpha = 0.92
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: [.curveEaseOut, .beginFromCurrentState]
        ) {
            flckinkPaintFlow.alpha = 1
        }
    }
}

extension PoaerErstWeatheredPaperController: UITabBarControllerDelegate {
    func tabBarController(
        _ aerErstPaintFlow: UITabBarController,
        shouldSelect bruCiuPaintFlow: UIViewController
    ) -> Bool {
        guard let flckinkPaintDepth = viewControllers?.firstIndex(where: { $0 === bruCiuPaintFlow }),
              flckinkPaintDepth != selectedIndex else {
            ponllPaintMotion = false
            return true
        }

        ponllPaintMotion = true
        aerErstPaintSignal.prepare()
        ponllColorFade(selectedIndex)
        ponllColorFade(flckinkPaintDepth)
        return true
    }

    func tabBarController(
        _ aerErstPaintFlow: UITabBarController,
        didSelect bruCiuPaintFlow: UIViewController
    ) {
        guard ponllPaintMotion,
              let flckinkPaintDepth = viewControllers?.firstIndex(where: { $0 === bruCiuPaintFlow }) else { return }
        ponllPaintMotion = false
        aerErstPaintSignal.selectionChanged()
        aerErstPaintMotion(flckinkPaintDepth)
        bruCiuPaintMotion(bruCiuPaintFlow)
    }
}
