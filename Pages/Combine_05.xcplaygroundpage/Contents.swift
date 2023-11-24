import Foundation
import Combine

/* Notification Center
 */

// para que funcione Notification Center en playGroung
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// Nuestra propia notificacion
extension Notification.Name {
    static let myNotification =
            Notification.Name("Keepcoding-clase-combine")
}
// Creamos una propiedad de mensaje, donde almacenamos los mensajes que llegan
var mensaje: String = "" {
    didSet {
        print("Nuevo valor: \(mensaje)")
    }
}
// Me creo un publicador
let publisher = NotificationCenter.default.publisher(for: .myNotification)
    .map {
        $0.object as? String // convierto a cadena el tipo object
    }
    .replaceNil(with: "No llega nada")
    .replaceError(with: "Hay error")
    .replaceEmpty(with: "Viene vacio")

var subscriber: AnyCancellable?

subscriber = publisher.sink( receiveValue: {
    mensaje = $0
})

// Emito por notification center

let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
    // lo que quieres hacer cada 3 segundos
    
    NotificationCenter.default.post(name: .myNotification, object: "Mensaje \(Int.random(in: 1...50))")
}

