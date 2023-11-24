//: [Previous](@previous)

import Combine

// Publicadores

// Ejemplo 1. Array enteros

print("--------------------")
print("Array enteros Sink")
print("--------------------")


let publisher1 = [1,2,3,4,5].publisher

publisher1.sink { data in
    // Aqui llega al supcriptor
    print("llega el dato \(data)")
}

print("--------------------")
print("Array enteros Sink y Completion")
print("--------------------")

publisher1.sink { completion in
    switch completion {
    case .failure(let error):
        print(error)
    case .finished:
        print("ejecutado succes")
    }
} receiveValue: { data in
    print("Ejercicio 2 llega el dato \(data)")
}



