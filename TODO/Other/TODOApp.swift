//
//  TODOApp.swift
//  TODO
//
//  Created by Nohelia Da Silva on 1/23/24.
//
import FirebaseCore
import SwiftUI

@main
struct TODOApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
