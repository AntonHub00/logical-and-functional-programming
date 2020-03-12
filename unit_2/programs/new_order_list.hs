my_min [] n = n
my_min (x:xs) n
    | ( x < n ) = my_min xs x
    | otherwise = my_min xs n


del_min [] m = []
del_min (x:xs) m
  | (x == m) = del_min xs m
  | otherwise = x:del_min xs m


order [] = []
order (x:xs) =
    let
        m = my_min xs x
        nl = del_min (x:xs) m
    in
        m:order nl
