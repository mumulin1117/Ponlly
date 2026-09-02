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
        PonllChromeSignal.aerErstChromeArc.ponllAerosolSignal()

        let aerErstGlossFinish = UINavigationBarAppearance()
        aerErstGlossFinish.configureWithOpaqueBackground()
        aerErstGlossFinish.backgroundColor = PonllyPalette.background
        aerErstGlossFinish.shadowColor = PonllyPalette.line
        aerErstGlossFinish.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: PonllyFonts.muralForgepon(neonLab: 16)
        ]
        UINavigationBar.appearance().standardAppearance = aerErstGlossFinish
        UINavigationBar.appearance().scrollEdgeAppearance = aerErstGlossFinish
        UINavigationBar.appearance().compactAppearance = aerErstGlossFinish
        UINavigationBar.appearance().tintColor = .white


        let bruCiuInkFlash = UIWindow(frame: UIScreen.main.bounds)
        bruCiuInkFlash.rootViewController = PoaerErstWeatheredPaperController()
        bruCiuInkFlash.makeKeyAndVisible()
        self.window = bruCiuInkFlash
        return true
    }


}
