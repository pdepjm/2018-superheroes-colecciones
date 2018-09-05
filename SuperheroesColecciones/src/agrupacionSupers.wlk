object agrupacionDeSupers {
	var superheroes = []

	method cantidadDeSupers() {
		return superheroes.size() 
	}
	method identidadesReveladas(){
		return superheroes.map({heroe => heroe.identidadSecreta()})		
	}
	method agregarHeroe(heroe){
		superheroes.add(heroe)
	}
	method esMediocre(){
		// cuando la mitad de sus heroes no son poderosos
		return superheroes.size() / 2 >= self.losPoderosos().size()
	}
	method losPoderosos() {
		return superheroes.filter({heroe => heroe.esPoderoso()}) 
	}
}
object batman {
	var identidadSecreta = "Buno Diaz"
	method identidadSecreta() {
		return identidadSecreta
	}
	method esPoderoso() {
		return true
	}		
}

object superman {
	var cantSolares = 3000
	var identidadSecreta = "Clark Kent"
	method identidadSecreta() {
		return identidadSecreta
	}
	method esPoderoso() {
		return cantSolares > 10000
	}		
}

object elZorro {
	var habilidades = ["usar la espada", "esquivar"]
	const poderosas = ["jugar ajedrez", "usar la espada", "cursar pdep"]
	var identidadSecreta = "Diego de la Vega"
	method identidadSecreta() {
		return identidadSecreta
	}
	method esPoderoso() {
		return habilidades.any(
			 {hab => poderosas.contains(hab)}
		) 
	}		
}