//
//  AppDelegate.swift
//  KaufDa
//
//  Copyright © 2020 Bonial International GmbH. All rights reserved.
//

import Apptimize

extension NSObject {
    // 💥 the @objc annotation here is causing the crash
    @objc public class var name: String { String(describing: self.self) }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_: UIApplication, willFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        
        Apptimize.waitForTests(toBecomeAvailable: 5000)
        ApptimizeVariable.makeString(name: "ios_cashback_configurable_cta", defaultString: "")?.stringValue
        
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        
        return true
    }
}
