import armas.*
import elementos.*

object nadie {
    method encontrar(unElemento) {
        return "Nadie puede encontrar un elemento, asigná primero un personaje a Luisa"
    }
}

object luisa{
    var personajeActivo = nadie
    method nuevoPersonajeActivo(unPersonaje){
        personajeActivo = unPersonaje
    }
    method personaje() {
        personajeActivo
    }
  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
    }
}

object floki{
    var arma = jabalina
    method encontrar(elemento) {
        if (arma.estaCargada()){
        elemento.recibirAtaque (arma.potencia())
        arma.usar()
        }
    }
    method cambiarArma(unArma) {arma = unArma}
}

object mario{
    var valorRecolectado = 0
    var ultimoElemento = ningunElemento
    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento
    }
    method estaFeliz(){
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }
}