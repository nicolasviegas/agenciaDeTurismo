import localidades.*
import clasePerfil.*

class Usuario {
	const usrName
	var viajes
	var dinero
	var seguidos
	var localidadDeOrigen

	method viajes() {
		return viajes
	}
	
	method dinero() {
		return dinero
	}
	
	method dinero(valor) {
		dinero = valor
	}
	
	
	method localidadDeOrigen() {
		return localidadDeOrigen
	}
	
	method kilometrosDelUsuario() {
		return viajes.sum({viaje => viaje.kilometros()})
	}
	
	method seguir(usuario) {
		seguidos.add(usuario)
		usuario.seguir(self)
	}
	
	method viajar(viaje) {
		if(viaje.precio() <= dinero) {
			dinero -= viaje.precio()
			viajes.add(viaje)
			localidadDeOrigen = viaje.destino()
		}
	}
	
	method seleccionDeTransporte(transportesDisponibles)
}


const pabloHari = new PerfilEstudiantil(
	usrName = "PHari",
	viajes = [],
	dinero = 1500,
	seguidos = [],
	localidadDeOrigen = garlicsSea
)