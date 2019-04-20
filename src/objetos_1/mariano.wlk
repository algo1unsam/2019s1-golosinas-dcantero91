import golosinas.*

object mariano {
	var misGolosinas = #{}
	var golosinasDeseadas = #{}
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method agregarGolosinaDeseada(golosina){
		golosinasDeseadas.add(golosina)
	}
	method golosinasDeseadas(){return golosinasDeseadas}
	method comprar(unaGolosina) { misGolosinas.add(unaGolosina) }
	method desechar(unaGolosina) { misGolosinas.remove(unaGolosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return {}
	}
	method misGolosinas() { return misGolosinas}
	
	method golosinasFaltantes(){
		return golosinasDeseadas.difference(misGolosinas)
	}
	method probarGolosinas() { misGolosinas.forEach {golosina => golosina.mordisco()} }

	method hayGolosinasSinTacc(){
		return misGolosinas.any({golosina => golosina.libreGluten()})
	}
	method preciosCuidados(){
		return misGolosinas.all({golosina => golosina.precio()<=10})
	}
	method golosinaSinSabor (unSabor) { return misGolosinas.find({golosina => golosina.gusto() == unSabor})}
	method golosinasSinSabor (unSabor) { return misGolosinas.filter({golosina => golosina.gusto() == unSabor})}
	method sabores () { return misGolosinas.map({golosina => golosina.gusto().asSet()})}
	method gustosFaltantes(){return misGolosinas.sabores().difference(golosinasDeseadas.saboresFaltantes())}
	method saboresFaltantes(){return golosinasDeseadas.map({golosina => golosina.gusto()}.asSet())}
	method golosinaMasCara(){return misGolosinas.max({golosina => golosina.precio()})}
	method pesoGolosinas (){return misGolosinas.sum({golosina => golosina.peso()})}
}


