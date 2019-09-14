// ANI2012A19_ImageImport.pde
// Importation d'un fichier image et affichage de trois instances de tailles différentes.
// Le fichier à importer doit se trouver dans le répertoire /data qui accompagne le script principal.

// paramètre
String file = "winter.jpg"; // nom du fichier sous forme littérale (chaîne de caractères)

// variable
PImage img; // classe de Processing pour les images

void setup()
{
  // les dimensions de la fenêtre d'affichage sont les dimensions d'origine de l'image
  size(640, 505);

  // mode où l'origine de l'image est dans le coin supérieur gauche
  imageMode(CORNER);

  // chargement du fichier
  img = loadImage(file);
}

void draw()
{
  // afficher l'image à l'origine de la scène avec sa taille d'origine
  image(img, 0, 0);

  // afficher l'image à nouveau avec la moitié de la taille de la fenêtre d'affichage
  image(img, 0, 0, width / 2.0f, height / 2.0f);

  // afficher l'image à nouveau au quart de la taille de la fenêtre d'affichage
  image(img, 0, 0, width / 4.0f, height / 4.0f);

  // une seule mise à jour
  noLoop();
}
