import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoaerErstWeatheredPaperController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        flckinkMuralSignal()

        let aerErstPaintQuest = UINavigationController(rootViewController: PbruCiuColorPlanController())
        aerErstPaintQuest.tabBarItem = UITabBarItem(
                title: "FvEwExDy".ponllPaintaerErstHours,
            image: UIImage(named: "wallTexture")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "brickTone")?.withRenderingMode(.alwaysOriginal)
        )
      

        let ponllInkCue = UINavigationController(rootViewController: PasteupEchoController())
        ponllInkCue.tabBarItem = UITabBarItem(
                title: "VzIADBECOD".ponllPaintaerErstHours,
            image: UIImage(named: "paintRun")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "dripTrail")?.withRenderingMode(.alwaysOriginal)
        )

        let bruCiuWallSeed = UINavigationController(rootViewController: ErstWeatheredPaperController())
        let flckinkStencilSpark = UIImage(named: "wheatpasteLayer")?.withRenderingMode(.alwaysOriginal)
        bruCiuWallSeed.tabBarItem = UITabBarItem(title: "", image: flckinkStencilSpark, selectedImage: flckinkStencilSpark)
        bruCiuWallSeed.tabBarItem.imageInsets = UIEdgeInsets(top: -12, left: 0, bottom: 12, right: 0)

        let aerErstMarkerMood = UINavigationController(rootViewController: PonllystencilBloomController())
        aerErstMarkerMood.tabBarItem =  UITabBarItem(
                title: "VEOFIGCHEI".ponllPaintaerErstHours,
            image: UIImage(named: "inkBleed")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "markerNib")?.withRenderingMode(.alwaysOriginal)
        )

        let ponllChromePath = UINavigationController(rootViewController: PonllymuralKickntroller())
        ponllChromePath.tabBarItem =  UITabBarItem(
                title: "SJTKALSMHN".ponllPaintaerErstHours,
            image: UIImage(named: "gritSurface")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "urbanPatina")?.withRenderingMode(.alwaysOriginal)
        )
        viewControllers = [aerErstPaintQuest, ponllInkCue, bruCiuWallSeed, aerErstMarkerMood, ponllChromePath]

      
    }


    private func flckinkMuralSignal() {
        let bruCiuNeonArc = UITabBarAppearance()

        bruCiuNeonArc.backgroundColor = PonllyPalette.panel
       

        tabBar.tintColor = PonllyPalette.pink
        tabBar.unselectedItemTintColor = .white

        tabBar.standardAppearance = bruCiuNeonArc
        tabBar.scrollEdgeAppearance = bruCiuNeonArc
       
    }

   
}
