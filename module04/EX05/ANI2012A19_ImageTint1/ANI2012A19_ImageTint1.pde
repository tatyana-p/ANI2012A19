// ANI2012A19_ImageTint1.pde
// Exemple où une teinte est appliquée sur une image.

// paramètres
String file = "winter.jpg";

int tintRed   = 255;
int tintGreen = 225;
int tintBlue  = 90;
int tintAlpha = 255;

// variable
PImage img;

void setup()
{
  size(640, 505);
  noLoop();

  // chargement de l'image en mémoire
  img = loadImage(file);

  // appliquer la teinte
  tint(tintRed, tintGreen, tintBlue, tintAlpha);
}

void draw()
{
  // afficher l'image teintée
  image(img, 0, 0);
}
