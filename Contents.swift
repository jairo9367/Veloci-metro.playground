//: Playground - noun: a place where people can play

import UIKit


    enum Velocidades: Int {
        case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
        init (velocidadInicial: Velocidades) {
            self = velocidadInicial
        }
        
      }


 class Auto  {
    var velocidad : Velocidades
    init () {
        self.velocidad = Velocidades.Apagado
        }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        let indicadorNumérico : Int = velocidad.rawValue
        let indicadorVelocidad : String = "\(velocidad)"
        
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            }

        return (indicadorNumérico, indicadorVelocidad)
            
        }
}

let Auto2 = Auto ()

for i in 1...20 {
    
	   let Automovil = Auto2.cambioDeVelocidad()
    
	   print("\(Automovil.actual),\(Automovil.velocidadEnCadena)")
}



