import Plagas.*
class Barrios {
	const lista = []
	method agregarElemento(elemento){lista.add(elemento)}
	method esBueno(elemento){ elemento.esBueno()}
	method esCopado(){return lista.count({elem=>elem.esBueno()}) >  lista.count({elem=> not elem.esBueno()})}
	
	
	
}
class Hogar  {
	var property nivelDeMugre
	var property conford 
	method esBueno(){return nivelDeMugre <= conford / 2}
	method efectoDeLaPlaga(plaga){
		nivelDeMugre = plaga.nivelDeDanio()
		plaga.efectoAlAtacar()
	}	
}
class Huerta {
	var property cantPautada = 30
	var property cantDeProduccionPorMes 
	method esBueno(){return cantDeProduccionPorMes > cantPautada}
	method efectoDeLaPlaga(plaga){
		if(plaga.transmiteEnfermedades()){
			cantDeProduccionPorMes = cantDeProduccionPorMes - ((plaga.nivelDeDanio() * 10) / 100) + 10 
		}
		else {cantDeProduccionPorMes = cantDeProduccionPorMes- (plaga.nivelDeDanio() * 10) / 100}
	}
}
class Mascota {
	var property nivelDeSalud 
	method esBueno (){return nivelDeSalud > 250}
	method efectoDeLaPlaga(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelDeSalud = plaga.nivelDeDanio()
		}
		else {}
	}
}