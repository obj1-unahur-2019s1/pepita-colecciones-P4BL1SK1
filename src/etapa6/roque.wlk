import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilos=[]
	method tieneComoPupilo(unAve) {return pupilos.contains(unAve)}
	method agregarPupilo(unAve){pupilos.add(unAve)}
	method dejarPupilo(unAve){pupilos.remove(unAve)} 
	method entrenar(){ 
		pupilos.forEach({pupilo=>
			pupilo.volar(10)
			pupilo.comer(alpiste,30)
			pupilo.volar(5)
			pupilo.haceLoQueQuieras()
		})
	}
	method pupilosCapacesDeVolar(unosKms){
		return pupilos.filter({pupilo=>pupilo.puedeVolar(unosKms)})
	}
	method pupilosFortachones(){
		return pupilos.filter({pupilo=>pupilo.energia()>100})}
}