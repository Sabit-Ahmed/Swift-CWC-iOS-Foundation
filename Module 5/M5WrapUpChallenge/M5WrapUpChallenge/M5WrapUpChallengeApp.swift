//
//  M5WrapUpChallengeApp.swift
//  M5WrapUpChallenge
//
//  Created by Sabit Ahmed on 8/10/21.
//

import SwiftUI

@main
struct M5WrapUpChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListContentModel())
        }
    }
}
