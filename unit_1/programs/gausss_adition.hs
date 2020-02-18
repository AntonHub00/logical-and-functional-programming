-- Suma de Gauss
-- gauss = 5 + 4 + 3 + 2 + 1 + 0

-- Notación de reglas
gauss 0 = 0
gauss n = n + (gauss (n-1))

-- Notación condicional
gauss2 n = if(n==0) then 0
            else n + (gauss2 (n-1))

-- Notación de guardas
gauss3 n
  | (n==0) = 0
  | (n>0) = n + (gauss3 (n-1))
