// ANI2012A19_Numbers.pde
// Exemples de déclarations et d'opérations sur des variables numériques.

// 1. déclaration et initialisation de variables numériques entières (int)
int a = 1;
int b = 2;
int c = 3;

println("a = " + a);
println("b = " + b);
println("c = " + c);

// 2. déclaration et initialisation de variables numériques réelles à simple précision (float)
float d = 1.0f;
float e = 2.5f;

println("d = " + d);
println("e = " + e);

// remarquez le 'f' en suffixe de la valeur
// si le 'f' est absent, le nombre sera interprété comme un nombre réel à double précision (double)
// le résultat sera le même dans ce cas-ci puisque la valeur (double) sera convertie en (float) lors de l'affectation (=)
// en voici une démonstration, par l'assignation d'une nouvelle valeur (double) dans les deux mêmes variables de type (float)

d = 1.0;
e = 2.5;

println("d = " + d);
println("e = " + e);

// dans ce cas simple, le résultat affiché dans la console sera exactement le même
// cependant il y a une perte de précision qui pourrait être difficile à détecter dans des cas plus complexes
// la morale est qu'il est préférable d'être explicite sur le type des nombres réels sous forme littérale, même si c'est facultatif
// c'est pourquoi le 'f' sera toujours présent dans mes exemples pour les valeurs littérales des nombres réels à simple précision (float)

// 3. déclaration et initialisation de variables numériques réelles à double précision (double)
double f = 1.0;
double g = 2.5;

println("f = " + f);
println("g = " + g);

// 4. déclaration de variables numériques non initialisées
// elles vont servir à stocker le résultat des opérations des étapes suivantes
int iResult;
float fResult;
double dResult;

// si elles n'étaient pas en commentaire, les trois instructions suivantes causeraient cette erreur avec Processing :
// 'The local variable ___ may not have been initialized'
// il faut donc en principe soit initialiser les variables lors de la déclaration,
// ou sinon le faire dans une instruction subséquente, comme dans ce cas-ci (ex. ligne 60 pour iResult)

// println(iResult);
// println(fResult);
// println(dResult);

// 5. opérateur d'addition (+) entre deux variables numériques entières
// (int) + (int) = (int)
iResult = a + b;
println("a + b = " + iResult);

// 6. opérateur d'addition (+) entre deux variables numériques réelles
// (float) + (float) = (float)
fResult = d + e;
println("d + e = " + fResult);

// 7. opérateur d'addition (+) entre une variable numérique entière et une réelle
// (int) + (float) = (float)
fResult = a + d;
println("a + d = " + fResult);

// 8. opérateur d'addition (+) entre une variable numérique une réelle à simple précision et une à double précision
// (float) + (double) = (double)
dResult = e + f;
println("e + f = " + dResult);

// 9. opérateur de soustraction (-) entre deux variables numériques entières
// (int) - (int) = (int)
iResult = b - a;
println("b - a = " + iResult);

// 10. opérateur de multiplication (*) entre deux variables numériques entières
// (int) * (int) = (int)
iResult = a * b;
println("a * b = " + iResult);

// 11. opérateur de multiplication (*) entre une variable numérique entière et une réelle
// (int) * (float) = (float)
fResult = a * e;
println("a * e = " + fResult);

// 12. opérateur de division (/) entre deux variables numériques entières (retourne la partie entière)
// (int) / (int) = (int)
iResult = b / a;
println("b / a = " + iResult);

// 13. opérateur de modulo (%) entre deux variables numériques entières (retourne le reste de la division)
// (int) % (int) = (int)
iResult = b % a;
println("b % a = " + iResult);

// 14. opérateur de division (/) entre une variable numérique réelle et une entière
// (float) / (int) = (float)
fResult = d / a;
println("d / a = " + fResult);

// 15. opérateur de modulo (%) entre une variable numérique entière et une réelle
// (int) % (float) = (float)
fResult = b % d;
println("b % d = " + fResult);

// 16. préséance des opérateurs : la multiplication (*) et la division (/) ont priorité sur l'addition (+) et la soustraction (-)
fResult = a + b * d;
println("a + b * d = " + fResult);

// 17. préséance des termes entre parenthèses ouvrante '(' et fermante ')'
fResult = (a + b) * c;
println("(a + b) * c = " + fResult);

// 18. préséance des termes entre parenthèses ouvrante '(' et fermante ')'
fResult = a + (b * d);
println("a + (b * d) = " + fResult);

// 19. constante numérique (les constantes sont parfois écrites en majuscule, par convention, mais c'est facultatif)
final float PHI = 1.618;
println("PHI = "+ PHI);

// si elle n'était pas en commentaire, l'instruction suivante causerait une erreur, car une variable 'final' ne peut plus être modifiée
// PHI = 0.0f;

// 20. constantes numériques prédéfinies (valeur de du nombre pi, une constante trigonométrique)
final double valueOfPi = PI;
final double valueOfHalfPi = HALF_PI;
println("PI = "+ valueOfPi);
println("HALF_PI = " + valueOfHalfPi);

// si elles n'étaient pas en commentaire, les deux instructions suivantes causeraient une erreur, car PI et HALF_PI sont des constantes prédéfinies
// PI = 0.0f;
// HALF_PI = 0.0f;
