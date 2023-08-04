
Funcion resultado <- Sumar(numeroA,numeroB)
	Definir resultado Como Real;
	resultado = numeroA + numeroB;
FinFuncion

Funcion resultado <- Restar(numeroA,numeroB)
	resultado = numeroA - numeroB;
FinFuncion

Funcion resultado <- Multiplicar(numeroA,numeroB)
	resultado = numeroA * numeroB;
FinFuncion

Funcion resultado <- Dividir(numeroA,numeroB)
	resultado = numeroA / numeroB;
FinFuncion


Algoritmo Calculadora
	Definir numeroA, numeroB, resultado Como Real;
	Definir opcionU Como Entero;
	
	opcionU = 10;
	
	Mientras opcionU != 0 Hacer
		Escribir "Calculadora";
		Escribir "1 - Realizar operación";
		Escribir "0 - Salir";
		Leer opcionU;
		
		Si opcionU==1 Entonces
			Escribir "Ingrese el primer número";
			Leer numeroA;
			Escribir "Ingrese el segundo número";
			Leer numeroB;
			resultado = sumar(numeroA,numeroB);
			Escribir numeroA,"+",numeroB,"=",resultado;
		SiNo
			Escribir "Opción no válida";
			Esperar 3 segundos;
		FinSi
		Esperar Tecla;
		Limpiar Pantalla;
	FinMientras
	
FinAlgoritmo
