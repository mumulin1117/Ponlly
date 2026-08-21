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
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = PonllyPalette.background
        navigationAppearance.shadowColor = PonllyPalette.line
        navigationAppearance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: PonllyFonts.display(size: 20)
        ]
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().tintColor = .white

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = PonllyMainTabController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }


}
