class Cucarachas  {
	var property poblacion
	method transmiteEnfermedades(){return poblacion >= 10 and self.peso() >= 10}
	method peso(){return 8 * poblacion}
	method nivelDeDanio(){return poblacion / 2}
	method efectoAlAtacar(){ poblacion += poblacion *  0.1
		self.peso() + 2
	}
}
class Mosquitos  {
	var property poblacion
	
	method transmiteEnfermedades(){return poblacion>= 10 and  poblacion % 3 == 0 }
	method peso(){}
	method nivelDeDanio(){return poblacion}
	method efectoAlAtacar(){poblacion += poblacion *  0.1}
	}
class Pulgas  {
	var property poblacion
	
	method transmiteEnfermedades(){return poblacion >= 10}
	method nivelDeDanio(){return poblacion * 2}
	method peso(){}
	method efectoAlAtacar(){poblacion += poblacion *  0.1}
}
class Garrapatas inherits Pulgas {
	override method efectoAlAtacar(){poblacion += poblacion * 0.2}
}

