students = [("James", 70.0), ("John", 85.0), ("Robert", 100.0), ("Michael", 75.0),
            ("William", 54.0), ("David", 23.0), ("Richard", 0.0), ("Joseph", 14.0)]


-- Get amount of aproved students
gaas [] option = 0
gaas ((name, grade):xs) option
    | (grade >= 70) = if (option == "approved") then 1 + (gaas xs option)
                                                else 0 + (gaas xs option)
    | otherwise = if (option /= "approved") then 1 + (gaas xs option)
                                                else 0 + (gaas xs option)


-- Get amount of aproved students
gaus [] = 0
gaus ((name, grade):xs)
    | (grade >= 70) = 1 + (gaus xs)
    | otherwise = (gaus xs)


-- Get name of approved students
gnas [] option = []
gnas ((name, grade):xs) option
  | (grade >= 70) = if (option == "approved") then name:(gnas xs option)
                                              else (gnas xs option)
  | otherwise = if (option /= "approved") then name:(gnas xs option)
                                              else (gnas xs option)


-- Get average
ga [] (fgrade, num_elements) option = (fgrade / num_elements)
ga ((name, grade):xs) (fgrade, num_elements) option
  | (grade >= 70) = if (option == "approved") then (ga xs (fgrade+grade, num_elements+1.0) option)
                                              else (ga xs (fgrade, num_elements) option)
  | otherwise = if (option /= "approved") then (ga xs (fgrade+grade, num_elements+1.0) option)
                                              else (ga xs (fgrade, num_elements) option)


-- Approved students sublist
ss [] option = []
ss ((name, grade):xs) option
    | (grade >= 70) = if (option == "approved") then (name, grade):(ss xs option)
                                                else (ss xs option)
    | otherwise = if (option /= "approved") then (name, grade):(ss xs option)
                                                else (ss xs option)


-- call gxgsn with proper params
gxgsn_prime [] option grade name = name
gxgsn_prime ((name, grade):xs) option current_grade current_name
  | (current_grade > grade) = if (option == "approved") then (gxgsn_prime xs option current_grade current_name)
                                                        else (gxgsn_prime xs option grade name)
  | otherwise = if (option /= "approved") then (gxgsn_prime xs option current_grade current_name)
                                                        else (gxgsn_prime xs option grade name)


-- Get the student name with the best or worst grade
gxgsn [] option = []
gxgsn ((name, grade):xs) option = gxgsn_prime ((name, grade):xs) option grade name


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
                putStrLn ("\nResult: " ++ (show (gaas students "approved")) ++"\n")
                menu
        else if (choice == "2") then
            do
                putStrLn ("\nResult: " ++ (show (gnas students "approved")) ++"\n")
                menu
        else if (choice == "3") then
            do
                putStrLn ("\nResult: " ++ (show (ga students (0.0, 0.0) "approved")) ++"\n")
                menu
        else if (choice == "4") then
            do
                putStrLn ("\nResult: " ++ (show (ga students (0.0, 0.0) "unapproved")) ++"\n")
                menu
        else if (choice == "5") then
            do
                putStrLn ("\nResult: " ++ (show (ss students "approved")) ++"\n")
                menu
        else if (choice == "6") then
            do
                putStrLn ("\nResult: " ++ (show (ss students "unapproved")) ++"\n")
                menu
        else if (choice == "7") then
            do
                putStrLn ("\nResult: " ++ (show (gxgsn students "approved")) ++"\n")
                menu
        else
            return ()
