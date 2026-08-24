import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyMainTabController: UITabBarController {
    private let tabNormalTitleAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.white,
        .font: PonllyFonts.display(size: 9)
    ]
    private let tabSelectedTitleAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: PonllyPalette.pink,
        .font: PonllyFonts.display(size: 9)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarAppearance()

        let feed = UINavigationController(rootViewController: PonllyBattleHomeViewController())
        feed.tabBarItem = UITabBarItem(
            title: "FEED",
            image: UIImage(named: "tab_feed_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_feed_selected")?.withRenderingMode(.alwaysOriginal)
        )
      

        let video = UINavigationController(rootViewController: PonllyVideoFeedViewController())
        video.tabBarItem = UITabBarItem(
            title: "FEED",
            image: UIImage(named: "tab_video_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_video_selected")?.withRenderingMode(.alwaysOriginal)
        )

        let create = UINavigationController(rootViewController: PonllyCreateLauncherViewController())
        let battleIcon = UIImage(named: "pk_battle_btn")?.withRenderingMode(.alwaysOriginal)
        create.tabBarItem = UITabBarItem(title: "", image: battleIcon, selectedImage: battleIcon)
        create.tabBarItem.imageInsets = UIEdgeInsets(top: -12, left: 0, bottom: 12, right: 0)

        let voice = UINavigationController(rootViewController: PonllyVoiceRoomLobbyViewController())
        voice.tabBarItem =  UITabBarItem(
            title: "FEED",
            image: UIImage(named: "tab_voice_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_voice_selected")?.withRenderingMode(.alwaysOriginal)
        ) 

        let stash = UINavigationController(rootViewController: PonllyCurrentUserProfileViewController())
        stash.tabBarItem =  UITabBarItem(
            title: "FEED",
            image: UIImage(named: "tab_stash_normal")?.withRenderingMode(.alwaysOriginal),
            selectedImage:UIImage(named: "tab_stash_selected")?.withRenderingMode(.alwaysOriginal)
        )
        viewControllers = [feed, video, create, voice, stash]
      
    }






    private func configureTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = PonllyPalette.panel
        appearance.shadowColor = PonllyPalette.line
        [appearance.stackedLayoutAppearance, appearance.inlineLayoutAppearance, appearance.compactInlineLayoutAppearance].forEach { itemAppearance in
            itemAppearance.normal.iconColor = .white
            itemAppearance.normal.titleTextAttributes = tabNormalTitleAttributes
            itemAppearance.selected.iconColor = PonllyPalette.pink
            itemAppearance.selected.titleTextAttributes = tabSelectedTitleAttributes
            itemAppearance.focused.iconColor = PonllyPalette.pink
            itemAppearance.focused.titleTextAttributes = tabSelectedTitleAttributes
            itemAppearance.disabled.iconColor = .white
            itemAppearance.disabled.titleTextAttributes = tabNormalTitleAttributes
        }
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        tabBar.isTranslucent = false
        tabBar.tintColor = PonllyPalette.pink
        tabBar.unselectedItemTintColor = .white
        tabBar.backgroundColor = PonllyPalette.panel
    }


   


   
}
