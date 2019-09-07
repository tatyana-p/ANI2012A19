// ANI2012A19_Structure1_Logic.pde
// Exemples de structures logiques.
// Code source du diaporama du module 2.
// Ce programme n'est pas exécutable.

// 1. exemple de structure logique (if + else)
if (condition)
  // branchement logique 1 (vrai)
else
  // branchement logique 2 (faux)


// 2. exemple de structure logique (if + else if + else)
if (condition1)
  // branchement logique 1
else if (condition2)
  // branchement logique 2
else
  // branchement logique 3


// 3. exemple de structure logique à branchements multiples (switch)
switch (condition)
{
  case valeur1:
    // branchement logique 1
    break;
  case valeur2:
    // branchement logique 2
    break;
    // autres branchements...
  default:
    // branchement par défaut
    break;
}


// 4. exemples d'assignations conditionnelles
int min = a < b ? a : b;
int abs = (a < 0) ? -a : a;
String str = isMoving ? "walk" : "idle";
