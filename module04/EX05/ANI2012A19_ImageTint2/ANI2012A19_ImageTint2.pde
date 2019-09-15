// ANI2012A19_ImageTint2.pde
// Exemple où quatre différentes teintes sont appliquées sur une même image.

// paramètres
String file = "winter.jpg";

// différentes teintes
color c1 = color(255, 223, 91 , 255);
color c2 = color(223, 91 , 255, 255);
color c3 = color(255, 91 , 127, 255);
color c4 = color(91 , 255, 127, 255);

// variable
PImage img;

void setup()
{
  size(640, 505);

  // chargement de l'image en mémoire
  img = loadImage(file);
}

void draw()
{
  // image du coin supérieur gauche
  tint(c1);
  image(img, 0, 0, width/2, height/2);

  // image du coin supérieur droit
  tint(c2);
  image(img, width/2, 0, width/2, height/2);

  // image du coin inférieur gauche
  tint(c3);
  image(img, 0, height/2, width/2, height/2);

  // image du coin inférieur droit
  tint(c4);
  image(img, width/2, height/2, width/2, height/2);
}
