-- Multiply numbers

-- Rules notation
multiply_r n 1 = n
multiply_r n m = n + (multiply_r n (m-1))

-- Conditional notation
multiply_c n m = if(m == 1) then n
                else n + (multiply_c n (m-1))

-- Guard notation
multiply_g n m
  | (m == 1) = n
  | (m > 1) = n + (multiply_g n (m-1))
