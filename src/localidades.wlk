class Localidad {
	var equipajeImprescindible
	var precio
	const nombre
	const kilometro
	
	method nombre() {
		return nombre
	}
	
	method precio() {
		return precio
	}
	
	method equipajeImprescindible() {
		return equipajeImprescindible
	}
	
	method kilometro() {
		return kilometro
	}
	
	method aplicarDescuento(porcentaje) {
		precio -= precio*porcentaje/100
		self.agregarEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarEquipajeImprescindible(elemento) {
		equipajeImprescindible.add(elemento)
	}
	
	method requiere(algo) {
		return equipajeImprescindible.any({elemento => elemento.contains(algo)})
	}
	
	method requiereVacuna() {
		return self.requiere("Vacuna")
	}
	
	method distanciaA(localidad) {		
		return (kilometro - localidad.kilometro()).abs()
	}
	
	method esDestinoImportante() {
		return precio > 2000
	}
	
	method esPeligrosa()
}

class Playa inherits Localidad {
	override method esPeligrosa() {
		return false
	}
}

class Montania inherits Localidad {
	const altura
	
	override method esPeligrosa() {
		return altura > 5000 || !self.requiereVacuna()
	}
	
	override method esDestinoImportante() {
		return true
	}
}

class CiudadHistorica inherits Localidad {
	var cantDeMuseos
	
	override method esPeligrosa() {
		return !self.requiere("Asistencia al viajero")
	}
	
	override method esDestinoImportante() {
		return super() && cantDeMuseos >= 3
	}
}

const garlicsSea = new Playa(
    equipajeImprescindible = ["Caña de Pescar", "Piloto"],
    precio = 2500,
    nombre = "Garlic's Sea",
    kilometro = 100 
)

const silversSea = new Playa(
    equipajeImprescindible = ["Protector Solar","Equipo de Buceo"],
    precio = 1350,
    nombre = "Silver's Sea",
    kilometro = 101
)

const lastToninas = new CiudadHistorica(
	cantDeMuseos = 3,
    equipajeImprescindible = ["Vacuna Gripal", "Vacuna B", "Necronomicon"],
    precio = 3500,
    nombre = "Last Toninas",
    kilometro = 102
)

const goodAirs = new Montania(
	altura = 2500,
    equipajeImprescindible = ["Cerveza", "Protector Solar"],
    precio = 1500,
    nombre = "Good Airs",
    kilometro = 103
)