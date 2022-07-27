//
//  AppDelegate.swift
//  TestQuickActionMenu
//
//  Created by luxiaofei on 2022/7/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var launchedShortcutItem: UIApplicationShortcutItem?
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        let alertVC = UIAlertController.init(title: "9999", message: "8888", preferredStyle: .alert)
//        UIApplication.shared.connectedScenes.map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.first?.rootViewController?.present(alertVC, animated: true, completion: nil)
        
        // If the app is launched by Quick Action, then take the relevant action
//        if let shortcutItem = launchOptions?[UIApplication.LaunchOptionsKey.shortcutItem] as? UIApplicationShortcutItem {
//            launchedShortcutItem = shortcutItem
//            // Since, the app launch is triggered by QuicAction, block "performActionForShortcutItem:completionHandler" method from being called.
//            print(shortcutItem.type)
//
//        }
        
        return true
    }
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        print(shortcutItem.type)
        let alertVC = UIAlertController.init(title: shortcutItem.type, message: shortcutItem.type, preferredStyle: .alert)
        UIApplication.shared.connectedScenes.map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.first?.rootViewController?.present(alertVC, animated: true, completion: nil)
    }

}

