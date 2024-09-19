//
//  ContenView.swift
//  Save_Data
//
//  Created by user on 19.09.2024.
//

import SwiftUI
import SwiftData

struct ContenView: View{
    @Query var todoItem:[ToDoItem]
    
    var body:some View{
        NavigationStack{
            List{
                ForEach(todoItem){ todoItem in
                    HStack{
                        Text(todoItem.name)
                        Spacer()
                        if todoItem.isComplete{
                            Image(systemName: "checkmark")
                        }
                    }
                }
            }
            .navigationTitle("To Do List")
        }
    }
}
