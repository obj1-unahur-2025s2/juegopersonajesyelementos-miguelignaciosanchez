object ballesta{
    var flechas = 10
    method estaCargada() {return flechas > 0}
    method potencia() {return 4}
    method usar() {flechas = flechas - 1}
  }

object jabalina{
    var estaCargada = true
    method estaCargada() {return estaCargada}
    method potencia() {return 30}
    method usar() {estaCargada = false}
}