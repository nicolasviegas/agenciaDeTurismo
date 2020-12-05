class Transporte {
	var velocidad
	
	method valorDelKilometro() 
	
	method velocidad() {
		return velocidad	
	}
	
	method valorViaje(distancia){
		return self.valorDelKilometro() * distancia
	}
}

class Avion inherits Transporte {
	const impulsoDeTurbinas
	const cantTurbinas
	
	override method valorDelKilometro() {
		return impulsoDeTurbinas * cantTurbinas
	}
}

class Micro inherits Transporte {
	
	override method valorDelKilometro() {
		return 5000
	}
}

class Tren inherits Transporte {
	
	override method valorDelKilometro() {
		return 1429.1533
	}
}

class Barco inherits Transporte {
	const probabilidadDeChocar
	
	override method valorDelKilometro() {
		return 1000 * probabilidadDeChocar
	}
}

const avion = new Avion(
	velocidad=500,
	impulsoDeTurbinas=200,
	cantTurbinas=2
)
const micro = new Micro(
	velocidad=120
)
const tren = new Tren(
	velocidad=250
)
const barco = new Barco(
	velocidad=300,
	probabilidadDeChocar=20
)