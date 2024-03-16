import UIKit

/*
 var item = "Learn Swift"
 var dueDate = Date.now
 var completed = false
 
 // How to keep track of multiple toDos?
 struct ToDo { // name struct UpperCase - they are Types!
 var item: String
 var dueDate: Date
 var isCompleted: Bool
 
 func printToDo() {
 print("item: \(item), due: \(dueDate), completed: \(isCompleted)")
 }
 }
 
 var aToDoItem = ToDo(item: "Learn Structs", dueDate: Date.now, isCompleted: false)
 
 // An array of ToDos
 var toDos: [ToDo] = []
 
 toDos.append(aToDoItem)
 toDos.append(ToDo(item: "Learn Swift", dueDate: Date.now, isCompleted: false))
 toDos.append(ToDo(item: "Build Apps", dueDate: Date.now + 60*60*24, isCompleted: false))
 toDos.append(ToDo(item: "Take a vacation", dueDate: Date.now+60*60*60*24, isCompleted: false))
 
 //print(toDos) // Totally ugly
 
 // How do I access elements of an array of structs?
 // Dot notation after the index!
 
 //for index in 0...toDos.count - 1 {
 //    print("item: \(toDos[index].item), isCompleted: \(toDos[index].isCompleted)")
 //}
 
 // Or iterating through an array
 for toDo in toDos {
 print("item: \(toDo.item), due: \(toDo.dueDate), completed: \(toDo.isCompleted)")
 }
 
 toDos[1].isCompleted = true
 print("\nAfter Adding")
 
 for toDo in toDos {
 print("item: \(toDo.item), due: \(toDo.dueDate), completed: \(toDo.isCompleted)")
 }
 
 // We can even add a method to structs & call this with dot notation
 print("\nFrom Method")
 for toDo in toDos {
 toDo.printToDo()
 }
 */

// Initialization
//struct ToDo {
//    var item: String
//    var dueDate: Date
//    var isCompleted: Bool
//}

// struct properties are initialized when declared
//struct ToDo {
//    var item = ""
//    var dueDate = Date.now
//    var isCompleted = false
//
//    func printToDo() {
//        print("item: \(item), date: \(dueDate), completed: \(isCompleted)")
//    }
//}
//
//var toDo = ToDo()
//print(toDo.item, toDo.dueDate, toDo.isCompleted)


// classes - just change the keyword struct to class
/*
 class ToDo {
 var item = ""
 var dueDate = Date.now
 var isCompleted = false
 
 func printToDo() {
 print("item: \(item), date: \(dueDate), completed: \(isCompleted)")
 }
 }
 
 // things differ if we try to create a new variable
 var toDo = ToDo()
 toDo.item = "Learn Swift"
 toDo.dueDate = Date.now
 toDo.isCompleted = false
 
 toDo.printToDo()
 */

// If you want to add elements when you create (initialize or instantiate) an object, we need to create a special initializer
//class ToDo {
//    var item: String
//    var dueDate = Date.now
//    var isCompleted = false
//
//    init(item: String) {
//        self.item = item
//    }
//
//    func printToDo() {
//        print("item: \(item), date: \(dueDate), completed: \(isCompleted)")
//    }
//}
//
//var newToDo = ToDo(item: "Learn classes")
//newToDo.printToDo()

/*
 // classes with with uninitilized properties need an initilizer
 class ToDo {
 var item: String
 var dueDate: Date
 var isCompleted: Bool
 
 init(item: String, dueDate: Date, isCompleted: Bool) {
 self.item = item
 self.dueDate = dueDate
 self.isCompleted = isCompleted
 }
 
 convenience init(item: String) {
 self.init(item: item, dueDate: Date.now, isCompleted: false)
 }
 
 func printToDo() {
 print("item: \(item), date: \(dueDate), completed: \(isCompleted)")
 }
 }
 
 var newToDo = ToDo(item: "Learn Classes", dueDate: Date.now + 60*60, isCompleted: true)
 var anotherToDo = ToDo(item: "New ToDo", dueDate: Date.now, isCompleted: false)
 var toDos: [ToDo] = []
 toDos.append(newToDo)
 toDos += [anotherToDo]
 toDos.append(ToDo(item: "Third item - Date & completed"))
 
 print("\nArray of ToDos")
 for toDo in toDos {
 toDo.printToDo()
 }
 */

/*
 //  STRUCTS ARE VALUE TYPES
 struct Person {
 var first: String
 var last: String
 }
 var person1 = Person(first: "Biggie", last: "Smalls")
 var person2 = person1
 print("Person1: \(person1.first) \(person1.last)")
 print("Person2: \(person2.first) \(person2.last)")
 
 person1.first = "Chris"
 person1.last = "Wallace"
 print("Person1: \(person1.first) \(person1.last)")
 print("Person2: \(person2.first) \(person2.last)")
 */

// CLASSES ARE REFERENCE TYPES
//class Person {
//    var first: String
//    var last: String
//
//    init(first: String, last: String) {
//        self.first = first
//        self.last = last
//    }
//}
//var person1 = Person(first: "Biggie", last: "Smalls")
//var person2 = person1
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")
//
//person1.first = "Chris"
//person1.last = "Wallace"
//print("Person1: \(person1.first) \(person1.last)")
//print("Person2: \(person2.first) \(person2.last)")
//print(person1 === person2)


// INHERITANCE
class Horse {
    let legs = 4
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("Braaaaaay")
    }
}

class Unicorn: Horse { // inherits all of the horse stuff
    let horn = 1
    
    override func makeSound() {
        super.makeSound()
        print("Twinkle, Twinkle")
    }
}

class Alicorn: Unicorn {
    let wings = 2
    
    override func makeSound() {
        print("Flutter, Flutter")
    }
}

let appleJack = Horse(name: "Apple Jack")
let rarity = Unicorn(name: "Rarity")
let twilightSparkle = Alicorn(name: "Twilight Sparkle")
appleJack.makeSound()
rarity.makeSound()
twilightSparkle.makeSound()
