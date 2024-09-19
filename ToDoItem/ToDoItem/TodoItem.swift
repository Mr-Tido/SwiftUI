//
//  TodoItem.swift
//  ToDoItem
//
//  Created by user on 19.09.2024.
//

import Foundation
import SwiftData

@Model class TodoItem: Identifiable{
    var id: UUID
    var name: String
    var isComplete:Bool
    
    init(id:UUID = UUID(),name:String = "", isComplete:Bool = false){
        self.id = id
        self.name = name
        self.isComplete = isComplete
    }
}

func generateRandomToDoItem() -> TodoItem{
    let task = ["Buy groceries","Finish homework","Go for a run","Practice Yoga", "Read a book", "Write a blog post", "Clean the house","Walk the dog","Attend a meeting"]
    
    let randomIndex = Int.random(in: 0..<task.count)
    let randomTask = task[randomIndex]
    
    return TodoItem(name:randomTask,isComplete: Bool.random())
}
