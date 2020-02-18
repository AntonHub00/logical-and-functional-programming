-- Power of a number

-- power(x,n) = x * power(x, (n-1))

-- Rules notation
power_r n 0 = 1
power_r n m = n * (power_r n (m-1))

-- Conditional notation
power_c n m = if(m == 0) then 1
                else n * (power_c n (m-1))

-- Guard notation
power_g n m
  | (m == 0) = 1
  | (m > 0) = n * (power_g n (m-1))
