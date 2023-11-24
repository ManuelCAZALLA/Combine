//Operadores.

import Combine
import UIkit


print("--------------------")
print("Ejercicio1. Operadores de transformacion")
print("--------------------")

let publisher = [1,2,3].publisher
// Operadores
let suscriber = publisher
    .map { data in // Recibo un Int y quiero devolver un String
        "\(data) €"
    }
// Suscriptor
.sink { data in
    print("Recibo \(data)")
}

print("-----------------------------------")
print("OPERADORES DE FILTRADO")
print("-----------------------------------")

    let nums = [1,1,2,2,3,4,5,6,7,8,9].publisher

    // Filtro multiplos de 3
    nums
        .filter { $0.isMultiple(of: 3) }
        .sink {
            print("Múltiplos 3: ($0)")
        }

    // Filtro eliminar duplicados
    nums
        .removeDuplicates()
        .sink {
            print("Borrar duplicados: ($0)")
        }

    // Filtro: Primer Resto a cero
    nums
        .first { $0 % 3 == 0 }
        .sink {
            print("Primer valor: ($0)")
        }
// Filtro: Ultimo Resto a cero
    nums
        .last { $0 % 3 == 0 }
        .sink {
            print("Último valor: ($0)")
        }

print("-----------------------------------")
print("OPERADORES DE SECUENCIA")
print("-----------------------------------")

let publisher4 = [1,2,3,4,5,6,7,8,9].publisher

publisher4
    .min()
    .sink { value in
        print("Mínimo: \(value)")
    }

publisher4
    .max()
    .sink { value in
        print("Máximo: \(value)")
    }

let publisher2 = ["Thor","Spiderman","Ant"].publisher

//cadena menor
publisher2
    .min { $0.count < $1.count }
    .sink { value in
        print("Mínimo caracteres \(value)")
    }

//cadena mayor
publisher2
    .max { $0.count < $1.count }
    .sink { value in
        print("Máximo caracteres \(value)")
    }

//primero
publisher
    .first()
    .sink { value in
        print("Primero \(value)")
    }

//ultimo
publisher
    .last()
    .sink { value in
        print("Último \(value)")
    }

//acceso a un indice concreto
publisher
    .output(at: 2)
    .sink { value in
        print("Índice 2 valor emitido \(value)")
    }

//Acceso por indice en una rango
publisher
    .output(in: 2...4)
    .sink { value in
        print("Índice 2 al 4 valor emitido \(value)")
    }

//Count
publisher
    .count()
    .sink { value in
        print("Total de valores emitidos \(value)")
    }
'
'print("-----------------------------------")
print("OPERADORES DE SECUENCIA")
print("-----------------------------------")

let publisher = [1,2,3,4,5,6,7,8,9].publisher

publisher
    .min()
    .sink { value in
        print("Mínimo: \(value)")
    }

publisher
    .max()
    .sink { value in
        print("Máximo: \(value)")
    }

let publisher2 = ["Thor","Spiderman","Ant"].publisher

//cadena menor
publisher2
    .min { $0.count < $1.count }
    .sink { value in
        print("Mínimo caracteres \(value)")
    }

//cadena mayor
publisher2
    .max { $0.count < $1.count }
    .sink { value in
        print("Máximo caracteres \(value)")
    }

//primero
publisher
    .first()
    .sink { value in
        print("Primero \(value)")
    }

//ultimo
publisher
    .last()
    .sink { value in
        print("Último \(value)")
    }

//acceso a un indice concreto
publisher
    .output(at: 2)
    .sink { value in
        print("Índice 2 valor emitido \(value)")
    }

//Acceso por indice en una rango
publisher
    .output(in: 2...4)
    .sink { value in
        print("Índice 2 al 4 valor emitido \(value)")
    }

//Count
publisher
    .count()
    .sink { value in
        print("Total de valores emitidos \(value)")
    }
