/*
 * Cliente: Bien 
 */
object ludmila {
	/* Te dejo una forma resumida de escribir este método */
	method precioKilometro() =  18
	
}

object anaMaria {
	var economicamenteEstable = true
	
	method precioKilometro() =  if (economicamenteEstable) { 30} else {25}
	
	method economicamenteEstable() {
		return economicamenteEstable
	}
	
	method cambiarEstabilidad() {
		/*Bien cambiando de true a false y viceversa */
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