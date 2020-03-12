-- Insert sort algorithm


insert n [] = [n]
insert n (x:xs)
    | (n < x) = n:x:xs
    | otherwise = x:(insert n xs)


insert_sort [] = []
insert_sort (x:xs) = insert x (insert_sort xs)
