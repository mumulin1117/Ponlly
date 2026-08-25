//
//  AppDelegate.swift
//  PonXrellly
//
//  Created by PonXrellly on 2026/8/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let aerErstGlossFinish = UINavigationBarAppearance()
        aerErstGlossFinish.configureWithOpaqueBackground()
        aerErstGlossFinish.backgroundColor = PonllyPalette.background
        aerErstGlossFinish.shadowColor = PonllyPalette.line
        aerErstGlossFinish.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: PonllyFonts.muralForgepon(neonLab: 20)
        ]
        UINavigationBar.appearance().standardAppearance = aerErstGlossFinish
        UINavigationBar.appearance().scrollEdgeAppearance = aerErstGlossFinish
        UINavigationBar.appearance().compactAppearance = aerErstGlossFinish
        UINavigationBar.appearance().tintColor = .white
        UITabBarItem.appearance().setTitleTextAttributes(
            [.foregroundColor: UIColor.white, .font: PonllyFonts.muralForgepon(neonLab: 9)],
            for: .normal
        )
        UITabBarItem.appearance().setTitleTextAttributes(
            [.foregroundColor: PonllyPalette.pink, .font: PonllyFonts.muralForgepon(neonLab: 9)],
            for: .selected
        )

        let bruCiuInkFlash = UIWindow(frame: UIScreen.main.bounds)
        bruCiuInkFlash.rootViewController = PoaerErstWeatheredPaperController()
        bruCiuInkFlash.makeKeyAndVisible()
        self.window = bruCiuInkFlash
        return true
    }


}
