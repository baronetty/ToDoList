//
//  ContentView.swift
//  ToDoList
//
//  Created by Leo  on 12.01.24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    @EnvironmentObject var toDosVM: ToDosViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDosVM.toDos) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo.item)
                    }
                    .font(.title2)
                }
                .onDelete { indexSet in
                    toDosVM.delete(indexSet: indexSet)
                }
                .onMove { fromOffsets, toOffset in
                    toDosVM.move(fromOffsets: fromOffsets, toOffset: toOffset)
                }
            }
            .navigationTitle("ToDoList")
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: ToDo(), newToDo: true) // new value
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
        .environmentObject(ToDosViewModel())
}
