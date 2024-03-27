//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Leo  on 12.01.24.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
}
