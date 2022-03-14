//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Hamlit Jason on 2022/03/14.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
