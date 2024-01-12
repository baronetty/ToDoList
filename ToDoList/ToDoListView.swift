//
//  ContentView.swift
//  ToDoList
//
//  Created by Leo  on 12.01.24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var toDos = ["Learn Swift",
                                "Buils Apps",
                                "Change the world",
                                "Bring the Awesome",
                                "Take a vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                }
            }
            .navigationTitle("ToDoList")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}
