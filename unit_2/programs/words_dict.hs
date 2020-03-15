test_str = " Some awesome text in this awesome way with some random text written in here"
test_str_caps = "A B A C C A B C"


-- First try


-- count [] = 0
-- count (x:xs) = 1 + (count xs)


-- remove_n [] n = []
-- remove_n (x:xs) n = if (x == n) then (remove_n xs n) else x:(remove_n xs n)


-- test [] = []
-- test (x:xs) =
--     let
--         new_list = (remove_n (x:xs) x)
--         occurrences = ((count (x:xs)) - (count new_list))
--     in
--         (x, occurrences):(test new_list)


-- Second try


-- "Update"
--
-- If the word passed matches, this function will return the same list of
-- tuples passed but the frequency of the word matched updated (+1).
-- If the word doesn't match any tuple, a new tuple is added
--
-- ((x1, x2):xs) = List of tuples
-- x1 = Word (string)
-- x2 = Frequency (integer)
-- m = Word to match (string)
ud [] m = [(m, 1)]
ud ((x1, x2):xs) m = if (x1 == m) then (x1, x2+1):xs else (x1, x2):(ud xs m)


-- "Get Frequency Prime"
--
-- Calls "ud" function for every word in the list so it will get the words
-- frequencies till the end of the list and and return them.
-- It returns just "ys" because the first tuple is the "empty" tuple added at
-- the beginning.
--
-- (x:xs) = List of words
-- ((y1, y2):ys) = List of tuples
-- y1 = Word (string)
-- y2 = Frequency (integer)
gfp [] ((y1, y2):ys) = ys
gfp (x:xs) ((y1, y2):ys) = gfp xs (ud ((y1, y2):ys) x)


-- "Get Frequency"
--
-- Calls "gfp" with the proper init values.
--
-- str = String to get words frequency of (string)
-- "Empty" list of tuples is passed to gfp to be filled
gf str = gfp (words str) [("", 0)]
