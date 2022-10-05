//
//  AppDelegate.swift
//  HotSearch
//
//  Created by 康佳兴 on 2022/10/2.
//

import UIKit
import flutter_boost

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        //创建代理，做初始化操作
        let delegate = BoostDelegate.shared;
        FlutterBoost.instance().setup(application, delegate: delegate) { engine in

        }

        window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateInitialViewController()
        let navc = UINavigationController(rootViewController: controller!)
        delegate.navigationController = navc
        window?.rootViewController = navc
        window?.makeKeyAndVisible()
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            FlutterBoost.instance().sendResultToFlutter(withPageName: "minePage", arguments: ["data": "lalalalallalalalalalala"])
        }
        
        return true
    }
}

