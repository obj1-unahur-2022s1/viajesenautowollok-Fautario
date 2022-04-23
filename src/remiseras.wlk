import clientes.*

object roxana {
	
	method precioViaje(cliente, km) {
		return cliente.precioKilometro() * km
	}
}

object gabriela {
	
	method precioViaje(cliente, km) {
		return (cliente.precioKilometro() * km) * 1.2
	}
}

object mariela {
	
	method superaElMinimo(cliente, km) {
		return cliente.precioKilometro() * km > 50
	}
	
	method precioViaje(cliente, km) {
		if (self.superaElMinimo(cliente, km)) {
			return cliente.precioKilometro() * km
		} else {
			return 50
		}
	}
}

object juana {
	
	method precioViaje(cliente, km) {
		if (km <= 8) {
			return 100
		} else {
			return 200
		}
	}
}

object lucia {
	var reemplazo
	
	
	method precioViaje(cliente, km) {
		return reemplazo.precioViaje(cliente, km)
	}
	
	method reemplazar(remisera) {
		reemplazo = remisera
	}
}