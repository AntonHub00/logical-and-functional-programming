module UndesirableWords where

-- Words and characters that should be removed from the training texts and
-- the sample text

symbols="«».,;:¿?¡!()[]-\"\'_/{}\\<>*+=^`&%$#|"

prepositions = words "a antes de dentro desde después durante en hasta por \
     \sobre tras contra"

articles = words "el los un unos la las una unas lo"

demostratives = words "este ese aquel esta esa aquella estos esos aquellos estas esas \
    \aquellas esto eso aquello"

possessives = words "mi mis mío míos tu tus tuyo tuyos su sus suyo suyos mía \
    \tuya tuyas suya suyas nuestro nuestros vuestro vuestros nuestra nuestras \
    \vuestra vuestras"

pronouns = words "me te se nos os le les yo tú vos él ella ello ellos usted \
    \ustedes mí ti sí"

conjunctions = words "y ni pero empero sino o bien ya ora sea fuera como \
    \porque pues que si aunque asi luego conque ergo mientras"
