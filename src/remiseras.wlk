/*
 * Remiseras: Bien, podias usar el max()
 */

import clientes.*

object roxana {
	
	method precioViaje(cliente, km) {
		return cliente.precioKilometro() * km
	}
}

object gabriela {
	/* Te dejo la forma resumida  */
	method precioViaje(cliente, km) =cliente.precioKilometro() * km * 1.2

}

object mariela {
	
	method precioViaje(cliente, km) {
		/* Esto era más fácil si usabas el max() */
		return 50.max(cliente.precioKilometro() * km)
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