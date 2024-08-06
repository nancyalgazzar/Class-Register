//
//  AppDelegate.swift
//  classRegister
//
//  Created by 1234 on 27/07/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
                
                let RegisterationVC = RegisterationVC(nibName: "RegisterationVC", bundle: nil)
                window?.rootViewController = RegisterationVC
                window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

   


}

