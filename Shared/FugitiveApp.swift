//
//  FugitiveApp.swift
//  Shared
//
//  Created by Kaden Storrs on 4/15/21.
//

import SwiftUI
import Firebase


@main
struct FugitiveApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
