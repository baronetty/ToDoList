//
//  ToDo.swift
//  ToDoList
//
//  Created by Leo  on 17.03.24.
//

import Foundation

struct ToDo: Identifiable, Codable{
    var id: String?
    var item = ""
    var reminderIsOn = false
    var dueDate = Date.now + (60*60*24)
    var notes = ""
    var isCompleted = false
}
