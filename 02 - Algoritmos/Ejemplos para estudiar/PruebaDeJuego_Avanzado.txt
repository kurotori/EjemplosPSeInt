Funcion dibujarTablero(limiteX,limiteY,posX,posY)
	Definir contX, contY Como Entero;
	Para contY=-1 Hasta limiteY+1 Con Paso 1 Hacer
		Escribir Sin Saltar "*";
		Para contX=0 Hasta limiteX Con Paso 1 Hacer
			
			
			Si contY=posY y contX=posX Entonces
				Escribir Sin Saltar "@";
			SiNo
				Si contY<0 o contY>limiteY Entonces
					Escribir Sin Saltar "*";
				SiNo
					Escribir Sin Saltar " ";
				Fin Si
			Fin Si
		Fin Para
		Escribir "*";
	Fin Para
FinFuncion

Funcion pos<-ChequearPos(posActual, limite)
	Definir pos Como Entero;
	Si posActual < 0 Entonces
		pos = 0;
	SiNo
		Si posActual > limite
			pos = limite;
		SiNo
			pos = posActual;
		FinSi
	Fin Si
FinFuncion

Funcion nuevaPosY<-MoverArriba(posYActual, limiteY)
	Definir nuevaPosY Como Entero;
	nuevaPosY = ChequearPos(posYActual - 1, limiteY);
FinFuncion

Funcion nuevaPosY<-MoverAbajo(posYActual, limiteY)
	Definir nuevaPosY Como Entero;
	nuevaPosY = ChequearPos( posYActual + 1, limiteY);
FinFuncion

Funcion nuevaPosX<-MoverDerecha(posXActual, limiteX)
	Definir nuevaPosX Como Entero;
	nuevaPosX = ChequearPos( posXActual + 1, limiteX);
FinFuncion

Funcion nuevaPosX<-MoverIzquierda(posXActual,limiteX)
	Definir nuevaPosX Como Entero;
	nuevaPosX = ChequearPos( posXActual - 1, limiteX);
FinFuncion


//Juego

Algoritmo PruebaDeJuego
	Limpiar Pantalla;
	
	Definir posX, posY, limiteX, limiteY Como Entero;
	posX=0;
	posY=0;
	limiteX=60;
	limiteY=13;
	
	
	Definir opcionU Como Caracter;
	opcionU="";
	
	Mientras opcionU<>"salir" Hacer
		
		dibujarTablero(limiteX, limiteY,posX,posY);
		Escribir posX,",",posY;
		Leer opcionU;
		opcionU=Minusculas(opcionU);
		
		Segun opcionU Hacer
			"s":
				posY=MoverAbajo(posY,limiteY);
			"w":
				posY=MoverArriba(posY,limiteY);
	
			"a":
				posX=MoverIzquierda(posX,limiteX);
			"d":
				posX=MoverDerecha(posX,limiteX);
			De Otro Modo:
				posX=posX;
				posY=posY;
		Fin Segun
		
		
		Limpiar Pantalla;
	Fin Mientras
	
	
FinAlgoritmo
