//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Leo  on 17.03.24.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init() {
        // Temp Data here. That will eventually load in saved data
        toDos.append(ToDo(item: "Learn Swift."))
        toDos.append(ToDo(item: "Build Apps."))
        toDos.append(ToDo(item: "Change the World."))
    }
    
    func saveToDo(toDo: ToDo, newToDo: Bool) {
        // if new, append to toDoVM.toDos else update the toDo that was passed in from the List
        if newToDo {
            toDos.append(toDo)
        } else {
            if let index = toDos.firstIndex(where: { $0.id == toDo.id }) {
                toDos[index] = toDo
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
