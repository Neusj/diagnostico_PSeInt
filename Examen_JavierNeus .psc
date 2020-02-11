

//1-.secuencial
SubProceso secuencia()
	Definir a,b,c,prom,res como real;
	
	Escribir "Ingrese 3 numeros...";
	leer a,b,c;	
	//cálculo de promedio
	prom<- (a+b+c) / 3;	
	
	Limpiar Pantalla;
	//se muestra el promedio
	escribir "El promedio es: ", prom;	
	Escribir "";
FinSubProceso



//2-.con. si entonces
SubProceso genero(op)	
	si op = 1 entonces
		Escribir "Dirijase al baño de MUJERES...";
		
	SiNo
		Escribir "Dirijase al baño de HOMBRES...";
	FinSi
FinSubProceso



//3-.si anidados
SubProceso cobrar ( op )	
	si op = 1 entonces		
		Definir sex como entero;
		Escribir "Elija una opcion...";
		Escribir "";
		escribir "1-. Mujer";
		Escribir "2-. Hombre";		
		leer sex;
		Limpiar Pantalla;		
		
		si sex = 1 entonces
			Escribir "Dirijase al baño de MUJERES...";			
		SiNo
			Escribir "Dirijase al baño de HOMBRES...";
		FinSi		
		Escribir "Debe pagar $250...";
		
	SiNo
		
		Definir sex como entero;
		Escribir "Elija una opcion...";
		Escribir "";
		escribir "1-. Mujer";
		Escribir "2-. Hombre";		
		leer sex;
		Limpiar Pantalla;		
		
		si sex = 1 entonces
			Escribir "Dirijase al baño de MUJERES...";
			
		SiNo
			Escribir "Dirijase al baño de HOMBRES...";
		FinSi
		Escribir "Debe pagar $2,500.....";
	FinSi	
FinSubProceso



//4-.cond. según
SubProceso res <- enPalabras ( num )	
	Limpiar Pantalla;
	
	Segun num Hacer
		1:
			Escribir "UNO";
		2:	
			Escribir "DOS";
		3:	
			Escribir "TRES";
		4:	
			Escribir "CUATRO";
		5:	
			Escribir "CINCO";
		6:	
			Escribir "SEIS";
		7:	
			Escribir "SIETE";
		8:	
			Escribir "OCHO";
		9:	
			Escribir "NUEVE";
		10:	
			Escribir "DIEZ";
			
		De Otro Modo:
			Escribir "NUMERO FUERA DE RANGO";
	FinSegun
	
FinSubProceso


//5-. Rep. Mientras
SubProceso res <- buscaCero (n)
	Definir a,grupo,aux,i como entero;
	
	Dimension grupo[n];
	
	a<-1;
	aux<-0;
	
	Para i<-0 hasta n hacer
		Escribir "dame un numero:";
		leer a;
		
		Mientras a!=0 O aux == n Hacer
			grupo[aux]<-a;
			
		FinMientras
		aux <- aux +1;	
		
	FinPara
	
	
	
FinSubProceso



//Repetir
SubProceso  juan ()
	definir a como caracter;
	definir cont como entero;
	Definir aux como logico;
	
	aux<- falso;	
	cont<-0;
	
	Repetir
		Escribir "Escribe un nombre por la J";
		Leer a;		
		cont<- cont+1;
	Hasta Que Mayusculas(a) == "JUAN"		
	
	aux<- verdadero;
	Limpiar Pantalla;
	
	si aux == verdadero Entonces
		Escribir "Ganaste!!!!";				
	FinSi
	Escribir "";
	
	si cont == 1 entonces
		escribir "Lo lograste a la primera!!! EXCELENTE";	
	SiNo	
		Escribir "Lo lograste luego de " , cont -1 , " intentos.";
	FinSi
FinSubProceso



//principal
Proceso examen
	Escribir "Elija una opcion:";
	Escribir "";
	Escribir "1-. Secuencial";
	Escribir "2-. Cond. SI entonces";
	Escribir "3-. Cond. SI entonces anidado";
	Escribir "4-. Cond. según";
	Escribir "5-. Repetir mientras";
	Escribir "6-. Repetir repetir";
	Escribir "7-. Repetir para";
	Escribir "8-. Arreglo simple";
	Escribir "9-. Arreglo Bidimensional";
	Escribir "10-.Salir";
	Escribir "";
	
	Escribir "solo completado 1, 2 ,3,4 y 6";
	
	
	Definir op Como Entero;
	leer op;
	
	Segun op hacer
		1:
			limpiar pantalla;
			secuencia();
			
		2:
			Definir sex como entero;
			Limpiar Pantalla;
			Escribir "Elija una opcion...";
			Escribir "";
			escribir "1-. Mujer";
			Escribir "2-. Hombre";
			
			leer sex;
			Limpiar Pantalla;
			
			genero(sex);
			Escribir "";
			
		3:	
			Definir cobro como entero;
			Limpiar Pantalla;
			Escribir "Elija una opcion...";
			Escribir "";
			escribir "1-. Baño";
			Escribir "2-. Ducha";
			
			leer cobro;
			Limpiar Pantalla;
			cobrar(cobro);
			Escribir "";
			
		4:
			Limpiar Pantalla;

			Definir num como entero;
			Escribir "Ingrese un número del 1 al 10: ";
			leer num;
			
			escribir enPalabras(num);
			
		5:
			Limpiar Pantalla;
			
			Definir n como entero;
			Escribir "Ingrese la cantidad de números a calcular: ";
			leer n;
		
			
			escribir buscaCero(n);
			
		6:
			
			juan();
			
		7:	
			definir nom como caracter;
			Definir i,j,k,cont como entero;
			
			dimension nom[10];
			cont<-0;
			
			Para i<-0 hasta 10-1 hacer
				escribir "dame un nombre";
				leer nom[i];
			FinPara
			
			
			Para j<-0 hasta 10-1 Hacer
				
				para k<-1 hasta 8 Hacer					
					si nom[j] = nom[k] entonces
						
					FinSi	
				FinPara
				
				
			FinPara
			
				
			
	FinSegun
	
	
	
	
FinProceso
