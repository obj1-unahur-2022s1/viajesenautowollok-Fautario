object ludmila {
	
	method precioKilometro() {
		return 18
	}
}

object anaMaria {
	var economicamenteEstable = true
	
	method precioKilometro() {
		if (economicamenteEstable) {
			return 30
		} else {
			return 25
		}
	}
	
	method economicamenteEstable() {
		return economicamenteEstable
	}
	
	method cambiarEstabilidad() {
		economicamenteEstable = not economicamenteEstable
	}
}

object teresa {
	var precioKilometro = 22
	
	method precioKilometro() {
		return precioKilometro
	}
	
	method cambiarPrecio(nuevoPrecio) {
		precioKilometro = nuevoPrecio
	}
}

object melina {
	var cliente
	
	method precioKilometro() {
		return cliente.precioKilometro() - 3
	}
	
	method nuevoCliente(nuevoCliente) {
		cliente = nuevoCliente
	}
}