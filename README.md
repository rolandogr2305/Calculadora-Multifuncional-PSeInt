# Calculadora-Multifuncional-PSeInt
Calculadora multifuncional implementada en PSeInt — operaciones, áreas, estadística y Fibonacci. Entrega individual.
📘 Descripción del Proyecto (Qué hice)

Este proyecto consiste en el desarrollo de una calculadora multifuncional implementada en PSeInt, creada de manera individual como parte de la práctica de programación estructurada.

La calculadora fue diseñada para ofrecer múltiples funcionalidades en un solo programa, incluyendo:

Operaciones básicas: suma, resta, multiplicación y división.

Cálculo de áreas geométricas: círculo, cuadrado, triángulo y trapecio.

Módulo estadístico: cálculo de media, mediana y moda.

Generación de la sucesión de Fibonacci.

El propósito principal es demostrar la capacidad de crear código funcional, documentado y comprensible, aplicando validaciones y buenas prácticas de desarrollo.

⚙️ Cómo lo hice (Arquitectura y Lógica)

El programa fue desarrollado en PSeInt, empleando estructuras de control y pseudocódigo compatible con versiones antiguas del entorno.
La arquitectura está basada en un menú principal que dirige al usuario hacia los distintos módulos según la opción seleccionada.

🔹 Estructura general:

Menú principal:
Controlado por un bucle Repetir...Hasta Que, que permite navegar entre las diferentes funcionalidades.

Operaciones básicas:
Realiza las operaciones fundamentales con validación para evitar errores (por ejemplo, división entre cero).

Áreas geométricas:
Aplica las fórmulas matemáticas estándar para calcular las áreas de diferentes figuras, validando que los valores sean positivos.

Módulo estadístico:
Permite al usuario ingresar una lista de números y calcula:

Media: promedio de los valores.

Mediana: valor central de los datos ordenados.

Moda: número que más se repite.
Se utiliza el método burbuja para ordenar los datos.

Sucesión de Fibonacci:
Genera la secuencia de Fibonacci a partir de un número inicial y una cantidad de términos ingresada por el usuario.

Finalización del programa:
Opción para salir del menú con un mensaje de despedida.

🎯 Para qué lo hice (Propósito de cada módulo)
Módulo	Propósito
Operaciones básicas	Aplicar operaciones aritméticas y manejo de condicionales.
Áreas geométricas	Implementar fórmulas matemáticas y validaciones lógicas.
Estadística básica	Introducir arreglos, ciclos anidados y cálculos sobre datos almacenados.
Fibonacci	Aplicar lógica iterativa para generar secuencias matemáticas.
Estructura general	Integrar todas las funciones en un programa con navegación controlada.
🧩 Dificultades encontradas y cómo las resolví
Dificultad	Solución aplicada
Errores con arreglos en versiones antiguas de PSeInt	Reemplacé Definir lista[100] por Dimension lista[100] para asegurar compatibilidad.
Tipos de datos incompatibles (entero/real)	Unifiqué los tipos de variables numéricas para evitar conflictos.
Errores por división entre cero o valores negativos	Implementé validaciones condicionales previas a los cálculos.
Ordenar números para calcular la mediana	Apliqué el método de ordenamiento burbuja por su simplicidad y compatibilidad.
Lógica de Fibonacci incorrecta en versiones anteriores	Ajusté la estructura de bucles para generar solo números válidos de la secuencia.
🧠 Buenas prácticas implementadas

Código totalmente comentado y fácil de leer.

Uso de estructuras claras: Segun, Si...Entonces, Para, Mientras, Repetir.

Validación de entradas para evitar errores de ejecución.

Diseño modular: cada opción del menú cumple una función específica.

Compatibilidad total con versiones antiguas de PSeInt.

🔁 Control de versiones (ejemplo de commits)
Etapa	Descripción	Ejemplo de commit
1. Inicio del proyecto	Creación del algoritmo y menú principal	feat: estructura inicial de la calculadora
2. Operaciones básicas	Implementación de suma, resta, multiplicación y división	feat: módulo de operaciones básicas con validaciones
3. Áreas geométricas	Cálculo de áreas de figuras planas	feat: agregar módulo de áreas geométricas
4. Estadística básica	Cálculo de media, mediana y moda	feat: añadir módulo de estadística con arreglos
5. Fibonacci	Generación de la sucesión matemática	feat: implementar módulo de Fibonacci
6. Documentación final	Comentarios y documentación formal	docs: agregar comentarios y README completo
7. Versión final	Verificación y pruebas de compatibilidad	fix: corregir errores menores y finalizar proyecto
   Estructura del repositorio
   CalculadoraMultifuncional
    Calculadora_Multifuncional.psc   // Código completo en PSeInt
    README.md                        // Documentación formal (este archivo)
                        // Diagrama de flujo

🚀 Ejecución

Abrir PSeInt (cualquier versión).

Cargar el archivo Calculadora_Multifuncional.psc.

Ejecutar el algoritmo (Ctrl + F9 o menú → Ejecutar).

Seguir las instrucciones del menú interactivo.

👤 Autor

Rolando Garcia Reyes
Desarrollador y documentador del proyecto.
Proyecto realizado de manera individual.
