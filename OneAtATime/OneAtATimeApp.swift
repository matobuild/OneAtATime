//
//  OneAtATimeApp.swift
//  OneAtATime
//
//  Created by kittawat phuangsombat on 2021/3/20.
//

import SwiftUI
import Firebase

@main
struct OneAtATimeApp: App {
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
