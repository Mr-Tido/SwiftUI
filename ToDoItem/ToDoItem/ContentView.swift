//
//  ContentView.swift
//  ToDoItem
//
//  Created by user on 19.09.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var todoItems: [TodoItem]
    var body: some View {
        NavigationStack{
            List{
                ForEach(todoItems){todoItem in
                    HStack{
                        Text(todoItem.name)
                        Spacer()
                        if todoItem.isComplete{
                            Image(systemName: "checkmark")
                        }       }
                }
                .onDelete(perform: {indexSet in
                    for index in indexSet{
                        let itemToDelete = todoItems[index]
                        modelContext.delete(itemToDelete)
                    }
                })
                .navigationTitle("To Do List")
                .toolbar{
                    Button("", systemImage: "plus"){
                        modelContext.insert(generateRandomToDoItem())
                    }
                }
            }
        }
    }
    
}
