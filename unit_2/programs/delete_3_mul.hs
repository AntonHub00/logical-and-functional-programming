get_module n m
    | (n < m) = n
    | (n >= m) = (get_module (n-m) m)
    -- | otherwise = sdfjksdaf

del_3_mul [] = []
del_3_mul (x:xs) = del_3_mul_prime (x:xs) 1

del_3_mul_prime [] n = []
del_3_mul_prime (x:xs) n
  | ((get_module n 3) == 0) = (del_3_mul_prime xs (n+1))
  | otherwise = x:(del_3_mul_prime xs (n+1))
