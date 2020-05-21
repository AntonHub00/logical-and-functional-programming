#Programación lógica y funcional \
Unidad 3. Programación Lógica \
Tema 3.1 Lógica de Primer Orden, EJERCICIOS DE REPASO

## Alumno: Antonio Emiko Ochoa Adame

1. Exprese como predicados las siguientes proposiciones:

    a) Juan es desarrollador

        Desarrollador(Juan)

        \bigskip

    b) Pedro es el líder del proyecto Banconfiable

        Lider_de(Pedro,Banconfiable)

        \bigskip

    c) El alumno 16121234 tiene calificaciones 80, 100, 90 y 70

        Tiene_calificaciones(16121234,80,100,90,70)

        \bigskip

    d) Lorena tiene prestado el libro “Fausto” y el “El Principito”

        Tiene_prestado(Lorena,Fausto,El principito)

        \bigskip

    e) El Yogurt es un derivado de la leche

        Derivado_de(Yogurt,leche)

        \bigskip

2. Del ejercicio 1) identifique los términos y los predicados:

    a) Juan es desarrollador

        Término(s): Juan.

        Predicado: Es desarrollador.

        \bigskip

    b) Pedro es el líder del proyecto Banconfiable

        Término(s): Pedro, Proyecto Banconfiable.

        Predicado: Es el líder de.

        \bigskip

    c) El alumno 16121234 tiene calificaciones 80, 100, 90 y 70

        Término(s): El alumno 16121234, calificaciones 80, 100, 80 y 70.

        Predicado: Tiene.

        \bigskip

    d) Lorena tiene prestado el libro “Fausto” y el “El Principito”

        Término(s): Lorena, "Fausto", "El principito".

        Predicado: Tiene prestado.

        \bigskip

    e) El Yogurt es un derivado de la leche

        Término(s): Yogurt, leche.

        Predicado: Es un derivado de.

        \bigskip

3. Indique si las siguientes oraciones son proposiciones o no:

    a) Hugo Sánchez es futbolista (Sí)
    b) Coelho es escritor (Sí)
    c) ¿Cuál es el precio del dólar? (No)
    d) ¡El petate del muerto! (No)
    e) En Morelia arrestarán por salir a la calle (Sí)
    f) Covid-19 es una enfermedad mortal (Sí)
    g) 0 = 34 (Sí)
    h) El cielo es naranja (Sí)

    \bigskip

4. Represente simbólicamente en lógica de primer orden:

    a) Todos los hombres son fieles

        $H$: $x$ es hombre \
        $F$: $x$ es fiel \
        $\forall x(H(x) \implies F(x))$

        \bigskip

    b) Si es ingeniero en sistemas computacionales y es inquieto entonces será
    emprendedor

        $Ing$: $x$ es ingeniero en Sistemas Computacionales \
        $Inq$: $x$ es inquieto \
        $E$: $x$ es emprendedor \
        $\forall x(Ing(x) \land Inq(x) \implies E(x))$

        \bigskip

    c) Existe al menos uno que si es ingeniero en sistemas computacionales y es
    emprendedor entonces es rico

        $I$: $x$ es ingeniero en Sistemas Computacionales \
        $E$: $x$ es emprendedor \
        $R$: $x$ es rico \
        $\exists x(I(x) \land E(x) \implies R(x))$

        \bigskip

    d) No todos los emprendedores son ricos

        $E$: $x$ es emprendedor \
        $R$: $x$ es rico \
        $\exists x(E(x) \land R(x))$

        \bigskip

    e) No todas las apps móviles son útiles

        $A$: $x$ es una app móvil \
        $U$: $x$ es útil \
        $\exists x(A(x) \land U(x))$

        \bigskip

    f) No todas las empresas son exitosas y no todas las empresas generan ganancias

        $Em$: $x$ es una empresa \
        $Ex$: $x$ es exitosa \
        $G$: $x$ genera ganancias \
        $\exists x(Em(x) \land Ex(x) \land G(x))$

        \bigskip

5. Construya la tabla de verdad para la expresión $((r \land s) \oplus (q \lor
   t)) \implies (\neg q)$:

    | $r$ | $s$ | $q$ | $t$ | $(r \land s)$ | $(q \lor t)$ | $((r \land s) \oplus (q \lor t))$ | $\neg q$ | $((r \land s) \oplus (q \lor t)) \implies (\neg q)$ |
    |:---:|:---:|:---:|:---:|:-------------:|:------------:|:---------------------------------:|:--------:|:---------------------------------------------------:|
    |  V  |  V  |  V  |  V  |       V       |       V      |               F                   |     F    |                           V                         |
    |  V  |  V  |  V  |  F  |       V       |       V      |               F                   |     F    |                           V                         |
    |  V  |  V  |  F  |  V  |       V       |       V      |               F                   |     V    |                           V                         |
    |  V  |  V  |  F  |  F  |       V       |       F      |               V                   |     V    |                           V                         |
    |  V  |  F  |  V  |  V  |       F       |       V      |               V                   |     F    |                           F                         |
    |  V  |  F  |  V  |  F  |       F       |       V      |               V                   |     F    |                           F                         |
    |  V  |  F  |  F  |  V  |       F       |       V      |               V                   |     V    |                           V                         |
    |  V  |  F  |  F  |  F  |       F       |       F      |               F                   |     V    |                           V                         |
    |  F  |  V  |  V  |  V  |       F       |       V      |               V                   |     F    |                           F                         |
    |  F  |  V  |  V  |  F  |       F       |       V      |               V                   |     F    |                           F                         |
    |  F  |  V  |  F  |  V  |       F       |       V      |               V                   |     V    |                           V                         |
    |  F  |  V  |  F  |  F  |       F       |       F      |               F                   |     V    |                           V                         |
    |  F  |  F  |  V  |  V  |       F       |       V      |               V                   |     F    |                           F                         |
    |  F  |  F  |  V  |  F  |       F       |       V      |               V                   |     F    |                           F                         |
    |  F  |  F  |  F  |  V  |       F       |       V      |               V                   |     V    |                           V                         |
    |  F  |  F  |  F  |  F  |       F       |       F      |               F                   |     V    |                           V                         |

    \bigskip

6. Si A significa “mayor de 4”, B significa “menor de 9”, C significa “par” y D
   significa “múltiplo de 4”, indique, si los hay, aquellos valores qué hacen
   verdadera la expresión, en el dominio de los números naturales:

    $$\exists x ((A(x) \land B(x)) \implies (C(x) \land D(x)))$$

    \bigskip

    Respuesta: 8

    \bigskip

7. Escriba una frase enunciando la interpretación de la formula de 6):

    Respuesta: Todos aquellos números naturales entre 4 y 9 (sin incluirlos)
    que sean divisibles exactamente por 2 y 4.

    \bigskip

8. Indique si la expresión de 6) es una fórmula bien formada y por qué:

    Sí porque cumple con las reglas de la definición de una fórmula bien
    formada (se pueden aplicar operaciones lógicas sobre ella, tiene átomos los
    cuales son fórmulas bien formadas y se les pueden aplicar cuantificadores).

    \bigskip

9. De la expresión de 6) indique quiénes son los átomos, quiénes los términos,
   quiénes los cuantificadores, y qué otros elementos hay en la expresión:

       Átomo(s): $A$, $B$, $C$, $D$.

       Variable(s): $x$.

       Cuantificador(es): $\exists$.

       Conector(es): $\land$, $\implies$.

       Símbolo(s) de puntuación: $($, $)$.
