//Alumno: Marco Antonio García Bautista
//Número de cuenta: 305027731
//Licenciatura: Informática
//Grupo: 9190

//Escribir un seudocódigo para realizar pagos en un cajero automático, dónde el usuario elija el tipo de servicio a pagar, realice el pago y entregue cambio, según sea el caso.
//Nota: el usuario puede introducir la cantidad exacta a pagar o mayor.

Proceso PagarServicio
	Definir NIP Como Caracter;
	Definir CatalogoServicios Como Caracter;
	Definir NumeroServicios Como Entero;
	Definir ServicioSeleccionado Como Entero;
	Definir CostoServicio Como Real;
	Definir CantidadDepositada Como Real;
	Definir CambioDevuelto Como Real;
	Definir i Como Entero;
	
	Escribir "*** BIENVENIDO AL CAJERO DE PAGO DE SERVICIOS DE CHANCHITO BANK ***";
	//predefinimos un NIP solo para poder avanzar
	Escribir "Por favor captura tu NIP para continuar (NIP de prueba 1234)"; 
	Leer  NIP;
	
	//validamos que el NIP tenga una longitud de 4 caracteres
	Mientras Longitud(NIP) <> 4 Hacer
		Escribir "¡¡¡TU NIP DEBE SER DE 4 DÍGITOS!!!";
		//predeterminamos un NIP solo para poder avanzar
		Escribir "Por favor captura tu NIP para continuar (NIP de prueba 1234)"; 
		Leer  NIP;
	Fin Mientras
	
	//si el NIP no es igual a 1234 no avanzamos
	Mientras NIP <> "1234" Hacer
		Escribir "¡¡¡NIP INCORRECTO!!!";
		//predeterminamos un NIP solo para poder avanzar
		Escribir "Por favor captura tu NIP para continuar (NIP de prueba 1234)"; 
		Leer  NIP;
	Fin Mientras
	
	//definimos la cantidad de servicios mostrados en pantalla, este número se puede personalizar hasta n siempre que n > 0 
	NumeroServicios <- 5; 
	//asignamos el tamaño del arreglo
	Dimension  CatalogoServicios[NumeroServicios];
	//asignamos los servicios al arreglo basados en el número definido
	Para i<-0 Hasta NumeroServicios - 1 Con Paso 1 Hacer
		CatalogoServicios[i] = Concatenar(ConvertirATexto(i + 1), Concatenar(".- SERVICIO ", ConvertirATexto(i + 1)));
	Fin Para	
	
	Escribir "Captura el número del servicio que deseas pagar:";
	//recorremos el arreglo para mostrar el menú de servicios en pantalla
	Para i<-0 Hasta NumeroServicios - 1 Con Paso 1 Hacer
		Escribir  CatalogoServicios[i];
	Fin Para
	Leer  ServicioSeleccionado;
	
	//validamos que el usuario capture una opción válida
	Mientras ServicioSeleccionado <= 0 O ServicioSeleccionado > NumeroServicios Hacer
		Escribir "¡¡¡OPCIÓN NO VÁLIDA!!!";
		Escribir "Captura el número del servicio que deseas pagar:";
		Para i<-0 Hasta NumeroServicios - 1 Con Paso 1 Hacer
			Escribir  CatalogoServicios[i];
		Fin Para
		Leer ServicioSeleccionado;
	Fin Mientras
	
	//asignamos un costo aleatorio al servicio seleccionado
	CostoServicio <- azar(1000); 
	
	Escribir  "Deposita ", CostoServicio, " pesos para pagar el servicio ", CatalogoServicios[ServicioSeleccionado - 1];
	Leer CantidadDepositada;
	
	//validamos que el usaurio capture una cantidad igual o mayor al costo del servicio seleccionando
	Mientras CantidadDepositada < CostoServicio Hacer
		Escribir "LA CANTIDAD NO DEBE SER MENOR A ", CostoServicio;
		Escribir  "Deposita pesos ", CostoServicio, " para pagar el servicio ", ServicioSeleccionado;
		Leer CantidadDepositada;
	Fin Mientras
	
	//calculamos el cambio a devolver
	CambioDevuelto <- CantidadDepositada - CostoServicio; 
	
	Escribir "La cantidad capturada es de ", CantidadDepositada, " pesos.";
	
	//preguntamos si se desea continuar con la operación
	Escribir  "¿Deseas continuar? S/N"; 
	Definir respuesta Como Caracter;
	Leer respuesta;
	
	Mientras Mayusculas(respuesta) <> "S" Y Mayusculas(respuesta) <> "N" Hacer
		Escribir "¡¡¡OPCIÓN NO VÁLIDA!!!"; 
		//preguntamos si se desea continuar con la operación
		Escribir  "¿Deseas continuar? S/N"; 
		Leer respuesta;
	Fin Mientras
	
	//si el usuario acepta continuar mostramos la información del pago
	Si Mayusculas(respuesta) = "S" Entonces 
		Escribir "Has despositado la cantidad de ", CantidadDepositada, " pesos, tu cambio es de ", CambioDevuelto, " pesos";
		Escribir "¡¡¡GRACIAS POR TU PAGO, VUELVE PRONTO!!!";
	SiNo
		//si el usuario decide no continuar 
		Escribir "¡¡¡OPERACIÓN CANCELADA!!!"; 
	Fin Si
	
FinProceso
