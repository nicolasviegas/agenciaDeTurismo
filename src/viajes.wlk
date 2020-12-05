class Viaje{
	const origen
	const destino
	var medioDeTranporte = null
	
	method kilometros() {
		return destino.distanciaA(origen)
	}
	
	method medioDeTransporte(medio) {
		medioDeTranporte = medio
	}
	
	method medioDeTransporte() {
		return medioDeTranporte
	}
	
	method precio() {
		return medioDeTranporte.valorViaje(self.kilometros()) + destino.precio()
	}
	
	method destino() {
		return destino
	}
}