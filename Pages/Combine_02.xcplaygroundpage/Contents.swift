//: [Previous](@previous)

import Foundation

// Almacenar Supcriptor

// Almacenamos suscriptor en un let

import Combine

// Publicadores

// Ejemplo 1. Array enteros

print("--------------------")
print("Guardar Supcriptor")
print("--------------------")


/*let suscriptor: AnyCancellable? // Esto se puede poner en controller

suscriptor = publisher.sink { data in // y esto en viewModel
               print("Recibo \(data)")}
    
*/
let publisher1 = [1,2,3,4,5].publisher

let suscriptor1 = publisher1.sink { data in
    // Aqui llega al supcriptor
    print("llega el dato \(data)")
}
//suscriptor1.cancel()
 

print("--------------------")
print("Guardar en Store")
print("--------------------")

var suscriptor2 = Set<AnyCancellable>()

publisher1.sink { data in
    // Aqui llega al supcriptor
    print("llega el dato \(data)")
}
.store(in: &suscriptor2)

print("--------------------")
print("¿Como lo hacemos en un viewModel?")
print("--------------------")

class viewModel {
    var valor: String = "" {
        didSet {
            print("Ejercicio 3 \(valor)")
        }
    }
    //Defino un publicador
    var publisher = ["hola", "Manuel"].publisher
    // set de suscriptores
    var suscribers = Set<AnyCancellable>()
    
    init() {
        publisher.sink { data in
            self.valor = data
        }
        .store(in: &suscribers) // & es referencia a memoria
    }
    
}
// isntacio la clase
let vm = viewModel()
