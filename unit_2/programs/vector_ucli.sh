
eucli [] = []
eucli (x:xs)
| (x*x) + eucli(xs)
