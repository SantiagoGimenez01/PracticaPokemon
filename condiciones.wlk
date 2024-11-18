object suenio{

    method poder() = 50
    method efecto(pokemon){
        pokemon.puedemoverse(self.azarBool())
    }
    method azarBool() = 0.randomUpTo(2).roundUp().even()
} 

object paralisis{

    method poder() = 30
    method azarBool() = 0.randomUpTo(2).roundUp().even()
}