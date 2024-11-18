class Pokemon{
  const movimientos = []
  var vida
  const vidaMaxima
  var property puedeMoverse = true

  method grositud() = vidaMaxima * movimientos.sum({movimiento => movimiento.poder()})
  method usar(movimiento){
    if(movimiento.usos() <= 0){
      throw new DomainException(message="Movimiento no disponible")
    }
    movimiento.decrementarUso()
    movimiento.efecto(self)
  }

  method atacar(pokemon, movimiento){
    if(pokemon.puedeMoverse() && self.tiene(movimiento)){
      self.usar(movimiento)
    }
  }

  method tiene(movimiento) = movimientos.contains(movimiento)

  method curarse(curacion){
    vida = vidaMaxima.min(vida + curacion)
  }
  method perderVida(danio){
    vida = 0.max(vida - danio)
  }
  method estaVivo() = vida > 0
}