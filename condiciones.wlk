class Condicion{
    method permiteMoverA(pokemon)
    method azarBool() = 0.randomUpTo(2).roundUp().even()
}

object suenio inherits Condicion{

    method poder() = 50
    override method permiteMoverA(pokemon) = self.azarBool()
} 

object paralisis inherits Condicion{

    method poder() = 30
    
    override method permiteMoverA(pokemon) = false
}

object confusion{
    const duracion = 5
    var contador = 0
    method incrementarTurno() { contador += 1 }
    method permiteMoverA(pokemon) = contador == duracion
}