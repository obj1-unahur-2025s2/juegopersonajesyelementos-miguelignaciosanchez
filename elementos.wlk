object castillo{
  var defensa = 150
  method altura() {return 20}
  method nivelDeDefensa() {return defensa}
  method recibirAtaque(potencia) {
    defensa = (defensa - potencia).max(0)
  }
  method valorOtorgado(){
    return defensa * 0.2
  }
  method recibirTrabajo() {
    defensa = (defensa + 20).min(200)
  }
}

object aurora{
  var estaViva = true
  method altura() {return 1}
  method recibirAtaque(potencia) {
    if(potencia >= 10) {estaViva = false}
  }
  method estaViva() {return estaViva}
  method recibirTrabajo() {}
  method valorOtorgado() {return 15}
}

object tipa{
  var altura = 8
  method altura() {return altura}
  method crecer() {altura = altura + 1}
  method recibirAtaque(potencia) {}
  method valorOtorgado() {return altura * 2}
  method recibirTrabajo() {altura = altura + 1}
}

object ningunElemento{
    method altura() {return 0}
    method recibirAtaque(potencia) {}
}