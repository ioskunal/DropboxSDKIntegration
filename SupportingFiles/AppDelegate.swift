//
//  AppDelegate.swift
//  DropboxSDKIntegration
//
//  Created by Kunal Gupta on 26/01/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    //MARK:- VARIABLES

    var window: UIWindow?
    let isDevEnvironment = true
    lazy var chooser: DBChooser = {
        // update the Keys in the Info.plist as well
        let dropboxKey = isDevEnvironment ? "DEV_KEY" : "PROD_KEY"
        return DBChooser(appKey: dropboxKey)
    }() // isDevEnvironment is just for example, this will be dependent upon you app config. For example AppEnvionment.current() == .dev
    
    //MARK:- APPLICATION LIFE CYCLE

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if chooser.handleOpen(url) {
            if let files = url.queryParameters?["files"]?.toJSON() as? [JSON] {
                let dictDeepLink = files[0]
                ViewController().uploadFileToServer(dictDeepLink)
            }
            return true
        }
        return false
    }

}

