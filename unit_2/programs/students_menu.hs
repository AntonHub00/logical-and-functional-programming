students = [("James", 70.0), ("John", 70.0), ("Robert", 100.0), ("Michael", 75.0),
            ("William", 54.0), ("David", 23.0), ("Richard", 0.0), ("Joseph", 14.0)]


-- Get amount of students (approved or unapproved)
gas [] option = 0
gas ((name, grade):xs) option
    | (grade >= 70) = if (option == "approved") then 1 + (gas xs option)
                                                else 0 + (gas xs option)
    | otherwise = if (option /= "approved") then 1 + (gas xs option)
                                                else 0 + (gas xs option)


-- Get student names (approved or unapproved)
gsn [] option = []
gsn ((name, grade):xs) option
  | (grade >= 70) = if (option == "approved") then name:(gsn xs option)
                                              else (gsn xs option)
  | otherwise = if (option /= "approved") then name:(gsn xs option)
                                              else (gsn xs option)


-- Get average
ga [] (fgrade, num_elements) option = (fgrade / num_elements)
ga ((name, grade):xs) (fgrade, num_elements) option
  | (grade >= 70) = if (option == "approved") then (ga xs (fgrade+grade, num_elements+1.0) option)
                                              else (ga xs (fgrade, num_elements) option)
  | otherwise = if (option /= "approved") then (ga xs (fgrade+grade, num_elements+1.0) option)
                                              else (ga xs (fgrade, num_elements) option)


-- Get students sublist (approved or unapproved)
gss [] option = []
gss ((name, grade):xs) option
    | (grade >= 70) = if (option == "approved") then (name, grade):(gss xs option)
                                                else (gss xs option)
    | otherwise = if (option /= "approved") then (name, grade):(gss xs option)
                                                else (gss xs option)


-- call gxsn with proper params
gxsn_prime [] option grade name = name
gxsn_prime ((name, grade):xs) option current_grade current_name
  | (current_grade > grade) = if (option == "best") then (gxsn_prime xs option current_grade current_name)
                                                        else (gxsn_prime xs option grade name)
  | otherwise = if (option /= "best") then (gxsn_prime xs option current_grade current_name)
                                                        else (gxsn_prime xs option grade name)


-- Get (the best or worst grade) student name
gxsn [] option = []
gxsn ((name, grade):xs) option = gxsn_prime ((name, grade):xs) option grade name


-- Pass the proper values to gsgf function
gsgf_prime [] n (freq, ((y_name, y_grade):ys)) = (freq, ys)
gsgf_prime ((name, grade):xs) n (freq, ((y_name, y_grade):ys))
  | (n == grade) = (gsgf_prime xs n (freq+1, ((y_name, y_grade):ys)))
  | otherwise = (gsgf_prime xs n (freq, (((y_name, y_grade):ys) ++ [(name, grade)])))


gsgf [] = []
gsgf ((name, grade):xs) =
    let
        (c_freq, new_list) = (gsgf_prime ((name, grade):xs) grade (0,[("",0.0)]))
     in
         [(c_freq, grade)] ++ (gsgf new_list)

menu =
    do
        putStrLn "1) Amount of approved students"
        putStrLn "2) Amount of unapproved students"
        putStrLn "3) Name of approved students"
        putStrLn "4) Name of unapproved students"
        putStrLn "5) Average of approved students"
        putStrLn "6) Average of unapproved students"
        putStrLn "7) Approved students sublist"
        putStrLn "8) Unapproved students sublist"
        putStrLn "9) Best grade student name"
        putStrLn "10) Worst grade student name"
        putStrLn "11) Grade frequency"
        putStrLn "12) Quit\n"
        putStrLn "Type an option:"

        choice <- getLine

        if (choice == "1") then
            do
                putStrLn ("\nResult: " ++ (show (gas students "approved")) ++"\n")
                menu
        else if (choice == "2") then
            do
                putStrLn ("\nResult: " ++ (show (gas students "unapproved")) ++"\n")
                menu
        else if (choice == "3") then
            do
                putStrLn ("\nResult: " ++ (show (gsn students "approved")) ++"\n")
                menu
        else if (choice == "4") then
            do
                putStrLn ("\nResult: " ++ (show (gsn students "unapproved")) ++"\n")
                menu
        else if (choice == "5") then
            do
                putStrLn ("\nResult: " ++ (show (ga students (0.0, 0.0) "approved")) ++"\n")
                menu
        else if (choice == "6") then
            do
                putStrLn ("\nResult: " ++ (show (ga students (0.0, 0.0) "unapproved")) ++"\n")
                menu
        else if (choice == "7") then
            do
                putStrLn ("\nResult: " ++ (show (gss students "approved")) ++"\n")
                menu
        else if (choice == "8") then
            do
                putStrLn ("\nResult: " ++ (show (gss students "unapproved")) ++"\n")
                menu
        else if (choice == "9") then
            do
                putStrLn ("\nResult: " ++ (show (gxsn students "best")) ++"\n")
                menu
        else if (choice == "10") then
            do
                putStrLn ("\nResult: " ++ (show (gxsn students "worst")) ++"\n")
                menu
        else if (choice == "11") then
            do
                putStrLn ("\nResult: " ++ (show (gsgf students)) ++"\n")
                menu
        else
            return ()
