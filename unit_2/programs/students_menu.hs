students = [("James", 70.0), ("John", 85.0), ("Robert", 100.0), ("Michael", 75.0),
            ("William", 54.0), ("David", 23.0), ("Richard", 0.0), ("Joseph", 14.0)]


-- Get amount of aproved students
gaas [] = 0
gaas ((name, grade):xs)
    | (grade >= 70) = 1 + (gaas xs)
    | otherwise = (gaas xs)


-- Get amount of aproved students
gaus [] = 0
gaus ((name, grade):xs)
    | (grade >= 70) = 1 + (gaus xs)
    | otherwise = (gaus xs)


-- Get name of approved students
gnas [] = []
gnas ((name, grade):xs)
    | (grade >= 70) = name:(gnas xs)
    | otherwise = (gnas xs)


-- Get average
-- ga (addition_total, num_elements) = (addition_total / num_elements)
ga addition_total num_elements = (addition_total / num_elements)


-- Get the grades sum of approved students
ggsas [] = 0
ggsas ((name, grade):xs)
    | (grade >= 70) = grade + (ggsas xs)
    | otherwise = (ggsas xs)


-- Get the grades sum of unapproved students
ggsus [] = 0
ggsus ((name, grade):xs)
    | (grade < 70) = grade + (ggsus xs)
    | otherwise = (ggsus xs)


-- test::[(String,Int)]->(Int,Int)->Double
-- test [] (fgrade, num_elements) = (fgrade / num_elements)
-- test ((name, grade):xs) (fgrade, num_elements)
--     | (grade < 70) = (test xs (fgrade+grade, num_elements+1))
--     | otherwise = (test xs (fgrade, num_elements))


-- Approved students sublist
asb [] = []
asb ((name, grade):xs)
    | (grade >= 70) = (name, grade):(asb xs)
    | otherwise = (asb xs)


-- Unapproved students sublist
usb [] = []
usb ((name, grade):xs)
    | (grade < 70) = (name, grade):(usb xs)
    | otherwise = (usb xs)


-- Best grade student name
bgsn_prime [] grade name = name
bgsn_prime ((name, grade):xs) current_grade current_name
  | (current_grade > grade) = (bgsn_prime xs current_grade current_name)
  | otherwise = (bgsn_prime xs grade name)

bgsn [] = []
bgsn ((name, grade):xs) = bgsn_prime ((name, grade):xs) grade name


menu =
    do
        putStrLn "1) Amount of approved students"
        putStrLn "2) Name of approved students"
        putStrLn "3) Average of approved students"
        putStrLn "4) Average of unapproved students"
        putStrLn "5) Approved students sublist"
        putStrLn "6) Unapproved students sublist"
        putStrLn "7) Best grade student name"
        putStrLn "8) Quit\n"
        putStrLn "Type an option:"

        choice <- getLine

        if (choice == "1") then
            do
                putStrLn ("\nResult: " ++ (show (gaas students)) ++"\n")
                menu
        else if (choice == "2") then
            do
                putStrLn ("\nResult: " ++ (show (gnas students)) ++"\n")
                menu
        else if (choice == "3") then
            do
                putStrLn ("\nResult: " ++ (show (ga (ggsas students) (gaas students))) ++"\n")
                menu
        else if (choice == "4") then
            do
                putStrLn ("\nResult: " ++ (show (ga (ggsus students) (gaus students))) ++"\n")
                menu
        else if (choice == "5") then
            do
                putStrLn ("\nResult: " ++ (show (asb students)) ++"\n")
                menu
        else if (choice == "6") then
            do
                putStrLn ("\nResult: " ++ (show (usb students)) ++"\n")
                menu
        else if (choice == "7") then
            do
                putStrLn ("\nResult: " ++ (show (bgsn students)) ++"\n")
                menu
        else
            return ()
