Algoritmo Ejercicio
	
	//Bloque 1
	Definir varA Como Entero;
	varA = 0;
	Definir dato Como Caracter;
	Definir estado Como Logico;
	estado = Verdadero;
	Definir posicion Como Entero;
	Definir listaB Como Caracter;
	Dimension listaB(20);
	//Fin Bloque 1
	
	//Bloque 2
	
	Para posicion=0 Hasta 19 Con Paso 1 Hacer
		listaB(posicion)="...";
	Fin Para
	//Fin Bloque 2
	
	Mientras varA != 5 Hacer
		//Bloque 3
		Limpiar Pantalla;
		Escribir "Opciones:";
		Escribir "1 - Registrar un dato";
		Escribir "2 - Mostrar un dato";
		Escribir "3 - Borrar un dato";
		Escribir "4 - Mostrar todos los datos registrados";
		Escribir "5 - Salir";
		
		Leer varA;
		//Fin Bloque 3
		Limpiar Pantalla;
		
		Segun varA Hacer
			1:
				//Bloque 4
				Escribir "Dato para registrar:";
				Leer dato;
				posicion = 0;
				estado = Verdadero;
				Mientras estado=Verdadero y posicion<20 Hacer
					Si listaB(posicion)="..."  Entonces
						listaB(posicion)=dato;
						estado = Falso;
						Escribir "Dato registrado en la posición ",(posicion+1);
					SiNo
						posicion = posicion + 1;
					Fin Si
				Fin Mientras
				varA = 0;
				//Fin Bloque 4
			2:
				//Bloque 5
				Escribir "Ingrese la posición del dato que quiere ver (entre 1 y 20)";
				Leer posicion;
				Si posicion<=20 Entonces
					Si listaB(posicion - 1)="..." Entonces
						Escribir "No hay datos registrados en la posición ", posicion;
					SiNo
						Escribir "Dato registrado en la posición ",posicion;
						Escribir listaB(posicion - 1);
					Fin Si
				SiNo
					Escribir "Valor No Válido";
				Fin Si
				varA=0;
				
				
			3:
				
				Escribir "Ingrese la posición del dato que quiere borrar (entre 1 y 20)";
				Leer posicion;
				Si posicion<=20 Entonces
					Si listaB(posicion - 1)="..." Entonces
						Escribir "No hay datos registrados en la posición ", posicion;
					SiNo
						listaB(posicion - 1)="...";
						Escribir "Datos Eliminados";
					Fin Si
				SiNo
					Escribir "Valor No Válido";
				Fin Si
				varA=0;
				//Fin Bloque 5
			4:
				//Bloque 6
				posicion = 0;
				Escribir "Datos Registrados:";
				Para posicion=0 Hasta 19 Con Paso 1 Hacer
					Escribir Sin Saltar (posicion + 1),") ";
					Si listaB(posicion)="..."; Entonces
						Escribir "____________";
					SiNo
						Escribir listaB(posicion);
					Fin Si
				Fin Para
				
				//Fin Bloque 6
			5:
				//Bloque 7
				Escribir "Va a salir del sistema";
				Escribir "¿Desea Continuar?";
				Escribir "1 - SI";
				Escribir "2 - NO";
				Leer varA;
				Segun varA Hacer
					1:
						varA=5;
						Escribir "Hasta la próxima";
					2:
						varA=0;
					De Otro Modo:
						Escribir "Valor No válido";
				Fin Segun
				
			De Otro Modo:
				Escribir "Valor No válido";
		Fin Segun
		Escribir "Presione ENTER para continuar...";
		Esperar Tecla;
	Fin Mientras
	
FinAlgoritmo
