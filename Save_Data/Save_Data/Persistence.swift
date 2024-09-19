//
//  Persistence.swift
//  Save_Data
//
//  Created by user on 19.09.2024.
//

import Foundation
import CoreData

struct PersistenceController{
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name:"TodoList_CoreData")
        
        container.loadPersistentStores{(storeDescription, error) in
                   if let error = error as NSError? {
                    fatalError("Ошибка: \(error)")
                   }
                }
    }
}

    

                      
