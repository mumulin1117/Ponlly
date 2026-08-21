import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyMainTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = PonllyPalette.panel
        appearance.shadowColor = PonllyPalette.line
        let unselectedColor = UIColor.white
        [appearance.stackedLayoutAppearance, appearance.inlineLayoutAppearance, appearance.compactInlineLayoutAppearance].forEach { itemAppearance in
            itemAppearance.normal.iconColor = unselectedColor
            itemAppearance.normal.titleTextAttributes = [.foregroundColor: unselectedColor, .font: PonllyFonts.display(size: 9)]
            itemAppearance.selected.iconColor = PonllyPalette.pink
            itemAppearance.selected.titleTextAttributes = [.foregroundColor: PonllyPalette.pink, .font: PonllyFonts.display(size: 9)]
        }
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
        tabBar.isTranslucent = false
        tabBar.tintColor = PonllyPalette.pink
        tabBar.unselectedItemTintColor = unselectedColor
        tabBar.barTintColor = PonllyPalette.background
        tabBar.backgroundColor = PonllyPalette.panel

        let feed = UINavigationController(rootViewController: PonllyBattleHomeViewController())
        feed.tabBarItem = UITabBarItem(title: "FEED", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))

        let video = UINavigationController(rootViewController: PonllyVideoFeedViewController())
        video.tabBarItem = UITabBarItem(title: "VIDEO", image: UIImage(systemName: "play.circle"), selectedImage: UIImage(systemName: "play.circle.fill"))

        let create = UINavigationController(rootViewController: PonllyCreateLauncherViewController())
        let battleIcon = UIImage(named: "pk_battle_btn")?.withRenderingMode(.alwaysOriginal)
        create.tabBarItem = UITabBarItem(title: "", image: battleIcon, selectedImage: battleIcon)
        create.tabBarItem.imageInsets = UIEdgeInsets(top: -12, left: 0, bottom: 12, right: 0)

        let voice = UINavigationController(rootViewController: PonllyVoiceRoomLobbyViewController())
        voice.tabBarItem = UITabBarItem(title: "VOICE", image: UIImage(systemName: "mic"), selectedImage: UIImage(systemName: "mic.fill"))

        let stash = UINavigationController(rootViewController: PonllyCurrentUserProfileViewController())
        stash.tabBarItem = UITabBarItem(title: "STASH", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))

        viewControllers = [feed, video, create, voice, stash]
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.title == "" {
            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
        }
    }
}
