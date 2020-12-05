import localidades.*
import usuarios.*
import transportes.*
import viajes.*

object barrileteCosmico {
	const destinos = #{goodAirs, lastToninas, silversSea, garlicsSea}
	const transportesDisponibles = [avion,tren,micro,barco]
	
	method transportesDisponibles() {
		return transportesDisponibles
	}
	
	method aplicarDescuentos(descuento) {
		destinos.forEach({destino => 
			destino.aplicarDescuento(descuento)
		})
	}
	
	method esEmpresaExtrema() {
		return destinos.any({destino => destino.requiereVacuna() })
	}
	
	method cartaDeDestinos() {
		return destinos.map({destino => destino.nombre()}).asSet()
	}
	
	method destinos() {
		return destinos
	}
	
	method armarUnViaje(usuario, destino) {
		return new Viaje(
			origen = usuario.localidadDeOrigen(),
			destino = destino,
			medioDeTranporte = usuario.seleccionDeTransporte(transportesDisponibles)
		)
	}
}