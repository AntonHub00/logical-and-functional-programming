module NaiveBayesClassifier where

import DataSet (football_sample, politics_sample, religion_sample, sample_text)
import UndesirableWords (symbols, prepositions, articles, demostratives,
    possessives, pronouns, conjunctions)
import WordsFrequencies (gf)


-- "Gramatical Words"
--
-- Creates a list with all the words that should be removed from the classes
-- strings and the sample text because these are not meaningful.
gw = prepositions ++ articles ++ demostratives ++ possessives ++ pronouns ++ conjunctions


-- "(Football | Politics | Religion | Sample Text) Symbols Cleaned"
--
-- Removes every punctuation symbol from the classes text strings and from the
-- sample text and retunrs a list with every word in the strings.
--
-- c = Character in the *_sample and sample_text strings (char)
-- symbols = String with all the punctuation symbols (string)
-- elem = Function that checks if x exists in a list (function)
fsc = words [c | c <- football_sample, (elem c symbols) == False]
psc = words [c | c <- politics_sample, (elem c symbols) == False]
rsc = words [c | c <- religion_sample, (elem c symbols) == False]
stsc = words [c | c <- sample_text, (elem c symbols) == False]


-- "(Football | Politics | Religion | Sample Text) Words List Cleaned"
--
-- Removes every grammatical word (gw) from the words lists.
--
-- word = word from the words lists (string)
fwlc = [word | word <- fsc, (elem word gw) == False]
pwlc = [word | word <- psc, (elem word gw) == False]
rwlc = [word | word <- rsc, (elem word gw) == False]
stwlc = [word | word <- stsc, (elem word gw) == False]


-- "(Football | Politics | Religion) Frequencies
--
-- Gets a dictionary (list of tuples) with words as keys and frequencies
-- as values.
--
-- gf = "Get Frequencies" (function)
ff = gf fwlc
pf = gf pwlc
rf = gf rwlc


-- "(Football | Politics | Religion) Class Words"
--
-- Gets just the words of the classes.
--
-- fst = Function that gets the first element of a tuple (function)
-- x = Tuple (tuple)
fcw = [(fst x) | x <- ff]
pcw = [(fst x) | x <- pf]
rcw = [(fst x) | x <- rf]


-- "(Football | Politics | Religion) Frequencies Sum"
--
-- Gets the sum of all the frequencies of a class.
--
-- snd = Function that gets the second element of a tuple (function)
-- x = Tuple (tuple)
ffs = sum([(snd x) | x <- ff])
pfs = sum([(snd x) | x <- pf])
rfs = sum([(snd x) | x <- rf])


-- "Total Frequencies Sum"
--
-- Get the sum of the frequencies of all the classes.
--
-- ffs, pfs, rfs = Sum of the frequencies of each class (integer)
tfs = sum [ffs, pfs, rfs]


-- "Get Logarithm"
--
-- Takes a word from the sample text. If the word is in the words of the class,
-- then it'll be divided by the sum of the frequencies of the class and then
-- calculates its logarithm and returns it. If the word is not in the words
-- of the class it'll divide 0.1 by the sum of the frequencies of the class and
-- returns its logarithm.
--
-- cw = Class Words (list)
-- cfs = Class Frequency Sum (integer)
-- cf = Class Frequencies (list)
-- e = Element in a list (string)
gl cw cfs cf e
    | (elem e cw) = (log ((snd (head (filter ((== e) . fst) cf))) / cfs))
    | otherwise = (log (0.1 / cfs))


-- "Get Class Probability"
--
-- Get the probability for each class.
gfp = sum ((map (gl fcw ffs ff) stwlc) ++ [log (ffs / tfs)])
gpp = sum ((map (gl pcw pfs pf) stwlc) ++ [log (pfs / tfs)])
grp = sum ((map (gl rcw rfs rf) stwlc) ++ [log (rfs / tfs)])


-- Get Max Probability
--
-- Gets the higher probability then it'll return a string which lets know the
-- user the class the sample text belongs to.
gmp =
    let
        maxi = maximum [gfp, gpp, grp]
    in
        if maxi == gfp then "Football"
        else if maxi == gpp then "Politics"
        else "Religion"

main = print (gmp)
