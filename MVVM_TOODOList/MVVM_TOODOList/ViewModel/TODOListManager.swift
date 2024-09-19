import Foundation
class TODOListManager: ObservableObject
{
    @Published var items: [item] = [
        item(name: "First"),
        item(name: "second"),
        item(name: "third")
    ]
    
    
    init(){
        
    }
    
    
    func move(indices: IndexSet, newOffset: Int){
        items.move(fromOffsets:indices, toOffset:newOffset)
    }
    
    func addItem(){
        items.append(item(name: "NewItem"))
    }
    
    func delete(at indexSet: IndexSet){
        for index in indexSet{
            items.remove(at: index)
        }
    }
}


