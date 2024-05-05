object registroProduccion {
	//registrarse la cantidad de piezas producidas por la máquina en cada día
    const registroDePieza=[]
   method agregarAlRegistro(conPieza){ registroDePieza.add(conPieza) }
   method quitarRegistro(cantPiezas){ registroDePieza.remove(cantPiezas)}
   
   method algunDiaSeProdujo(cantidad){return registroDePieza.contains(cantidad)}
   
   method maximoValorDeProduccion(){return registroDePieza.max()}
   
   method valoresDeProduccionPares(){return registroDePieza.filter({x => x.even()}) }   //.even() es solo a un num
   
   method produccionEsAcotada(n1,n2){return registroDePieza.all({x=>x.between(n1,n2)})	}  // .all si todos los obj de la lista cumplen con la condicion
   
   method produccionesSuperioresA(cuanto){return registroDePieza.filter({x=> x > cuanto})} // filtra

	method produccionesSumando(n){return registroDePieza.map({x=> x+ n})}
	
	method totalProducido(){return registroDePieza.sum()}
	
	method ultimoValorDeProduccion(){return registroDePieza.last()}
	method primerValorDeProduccion() {return registroDePieza.firs()}
	
	method cantidadProduccionesMayorALaPrimera(){
		registroDePieza.count({x=> self.primerValorDeProduccion()<x })
	}


}
