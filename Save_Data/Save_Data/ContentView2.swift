//
//  ContentView.swift
//  Save_Data
//
//  Created by user on 19.09.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var todoItems:[ToDoItem]
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Task.data,ascending: false)])
    private var tasks: FetchedResults<Task>
    
    var body: some View {
        NavigationView{
            List{
                ForEach(tasks){ task in
                    Text(task.title ?? "Untitled")
                        .onTapGesture(count:1){
                            
                        }
                }.onDelete(perform: deleteTasks)
            }
            .navigationTitle("Список Дел")
            .navigationBarItems(trailing: Button("Добавить задачу"){
                addTask()
            })
        }
        
    }
    
    
    private func saveContext(){
        do{
            try viewContext.save()
            
        } catch{
            let error = error as NSError
            fatalError("Ошибка: \(error)")
        }
        
    }
    
    
    private func updateTask(_ task: FetchedResults<Task>.Element){
        withAnimation{
            task.title = "Обновления"
            saveContext()
        }
    }
    
    
    private func deleteTasks(offsets:IndexSet){
        withAnimation{offsets.map{tasks[$0]}.forEach(viewContext.delete)
            saveContext()}
    }
    
    private func addTask(){
        withAnimation{
            let newTask = Task(context:viewContext)
            newTask.title = "Новая задача \(Date())"
            newTask.data = Date()
            
            saveContext()
        }
        
    }
}












#Preview {
    ContentView()
}
