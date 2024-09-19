//
//  ContentView.swift
//  ToDoItem
//
//  Created by user on 19.09.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var toboItems: [TodoItem]
    var body: some View {
        NavigationStack{
            List{
                    
            }
        }
    }
}


