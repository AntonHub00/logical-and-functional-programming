-- Prime number

get_module n m
    | (n < m) = n
    | (n >= m) = (get_module (n-m) m)
    -- | otherwise = sdfjksdaf

is_prime n = is_prime_prime n n

is_prime_prime n m
    | (m == 1) = 1
    | ((get_module n m) == 0) = (1 + is_prime_prime n (m-1))
    | otherwise = is_prime_prime n (m-1)

is_prime_bool n = if ((is_prime n) <= 2) then True else False

square x = x * x

-- ":" es un constructor de listas
-- 2:[1,2,3] = 2,1,2,3

-- Ejemplo de constructor de lista:
-- length [] = 0
-- length (x:xs) = 1 + (length xs)
