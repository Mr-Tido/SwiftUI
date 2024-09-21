//
//  TestApp.swift
//  Test
//
//  Created by user on 20.09.2024.
//

import SwiftUI

@main
struct TestApp: App {
    var user = User()
    var body: some Scene{
        WindowGroup{
            ContentView()
                .environmentObject(user)
        }
    }
}
