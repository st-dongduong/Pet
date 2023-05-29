//
//  AppDelegate.swift
//  PetApp
//
//  Created by Dong Duong V. on 26/05/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
    
        let homeNavi =  HomeViewController()
        homeNavi.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "iconHome"), tag: 0 )
        let profile = ProfileViewController()
        profile.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "iconProfile"), tag: 0)
        let community = CommunityViewController()
        community.tabBarItem = UITabBarItem(title: "Community", image: UIImage(named: "iconCommunity"), tag: 0)
        let shop = ShopViewController()
        shop.tabBarItem = UITabBarItem(title: "Shop", image: UIImage(named: "iconShop"), tag: 0)
        let insight = InsightViewController()
        insight.tabBarItem = UITabBarItem(title: "Insights", image: UIImage(named: "iconInsights"), tag: 0)
        
        
        let viewCOntroller = [homeNavi, profile, community, shop, insight]
        let tabbar = UITabBarController()
        tabbar.viewControllers = viewCOntroller
//        let vc = Tab()
        let vc = tabbar
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = vc
        return true
    }
}

