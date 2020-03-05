-- Get the euclidian length

eucli [] = 0
eucli (x:xs) = sqrt(eucli_p (x:xs))

eucli_p [] = 0
eucli_p (x:xs) = (x*x) + eucli_p(xs)
