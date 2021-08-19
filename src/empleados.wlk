object galvan {

	var dinero = 0
	var deuda = 0
	var sueldo = 15000

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}
	
	method cobrarSueldo(){
		dinero += self.sueldo()
		if(dinero < deuda){
			deuda -= dinero
			dinero = 0
		}
		else{
			dinero -= deuda
			deuda = 0
		}
	}
	
	method gastar(gasto){
		dinero -= gasto
		if(dinero < 0){
			deuda += dinero.abs()
			dinero = 0
		}
	}
	
	method totalDeuda(){
		return deuda
	}
	
	method totalDinero(){
		return dinero
	}
}

object baigorria {
	var dinero = 0
	var cantidadEmpanadasVendidas = 0
	const montoPorEmpanada = 15

	method venderEmpanadas(cuantas) {
		cantidadEmpanadasVendidas += cuantas
	}

	method cantEmpanadas() {
		return cantidadEmpanadasVendidas
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method cobrarSueldo(){
		dinero += self.sueldo()
	}	
}

object gimenez {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

