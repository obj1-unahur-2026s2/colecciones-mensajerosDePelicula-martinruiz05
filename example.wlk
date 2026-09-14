object paquete{
  var estaPago = true
  method estaPago(){
    return estaPago
  }

  method pagar(){
    estaPago = true
  }

  method noPagar(){
    estaPago = false
  }

  

}
object roberto{
  var vehiculo = bicicleta 
  method cambiarVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
  }
  method peso(){
    return vehiculo.peso() + 90
  }
 
  method llamada(){
    return false
  }



  }


object chuck{
  method peso(){
    return 80
  }
  method llamada(){
    return true
  }

}

object neo{
  var credito = 50
  method recargarCredito(cantidad){
    credito = credito + cantidad
  }
  method peso(){
    return 0
  }
  method llamada(){
    return self.credito() > 10
  }

  method credito(){
    return credito
  }

}

object bicicleta {
  method peso(){
    return 5
  }

}

object camion{
  var acoplados = 1
  method peso(){
    return 500 + acoplados * 500
  }
  method cambiarAcoplados(nuevoAcoplado){
    acoplados = nuevoAcoplado
  }

}

object puenteDeBrooklyn{
  method puedePasar(persona,paquete){
    return persona.peso() < 1000 && paquete.estaPago()
  }
}

object matrix{
  method puedePasar(persona,paquete){
    return persona.llamada() && paquete.estaPago()
  }
}

object empresaDeMensajeria{
 const mensajeros = [neo, chuck, roberto]
 method contratarMensajero(mensajero){
  mensajeros.add(mensajero)
 }
 method despedir(mensajero){
  mensajeros.remove(mensajero)
 }
 method despidoMasivo(){
  mensajeros.clear()
 }
 method esGrande(){
  return mensajeros.size() > 2
 }
 method puedeSerEntregadoPorPrimero(lugar, paquete){
  return lugar.puedePasar(mensajeros.first(), paquete)
 }
 method pesoDelUltimoMensajero(){
  return mensajeros.last().peso()
 }
 method mensajeros(){
  return mensajeros
 }

}

object paquetito{
  method estaPago(){
    return true
  }


}

