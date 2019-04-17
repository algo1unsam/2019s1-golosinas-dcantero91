object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.2 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso = peso - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	// definir
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.1.max(2) }
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

object oblea {
	// definir
	var peso = 250
	
	method precio() { return 5  }
	method peso() { return peso }
	method mordisco() { 
		if (peso>70) {
		 peso = peso * 0.5}
	else {
		peso = peso * 0.25
	}
	}
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio (){
		return pesoInicial * 0.5
	}
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
	method mordisco() { pesoActual = pesoActual - 1 }
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	var precioBanio = 2
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { 
		return golosinaInterior.precio() + precioBanio
	}
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { golosinaInterior.libreGluten()}	
}

object tuttifrutti {
	var libreGluten=false
	var property gusto="frutilla"
	
	method libreDeGluten() = libreGluten
	method setLibreGluten(esLibreGluten){
		libreGluten=esLibreGluten
	}
	method precio (){
		if (libreGluten){
			return 7
		}
		else {
			return 10
		}
	}
	method mordisco (){
		if (gusto=="frutilla"){
			gusto="chocolate"
		}
		else {
			if (gusto=="chocolate"){
				gusto = "naranja"
			}
			else {
				gusto = "frutilla"
			}
		}
	}
	// como manejar el cambio de sabor ??
	
}


