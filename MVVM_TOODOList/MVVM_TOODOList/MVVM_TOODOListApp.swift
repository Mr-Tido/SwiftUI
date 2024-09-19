//
//  MVVM_TOODOListApp.swift
//  MVVM_TOODOList
//
//  Created by user on 16.09.2024.
//

import SwiftUI

@main
struct MVVM_TOODOListApp: App {
    @StateObject var todoManager = TODOListManager()
    
    
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager :todoManager)
        }
    }
}
