-- Divide numbers

-- Rules notation
-- divide_r n 1 = n
-- divide_r n m = 1 + (divide_r n (m-1))

-- Conditional notation
divide_c n m = if(n < m) then 0
                else 1 + (divide_c (n-m) m)

-- Guard notation
divide_g n m
  | (n < m) = 0
  | (n >= m) = 1 + (divide_g (n-m) m)
