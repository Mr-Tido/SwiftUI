//
//  ContentView.swift
//  MVVM_TOODOList
//
//  Created by user on 16.09.2024.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var todoManager: TODOListManager
    
    var body: some View {
        NavigationView{
            List{
                ForEach(todoManager.items){item in
                    NavigationLink(
                        destination: Text("Destination \(item.name)")){
                        
                        Text(item.name)
                    }
                }//End ForEach
                //удаление элемента
                .onDelete(perform: { indexSet in
                    todoManager.delete(at: indexSet)
                })
                //перемещение элементов
                .onMove(perform: { indices, newOffset in
                    todoManager.move(indices: indices, newOffset: newOffset)
                })
            }//End List
            .navigationBarTitle(Text("TODO"), displayMode: .large)
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    //кнопка Edit - переводит в режим редактирования
                    EditButton()
                    //кнопка + - добавляет элемент в список
                    Button(action: {
                        todoManager.addItem()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            })
        }//End navigationView
    }
}

