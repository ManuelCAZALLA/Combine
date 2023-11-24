import Combine

/*
 Publicadores tipo Subjects
 */

print("--------------------")
print("Ejercio 1. Subject Valor Actual")
print("--------------------")

let subject = CurrentValueSubject<Int, Never>(0) // Inicializado a cero

subject.value // ver el valor
subject.send(1) // Envio 1 por el publicador
subject.send(2) // Envio 2 por el publicador
subject.value

// Creamos suscriptor

let suscriber = subject.sink {
    print("Ejer 1 Recibo valor: \($0)")
}

// emitir mas valor
subject.send(10)
subject.send(13)

// Finalizar la emision con succes o error
subject.send(completion: .finished)


// Sin valor actual
let publisher2 = PassthroughSubject<Int, Never>()

let suscriber2 = publisher2.sink { data in
    print("Ejer 1 Recibo valor: \(data)")
}

let suscriber3 = publisher2.sink { data in
    print("Ejer 1 Recibo valor: \(data)")
}

publisher2.send(1)
publisher2.send(2)
publisher2.send(3)

