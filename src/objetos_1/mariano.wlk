import golosinas.*

object mariano {
	var misGolosinas = #{}
	var deseadas = #{}
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(unaGolosina) { misGolosinas.add(unaGolosina) }
	method desechar(unaGolosina) { misGolosinas.remove(unaGolosina) }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return {}
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		return misGolosinas.filter({golosina => golosina == golosinasDeseadas})
	}
	method probarGolosinas() { misGolosinas.forEach {golosina => golosina.mordisco()} }

	method hayGolosinasSinTacc(){
		misGolosinas.any({golosina => golosina.libreDeGluten()})
	}
	method golosinaSinSabor (unSabor) { misGolosinas.find({golosina => golosina.gusto() == unSabor})}
	method golosinasSinSabor (unSabor) { misGolosinas.filter({golosina => golosina.gusto() == unSabor})}
	method sabores () { misGolosinas.map({golosina => golosina.gusto()}.asSet())}
	method golosinaMasCara(){ misGolosinas.max({golosina => golosina.precio()})}
	method pesoGolosinas (){ misGolosinas.sum({golosina => golosina.peso()})}
}


