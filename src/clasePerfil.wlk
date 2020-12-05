import usuarios.*
import transportes.*
import agenciaDeTurismo.*

class PerfilEmpresarial inherits Usuario {
    override method seleccionDeTransporte(trasnportesDisponibles) {
        return trasnportesDisponibles.max({transporte => transporte.velocidad()})
    }
}

class PerfilEstudiantil inherits Usuario {
    override method seleccionDeTransporte(trasnportesDisponibles) {
        const losQuePuedePAgar = trasnportesDisponibles.filter({transporte => transporte.valorDelKilometro() <= dinero})
        return losQuePuedePAgar.max({transporte => transporte.velocidad()})
    }
}

class PerfilGrupoFamiliar inherits Usuario {
    override method seleccionDeTransporte(trasnportesDisponibles) {
        return trasnportesDisponibles.anyOne()
    }
}