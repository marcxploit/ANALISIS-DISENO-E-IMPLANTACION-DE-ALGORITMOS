//Alumno: Marco Antonio Garc�a Bautista
//N�mero de cuenta: 305027731
//Licenciatura: Inform�tica
//Grupo: 9190

//Escribir un seudoc�digo que calcule e imprima el n�mero de segundos que hay en determinado n�mero de d�as

Proceso SegundosEnDias
	Definir Dia, Hora, Minuto, Segundo, NumeroDias, NumeroSegundos Como Entero;
	Segundo <- 1; //inicializamos Segundo con el valor 1
	Minuto <- 60 * Segundo; //hay 60 segundos en un minuto
	Hora <- 60 * Minuto; //hay 60 minutos en una hora
	Dia <- 24 * Hora; //hay 24 horas en un d�a
	Escribir "Capture el n�mero de d�as: ";
	Leer NumeroDias;
	
	//validamos que el usuario capture una cantidad mayor o igual a cero  
	Mientras NumeroDias < 0 Hacer
		Escribir "LA CANTIDAD NO DEBE SER MENOR A CERO";
		Escribir "Capture el n�mero de d�as: ";
		Leer NumeroDias;
	Fin Mientras
	
	NumeroSegundos <- NumeroDias * Dia; //se realizan las operaciones correspondientes
	Escribir "El n�mero de segundos en ", NumeroDias," d�as es: ", NumeroSegundos;
FinProceso