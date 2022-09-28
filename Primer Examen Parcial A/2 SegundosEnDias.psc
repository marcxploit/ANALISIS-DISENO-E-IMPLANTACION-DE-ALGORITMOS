//Alumno: Marco Antonio García Bautista
//Número de cuenta: 305027731
//Licenciatura: Informática
//Grupo: 9190

//Escribir un seudocódigo que calcule e imprima el número de segundos que hay en determinado número de días

Proceso SegundosEnDias
	Definir Dia, Hora, Minuto, Segundo, NumeroDias, NumeroSegundos Como Entero;
	Segundo <- 1; //inicializamos Segundo con el valor 1
	Minuto <- 60 * Segundo; //hay 60 segundos en un minuto
	Hora <- 60 * Minuto; //hay 60 minutos en una hora
	Dia <- 24 * Hora; //hay 24 horas en un día
	Escribir "Capture el número de días: ";
	Leer NumeroDias;
	
	//validamos que el usuario capture una cantidad mayor o igual a cero  
	Mientras NumeroDias < 0 Hacer
		Escribir "LA CANTIDAD NO DEBE SER MENOR A CERO";
		Escribir "Capture el número de días: ";
		Leer NumeroDias;
	Fin Mientras
	
	NumeroSegundos <- NumeroDias * Dia; //se realizan las operaciones correspondientes
	Escribir "El número de segundos en ", NumeroDias," días es: ", NumeroSegundos;
FinProceso