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
        loadData()
    }
    
    func toggleCompleted(toDo: ToDo) {
        guard toDo.id != nil else {return}
        var newToDo = toDo
        newToDo.isCompleted.toggle()
        
        if let index = toDos.firstIndex(where: { $0.id == newToDo.id }) {
            toDos[index] = newToDo
        }
        saveData()
    }
    
    func saveToDo(toDo: ToDo) {
        // if new, append to toDoVM.toDos else update the toDo that was passed in from the List
        if toDo.id == nil {
            var newToDo = toDo
            newToDo.id = UUID().uuidString
            toDos.append(newToDo)
        } else {
            if let index = toDos.firstIndex(where: { $0.id == toDo.id }) {
                toDos[index] = toDo
            }
        }
        saveData()
    }
    
    func deleteToDo(indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
        saveData()
    }
    
    func moveToDo(fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
        saveData()
    }
    
    func loadData() {
        let path = URL.documentsDirectory.appending(component: "toDos")
        guard let data = try? Data(contentsOf: path) else {return}
        do {
            toDos = try JSONDecoder().decode(Array<ToDo>.self, from: data)
        } catch {
            print("ERROR: Could not find data \(error.localizedDescription)")
        }
    }
    
    func saveData() {
        let path = URL.documentsDirectory.appending(component: "toDos")
        let data = try? JSONEncoder().encode(toDos)
        do {
            try data?.write(to: path)
        } catch {
            print("🤬 ERROR: Could not save data \(error.localizedDescription)")
        }
    }
}
