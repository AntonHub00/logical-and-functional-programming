get_head (x:xs) = x

del_min [] = []
del_min (x:xs)
  | (x < (get_head xs)) = del_min_prime (xs) x
  | otherwise = del_min_prime xs (get_head xs)

del_min_prime [] n = []
del_min_prime (x:xs) n
  | (x < (get_head xs)) = del_min_prime xs x
  | otherwise = [x]

get_rid_min [] = []
get_rid_min (x:xs) = get_rid_min_prime (x:xs) (del_min (x:xs))

get_rid_min_prime [] (y:ys) = []
get_rid_min_prime (x:xs) (y:ys)
  | (y == x) = get_rid_min_prime xs (y:ys)
  | otherwise = x:(get_rid_min_prime xs (y:xs))
