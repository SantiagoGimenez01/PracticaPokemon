import condiciones.*

class Movimiento{
    var property usos

    method poder()
    method efecto(pokemon)
    method decrementarUso(){ usos -= 1 }
}

class Curativo inherits Movimiento{
    const curacion

    override method poder() = curacion
    override method efecto(pokemon){
        pokemon.curarse(curacion)
    }
}

class Danino inherits Movimiento{
    const danio

    override method poder() = danio * 2
    override method efecto(pokemon){
        pokemon.perderVida(danio)
    }
}

class Especial inherits Movimiento{
  var condicion = suenio

  override method poder() = condicion.poder()
  method cambiarCondicion(otra){
    condicion = otra
  }
  override method efecto(pokemon){
        condicion.efecto(pokemon)   
  } 
}