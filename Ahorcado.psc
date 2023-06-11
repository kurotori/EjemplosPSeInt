Algoritmo Ahorcado
	
	Definir palabra Como Caracter;
	palabra = "algoritmo";
	Definir cantLetras Como Entero;
	cantLetras = Longitud(palabra);
	Definir vidas Como Entero;
	vidas = 7;
	Definir letra Como Caracter;
	letra = "";
	Definir letrasAcertadas Como Caracter;
	letrasAcertadas = "";
	Definir letrasErradas Como Caracter;
	letrasErradas = "";
	Definir MostrarPalabra Como Caracter;
	MostrarPalabra = "";
	
	//Escribir Subcadena(palabra,3,3);
	Definir posicion Como Entero;
	posicion=0;
	
	Mientras vidas > 0 Hacer
		Escribir "Vidas: ",vidas;
		
		Para posicion = 0 Hasta cantLetras-1 Con Paso 1 Hacer
			MostrarPalabra = Concatenar(MostrarPalabra,"_ ");
		Fin Para
		Escribir MostrarPalabra;
		Leer letra;
	Fin Mientras
	
	Limpiar Pantalla;
	Escribir "PERDISTE";
	
FinAlgoritmo



//---------~
//         O
//        /l\
//         l
//        / \



