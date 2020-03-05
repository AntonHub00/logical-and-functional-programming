-- Order a integer list


-- Replace the position in a list with a given value
replace [] position value = []
replace (x:xs) position value
    | (position == 1) = value:xs
    | otherwise = x:(replace xs (position-1) value)


-- Swap two places in a list
swap (x:xs) a b n = replace (replace (x:xs) n b) (n-1) a


-- Get a list length
get_length [] = 0
get_length (x:xs) = 1 + (get_length xs)


-- (get position's value) Get the value of a given position in a list
gpv (x:xs) position
    | (position == 1) = x
    | otherwise = gpv xs (position-1)


-- Swap places till left item is no lower then the current
swap_till_lowest (x:xs) n
    | (n == 1) = (x:xs)
    | ((gpv (x:xs) n) < (gpv (x:xs) (n-1))) =
        swap_till_lowest (swap (x:xs) (gpv (x:xs) n) (gpv (x:xs) (n-1)) n) (n-1)
    | otherwise = (x:xs)


-- Orders a list (insertion sort)
sort_list_prime (x:xs) n
    | (n == (get_length (x:xs)) + 1) = (x:xs)
    | ((gpv (x:xs) n) < (gpv (x:xs) (n-1))) =
        sort_list_prime (swap_till_lowest (x:xs) n) (n+1)
    | otherwise = sort_list_prime (x:xs) (n+1)


-- Call sort_list_prime with a default value (so the user don't have to insert it)
sort_list (x:xs) = sort_list_prime (x:xs) 2
