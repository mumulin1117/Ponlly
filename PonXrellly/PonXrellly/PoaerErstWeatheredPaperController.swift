import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PoaerErstWeatheredPaperController: UITabBarController {
    private let ponllWallAura: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.white,
        .font: PonllyFonts.muralForgepon(neonLab: 9)
    ]
    private let bruCiuAerosolEcho: [NSAttributedString.Key: Any] = [
        .foregroundColor: PonllyPalette.pink,
        .font: PonllyFonts.muralForgepon(neonLab: 9)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        flckinkMuralSignal()

        let aerErstPaintQuest = UINavigationController(rootViewController: PbruCiuColorPlanController())
        aerErstPaintQuest.tabBarItem = UITabBarItem(
                title: "FEED",
            image: UIImage(named: "tab_feed_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_feed_selected")?.withRenderingMode(.alwaysOriginal)
        )
      

        let ponllInkCue = UINavigationController(rootViewController: PasteupEchoController())
        ponllInkCue.tabBarItem = UITabBarItem(
                title: "VIDEO",
            image: UIImage(named: "tab_video_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_video_selected")?.withRenderingMode(.alwaysOriginal)
        )

        let bruCiuWallSeed = UINavigationController(rootViewController: ErstWeatheredPaperController())
        let flckinkStencilSpark = UIImage(named: "pk_battle_btn")?.withRenderingMode(.alwaysOriginal)
        bruCiuWallSeed.tabBarItem = UITabBarItem(title: "", image: flckinkStencilSpark, selectedImage: flckinkStencilSpark)
        bruCiuWallSeed.tabBarItem.imageInsets = UIEdgeInsets(top: -12, left: 0, bottom: 12, right: 0)

        let aerErstMarkerMood = UINavigationController(rootViewController: PonllystencilBloomController())
        aerErstMarkerMood.tabBarItem =  UITabBarItem(
                title: "VOICE",
            image: UIImage(named: "tab_voice_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_voice_selected")?.withRenderingMode(.alwaysOriginal)
        )

        let ponllChromePath = UINavigationController(rootViewController: PonllymuralKickntroller())
        ponllChromePath.tabBarItem =  UITabBarItem(
                title: "STASH",
            image: UIImage(named: "tab_stash_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_stash_selected")?.withRenderingMode(.alwaysOriginal)
        )
        viewControllers = [aerErstPaintQuest, ponllInkCue, bruCiuWallSeed, aerErstMarkerMood, ponllChromePath]
      
    }






    private func flckinkMuralSignal() {
        let bruCiuNeonArc = UITabBarAppearance()
        bruCiuNeonArc.configureWithOpaqueBackground()
        bruCiuNeonArc.backgroundColor = PonllyPalette.panel
        bruCiuNeonArc.shadowColor = PonllyPalette.line
        [bruCiuNeonArc.stackedLayoutAppearance, bruCiuNeonArc.inlineLayoutAppearance, bruCiuNeonArc.compactInlineLayoutAppearance].forEach { flckinkTextureBend in
            flckinkTextureBend.normal.iconColor = .white
            flckinkTextureBend.normal.titleTextAttributes = ponllWallAura
            flckinkTextureBend.selected.iconColor = PonllyPalette.pink
            flckinkTextureBend.selected.titleTextAttributes = bruCiuAerosolEcho
            flckinkTextureBend.focused.iconColor = PonllyPalette.pink
            flckinkTextureBend.focused.titleTextAttributes = bruCiuAerosolEcho
            flckinkTextureBend.disabled.iconColor = .white
            flckinkTextureBend.disabled.titleTextAttributes = ponllWallAura
        }
        tabBar.standardAppearance = bruCiuNeonArc
        tabBar.scrollEdgeAppearance = bruCiuNeonArc
        tabBar.isTranslucent = false
        tabBar.tintColor = PonllyPalette.pink
        tabBar.unselectedItemTintColor = .white
        tabBar.backgroundColor = PonllyPalette.panel
    }


   


   
}
