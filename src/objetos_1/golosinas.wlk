object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	// definir
}

object caramelo {
	// definir
}

object chupetin {
	// definir
}

object oblea {
	// definir
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
				gusto = "frutgilla"
			}
		}
	}
	// como manejar el cambio de sabor ??
	
}


