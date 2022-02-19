//
//  AppDelegate.swift
//  StarbucksApp
//
//  Created by 신동희 on 2022/02/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        isUserLikeProduct.keys.forEach({
            isUserLikeProduct[$0] = UserDefaults.standard.bool(forKey: $0)
        })
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    
    // MARK: - 좋아요 여부 유저디폴트에 저장
    func applicationWillTerminate(_ application: UIApplication) {
        for (key, value) in isUserLikeProduct {
            UserDefaults.standard.set(value, forKey: key)
        }
    }
}

