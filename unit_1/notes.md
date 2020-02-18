# Diferentes estilos de programación

- Paradigma: Palabra que se emplea para refererise a un conjunto de principios
reglas, ideas, filosofía alrededor de un tema.
- Paradigma de programación: Dinstintos estilos y tipos de lenguaje.

## Tarea

Describir de forma informal lenguajes 3 de programación.

### Python

Es un lenguaje de alto nivel interpretado cuya sintaxis es muy parecida al inglés
puro. Es un lenguaje que comparte características de paradigmas como el
funcional y orientado a objetos, pero también es considerado un lenguaje de
scripting y genérico. Con este lenguaje se pueden hacer programas desde muy
básicos hasta desarrollo web, automatización de procesos, procesamiento de datos,
inteligencia artificial, entre otros.
Una ventaja es que es un lenguaje en el que se desarrolla muy rápido y se puede
dar soluciones sencillas a problemas complicados. Es perfecto para prototipar.
La ventaja de sus sintaxis recide en que un 80% de la programación es ver y
analizar código y el 20% es escribirlo.
Una de las desventajas de este lenguaje es que la ejecución es muy lenta a
comparación los lenguajes compilados e incluso es lento entre los que son
interpretados, que posiblemente se deba a la propiedad de que los tipos de
datos se definen de manera dinámica.

### C

Es un lenguaje de medio nivel que pretende facilitar el proceso de la
programación manual del lenguaje ensamblador, ya que este segundo requiere
muchas instrucciones para llevar a cabo una simple tarea.
Este lenguaje es uno de los más rápidos y tiene una sintaxis muy estricta en
cuando a la definición de variables, arreglos, funciones, prototipos y en general
de las estructuras de datos que este maneja.
Una de las ventajas es que es posible crear prácticamente cualquier software
con este lenguaje y optimizarlo de tal manera que se ejecute lo más rápido
posible y si elevar demasiado el consumo de memoria y es que posible interactuar
directamente con el hardware.
Una de las desvetajas es que es un lenguaje en el que prácticamente todo se
construye desde cero y no hay estructuras de datos más complejas como pilas,
listas, diccionarios o mapas de hashes a menos que se utilice una librería
externa y otra es que el manejo de memoria es manual lo cual podría ayudar a la
optimización de un programa y a la vez se un total de dolor de cabeza con, por
ejemplo, las fugas de memoria.


### Lisp

Lisp es un lenguaje muy particular ya que la forma de programar en este
lenguaje sale un poco de los paradigmas comunes de los lenguajes actuales, de
hecho es bastante viejo y es de alto nivel.
Lisp viene de LISt Processor por lo que que la sintaxis de todo el lenguaje
gira en torno a la manipulación de listas para conseguir el resultado esperado.
Tiene una notación prefija por lo que primero se escribe el operador y después
todos los elementos a los que se le desea aplicar dicha operación.
El paradigma es principalmente funcional.
Una de las ventajas de Lisp es que puede ser usado para inteligencia artificial
ya que el código y los datos tienen la misma estructura (todo son listas), por
lo que es más fácil la manipulación de datos.
Una desvetaja es la propia sintaxis, ya que se usa como delimitador los
paréntesis y cuando hay muchas funciones o procesos anidados, encontrar el
paréntesis de cierre puede ser un dolor de cabeza y traer problemas de ejecución,
es por eso que dicen que las siglas de LISP más bien significan
LostInStupidParentheses.

## Paradigmas

- No procedural (objeto de estudio de esta materia): Un programa es en realidad
una configuración de datos.
    - Declarativo (lógicos y funcionales)
- Procedural: Toman un dato, se modifica y se almacena en una localización de
memoria llamada variable. Emplean para ello la asignación como mencanismo de
respaldo de datos modificados.
    - Imperativo

## Trabajo en clase (explicación de introducción)

Título: Desarrollo de lenguajes programación y su clasificación basado en su estructura
y aplicaciones.

Los lenguajes de programación se desarrollan con el objetivo de facilitarle a muchas
personas el uso de una computadora sin poner mucha detalle a su estructura interna.

El lenguaje ideal es aquél que permite expresar de forma precisa cómo es que
se va a resolver un problema.

## Trabajo en clase

Criterios de clasificación de lenguajes de programación:

- Nivel de abstracción
- Propósito
    - General
    - Domain Specific Languages (HTML, SQL, LaTeX, Matlab, Mathematica, etc.)
- Forma de escribir los programas
    - Procedural
        - Algorítmica/estructurada (procedimientos, funciones y eso se llaman módulos)
        - Orientada a objetos
        - Scripting (pocas líneas hacen mucho)
    - No procedural (funcional y lógico)


En programación procedural (imperativa) la instrucción más importante es la asignación y el
estado del programa lo definen el valor de las variables en memoria.

En programación no procedural un programa es la configuración.

## Tarea

Clasificar Go Lang de acuerdo a los criterios mencionados arriba.

Siguiendo criterios de clasificación de lenguajes leidos en el artículo, describir
los lenguajes repartidos.

- Breve descripción
- Clasificación
- Recomendable mostrar línead de código

1.5 de cuartillas en formato PDF.

Para el Martes 11 de Febrero de 2020.

Asunto: PLF11
Correo: joguar@hotmail.com


## Analizando direfentes estilos de lenguajes de programación

### Imperativos

Evalúan sus expresiones descomponíendolas en un árbol de derivacón guiado por
reglas gramaticales

## Evaluación de expresiones

Definición recursive de portencia de un número

Las siguientes son reglas de reescritura:

pot b 0 = 1

pot b e = b * (port b (e-1))

La parte izquierda del igual: "left-hand side"
La parte derecha del igual: "right-hand side"

Las partes de la izquierda se reescriben con las de la derecha.

"prompt" > pot 2 3

1. Se hace mactching con alguna regla (entre la llamada y una left-hand side)
2. Hacer la reescritura

pot b e = b * (pot b (e-1))
pot 2 3 = b * (pot 2 2) = 2 * 4 = 8

pot b e = b * (pot b (e-1))
pot 2 2 = b * (pot 2 1) = 2 * 2 = 4

pot b e = b * (pot b (e-1))
pot 2 1 = b * (pot 2 0) = 2 * 1 = 2

pot b 0 = 1
pot 2 0 = 1

## Lenguajes funcionales

Tienen un mencanismo que permite definir nuevos tipos de datos.

data Boolean = True | False

not:: Boolean -> Boolean

not:: True = False

not:: False = True

Representación de número naturales de Peano

Naturales = 1, 2, 3, 4, 5,...,infinito

Peano naturales = Z, (S Z), S(S Z)

Data Nat = Z | S Nat

add Z y = y

add (Sx) y = S(add x y)

Ejemplo de lo de arriba:

A resolver: add (S(S Z)) (S(S Z))

add (S x) y = S(add x y)
add (S(S Z)) (S(S Z)) = S(add (S Z) (S(S Z)))

Continuar el ejercicio

---

Paradigma imperativo - gramática
Paradigma funcional - reescritura de términos
Paradigma lógico - SLD resolution

---

### Mecanismo operacionald de los lenguajes funcionales

Reescritura de términos

(r1) inc x = add x (S Z)

(r2) add Z y = y

(r3) add (S x) y = S(add x y)

Primero se checa el matching y luego la reescritura.

---

Ejemplo:

inc (S(S(S Z)))

inc x = add x (S Z) \
inc (S(S(S Z))) = add (S(S(S Z))) (S Z) => S(S(S(S Z)))

add (S x) y = S(add x y) \
add S(S(S Z)) (S Z) = S(add (S(S Z)) (S Z)) => S(S(S(S Z)))

add (S x) y = S(add x y) \
add S(S Z) (S Z) = S(add (S Z) (S Z)) => S(S(S Z))

add (S x) y = S(add x y) \
add (S Z) (S Z) = S(add  Z (S Z)) => S(S Z)

add Z y = y \
add Z (S Z) = (S Z) => (S Z)

---

Funcionales (mecanismo):

Term rewriting system

Lógicos (mecanismo):

SLD resolution (Selective Linear Definite)

---

En los lenguajes declarativos existen los tipos primitivos más constructores de
datos para representar distintos datos.

---

Los tipos garantizan programas seguros

Hindley-Milner es un estándar para tipos.

---

En haskell se trabaja con funciones dirigidas.

Suma de Gauss

notación por guardas (Haskell)

---

Notaciones:

- Notación de reglas
- Notación condicional
- Notación de guardas

## Tarea

Hacer las 3 notaciones de declarar funciones con la función potencia
