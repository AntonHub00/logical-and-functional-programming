# Unidad 2

Largo de una lista

[] => lista vacía
(x:xs) => lista no vacía

length []=0
length (x:xs) = 1 + (length xs)

Los paréntesis y ":" son constructores de datos (sirven para construir datos). \
El lado derecho del igual es una expresión aritmética.


Pattern Matching

Ejemplo:

Esto es una equivalencia => [7, 5, 6] = 7:[5, 6]

> length [7, 5, 6] => 3

> length 7:[5, 6] = 1 + (length [5, 6]) => 1 + 2 => 3

> length 5:[6] = 1 + (length [6]) => 1 + 1 => 2

> length 6:[ ] = 1 + (length []) => 1 + 0 => 1

> length [ ] = 0

---

Sustitución del valor de la posición enésima de una lista con otro valor.

l = [3, 7, 15, 9, 8, 0]

substitute [] p v = []
substitute [x:xs] p v = if(p == 1) then v:xs else x:(sustitute xs (p-1) v)

Ejemplo:

> substitute [3, 7, 15 ,9] 10 333 => [3, 7, 15, 9]
> substitute 3:[7, 15, 9] 10 333 = 3:(substitute [7, 15, 9] 9 333) => 3:[7, 15, 9] => [3, 7, 15, 9]
> substitute 7:[15, 9] 9 333 = 7:(substitute [15, 9] 8 333) => 7:[15, 9] => [7, 15, 9]
> substitute 15:[9] 8 333 = 15:(substitute [9] 7 333) => 15:[9] => [15, 9]
> substitute 9:[] 7 333 = 9:(substitute [] 6 333) => 9:[] => [9]
> substitute [] 6 333 = 0

## Tarea

Dada un lista de enteros, ordenarla

---

- Borrar los números primos de una lista
- Borrar números en posición múltiplo de 3 de una lista
- Borrar menor de una lista
- Borrar los valores en posición múltiplo de n de una lista
- Dado un vector calcular su longitud euclidiana

---

Ordenamiento de lista

- Encontrar el menor
- Borrar de la lista el menor de tal manera que tengamos una lista sin el menor
- Construir un nueva lista poniendo el menro de la cabeza
- Repetir operación con la lista a la que se le borró el menor

---

En programación funcional existe el principio de inmutabilidad.

Cuando hay algún código que hace cambiar el cálculo y por lo
tanto la salida de una función produce "efectos colaterales"

Una función que recibe un valor a y devuelve b nunca cambiará el valor de retorno
ante la entrada de a.
