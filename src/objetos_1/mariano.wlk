import golosinas.*

object mariano {
	var misGolosinas = {}
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(unaGolosina) { misGolosinas.add(unaGolosina) }
	method desechar(unaGolosina) { misGolosinas.remove(unaGolosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return {}
	}
	
	method probarGolosinas() { misGolosinas.forEach {golosina => golosina.mordisco()} }

	method hayGolosinasSinTacc(){
		misGolosinas.filter()
	}
}

