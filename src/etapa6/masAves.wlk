
object pepon {
	var energia = 0
	
	method energia(){return energia}
	method comer(cosa, cuanto) { 
		energia += (cosa.energiaPorGramo() / 2) * cuanto
	}  
	method volar(kms) {
		energia -= 1 + (kms / 2)	
	}
	method haceLoQueQuieras() { 
		self.volar(1)
	}
	method pudeVolar(unosKms){
		return energia>= 1 + unosKms * 0.5}
}

object pipa {
	var acumuladoKmsRecorridos = 0
	var acumuladoGramosIngeridos = 0
	method comer(cosa, gramos) {
		acumuladoGramosIngeridos += gramos
	}
	
	method volar(kms) {
		acumuladoKmsRecorridos += kms
	}
	method haceLoQueQuieras() { }
	method acumuladoKmsRecorridos() { return acumuladoKmsRecorridos }
	method acumuladoGramosIngeridos() { return acumuladoGramosIngeridos}
	method puedeVolar(){return true}
	method energia(){return 0}
}
