/*
 KVO. Observador de propiedad
 */
import Foundation

// Ejemplo de observador de propiedad sencillo
var name = ""{
    willSet{
      print("nuevo valor futuro-> \(newValue)")
    }
    didSet {
        print("nuevo valor asignado -> \(name)")
    }
}

name = "Manuel"

// KVO EN OBJ-V

@objc class Person: NSObject {
    @objc dynamic var name = "Juan"
}

let juan = Person()

// Creamos el observador
juan.observe(\Person.name, options: .new){person, change in
    print("Ahora cambia el nombre a ... \(person.name)")
}

juan.name = "Juan"
juan.name = "Manuel"
