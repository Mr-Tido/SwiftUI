//
//  Save_DataApp.swift
//  Save_Data
//
//  Created by user on 19.09.2024.
//

import SwiftUI

@main
struct Save_DataApp: App {
    let persistenceContainer = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}


