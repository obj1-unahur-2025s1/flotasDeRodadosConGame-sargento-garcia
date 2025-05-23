class Corsa {
    var property color 

    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
}

class Kwid {
    var property tieneTanqueAdicional

    method capacidad() = if(tieneTanqueAdicional) 3 else  4
    method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110 
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0
    method color() = "azul"
}

object trafic {
    var property interior = comodo
    var property motor = pulenta

    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidad() 
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = "blanco"
}
//interiores
object comodo {
    method capacidad() = 5
    method peso() = 700
}
object popular {
    method capacidad() = 12
    method peso() = 1000
}
//motores
object pulenta {
    method peso() = 800
    method velocidad() = 130 
}
object bataton {
    method peso() = 500
    method velocidad() = 80
}

//autos especiales
class Especial {
    var property capacidad  
    var property velocidadMaxima  
    var property color
    const property peso
      
}

