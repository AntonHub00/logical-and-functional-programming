get_module n m
    | (n < m) = n
    | otherwise = (get_module (n-m) m)

del_mul [] m = []
del_mul (x:xs) m = del_mul_prime (x:xs) 1 m

del_mul_prime [] n m = []
del_mul_prime (x:xs) n m
  | ((get_module n m) == 0) = (del_mul_prime xs (n+1) m)
  | otherwise = x:(del_mul_prime xs (n+1) m)
