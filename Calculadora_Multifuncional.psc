Algoritmo Calculadora_Multifuncional
    // ================================
    // CALCULADORA MULTIFUNCIONAL EN PSEINT
    // Incluye:
    // - Operaciones básicas
    // - Cálculo de áreas geométricas
    // - Estadística (media, mediana, moda)
    // - Sucesión de Fibonacci
    // ================================
	
    // Declaración de variables principales
    Definir opcion, subopcion, i, j, n, cont Como Entero
    Definir a, b, base, altura, lado, radio, b1, b2, suma, media, mediana, moda, maxFrec, temp Como Real
    Dimension lista[100] // Arreglo para almacenar hasta 100 números ingresados por el usuario
	
    Repetir
        // Menú principal
        Escribir ""
        Escribir "========= CALCULADORA MULTIFUNCIONAL ========="
        Escribir "1) Operaciones básicas"
        Escribir "2) Áreas geométricas"
        Escribir "3) Estadística (media, mediana, moda)"
        Escribir "4) Sucesión de Fibonacci"
        Escribir "5) Salir"
        Escribir "Seleccione una opción:"
        Leer opcion
		
        // Dependiendo de la opción elegida, se ejecuta un bloque diferente
        Segun opcion Hacer
			
				// ----------------------------------------
				// OPCIÓN 1: OPERACIONES BÁSICAS
				// ----------------------------------------
            1:
                Escribir "Ingrese el primer número:"
                Leer a
                Escribir "Ingrese el segundo número:"
                Leer b
                Escribir "Seleccione operación:"
                Escribir "1) Sumar"
                Escribir "2) Restar"
                Escribir "3) Multiplicar"
                Escribir "4) Dividir"
                Leer subopcion
				
                // Se elige la operación a realizar
                Segun subopcion Hacer
                    1:
                        Escribir "Resultado: ", a + b
                    2:
                        Escribir "Resultado: ", a - b
                    3:
                        Escribir "Resultado: ", a * b
                    4:
                        // Validación para evitar división por cero
                        Si b = 0 Entonces
                            Escribir "Error: no se puede dividir entre cero."
                        Sino
                            Escribir "Resultado: ", a / b
                        FinSi
                    De Otro Modo:
                        Escribir "Opción inválida."
                FinSegun
				
				// ----------------------------------------
				// OPCIÓN 2: ÁREAS GEOMÉTRICAS
				// ----------------------------------------
            2:
                Escribir "Seleccione figura:"
                Escribir "1) Círculo"
                Escribir "2) Cuadrado"
                Escribir "3) Triángulo"
                Escribir "4) Trapecio"
                Leer subopcion
				
                // Cálculo según figura elegida
                Segun subopcion Hacer
                    1:
                        // Círculo: área = PI * radio^2
                        Escribir "Ingrese radio:"
                        Leer radio
                        Si radio >= 0 Entonces
                            Escribir "Área del círculo: ", PI * radio * radio
                            Escribir "Diámetro: ", 2 * radio
                        Sino
                            Escribir "Error: radio negativo."
                        FinSi
                    2:
                        // Cuadrado: área = lado^2
                        Escribir "Ingrese lado:"
                        Leer lado
                        Si lado >= 0 Entonces
                            Escribir "Área del cuadrado: ", lado * lado
                        Sino
                            Escribir "Error: lado negativo."
                        FinSi
                    3:
                        // Triángulo: área = (base * altura) / 2
                        Escribir "Ingrese base:"
                        Leer base
                        Escribir "Ingrese altura:"
                        Leer altura
                        Si base >= 0 Y altura >= 0 Entonces
                            Escribir "Área del triángulo: ", (base * altura) / 2
                        Sino
                            Escribir "Error: valores negativos."
                        FinSi
                    4:
                        // Trapecio: área = ((B + b) / 2) * altura
                        Escribir "Ingrese base mayor:"
                        Leer b1
                        Escribir "Ingrese base menor:"
                        Leer b2
                        Escribir "Ingrese altura:"
                        Leer altura
                        Si b1 >= 0 Y b2 >= 0 Y altura >= 0 Entonces
                            Escribir "Área del trapecio: ", ((b1 + b2) / 2) * altura
                        Sino
                            Escribir "Error: valores negativos."
                        FinSi
                    De Otro Modo:
                        Escribir "Opción inválida."
                FinSegun
				
				// ----------------------------------------
				// OPCIÓN 3: ESTADÍSTICA BÁSICA
				// Calcula media, mediana y moda
				// ----------------------------------------
            3:
                Escribir "¿Cuántos números desea ingresar?"
                Leer n
				
                Si n > 0 Entonces
                    // Se leen los n números del usuario
                    Para i <- 1 Hasta n Hacer
                        Escribir "Número ", i, ":"
                        Leer lista[i]
                    FinPara
					
                    // Calcular media (promedio)
                    suma <- 0
                    Para i <- 1 Hasta n Hacer
                        suma <- suma + lista[i]
                    FinPara
                    media <- suma / n
					
                    // Ordenar lista para calcular mediana
                    Para i <- 1 Hasta n - 1 Hacer
                        Para j <- 1 Hasta n - i Hacer
                            Si lista[j] > lista[j + 1] Entonces
                                temp <- lista[j]
                                lista[j] <- lista[j + 1]
                                lista[j + 1] <- temp
                            FinSi
                        FinPara
                    FinPara
					
                    // Calcular mediana
                    Si n MOD 2 = 0 Entonces
                        mediana <- (lista[n / 2] + lista[(n / 2) + 1]) / 2
                    Sino
                        mediana <- lista[(n + 1) / 2]
                    FinSi
					
                    // Calcular moda (valor que más se repite)
                    maxFrec <- 0
                    Para i <- 1 Hasta n Hacer
                        cont <- 0
                        Para j <- 1 Hasta n Hacer
                            Si lista[i] = lista[j] Entonces
                                cont <- cont + 1
                            FinSi
                        FinPara
                        Si cont > maxFrec Entonces
                            maxFrec <- cont
                            moda <- lista[i]
                        FinSi
                    FinPara
					
                    // Mostrar resultados
                    Escribir "Media: ", media
                    Escribir "Mediana: ", mediana
                    Si maxFrec = 1 Entonces
                        Escribir "No hay moda (todos diferentes)."
                    Sino
                        Escribir "Moda: ", moda
                    FinSi
                Sino
                    Escribir "Debe ingresar al menos un número."
                FinSi
				
				// ----------------------------------------
				// OPCIÓN 4: SUCESIÓN DE FIBONACCI
				// ----------------------------------------
            4:
                Definir a1, a2, a3, num, contF Como Entero
                Escribir "Ingrese el número inicial (entero >= 0):"
                Leer num
                Escribir "¿Cuántos términos desea generar?"
                Leer contF
				
                Si num < 0 O contF <= 0 Entonces
                    Escribir "Datos inválidos."
                Sino
                    // Inicia la secuencia de Fibonacci
                    a1 <- 0
                    a2 <- 1
					
                    // Avanza hasta el número más cercano a 'num'
                    Mientras a2 < num Hacer
                        a3 <- a1 + a2
                        a1 <- a2
                        a2 <- a3
                    FinMientras
					
                    // Genera la cantidad de términos solicitada
                    Escribir "Sucesión de Fibonacci desde ", a2, ":"
                    Para i <- 1 Hasta contF Hacer
                        Escribir a2
                        a3 <- a1 + a2
                        a1 <- a2
                        a2 <- a3
                    FinPara
                FinSi
				
				// ----------------------------------------
				// OPCIÓN 5: SALIR DEL PROGRAMA
				// ----------------------------------------
            5:
                Escribir "Gracias por usar la calculadora. ¡Hasta luego!"
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
		// Repite el menú hasta que el usuario elija salir
    Hasta Que opcion = 5

FinAlgoritmo
