// ANI2012A19_ImageExport.pde
// Exportation du contenu de la fenêtre d'affichage dans différents types de format de fichier image (.tiff, .jpg, .png)
// et exportation de plusieurs frames consécutifs dans une séquence de fichiers numérotés.
// Les images sont exportées dans le répertoire du script principal du programme.

void setup()
{
  size(512, 512);

  // une mise à jour par seconde
  frameRate(1);

  // alignement du texte
  textAlign(CENTER, CENTER);

  // taille du texte
  textSize(128);
}

void draw()
{
  // affichage minimaliste (numéro du frame courant)
  background(64);
  text(frameCount, width / 2.0f, height / 2.0f);

  if (frameCount == 1)
  {
    // exporter un fichier image dans le format par défaut (.tiff)
    save("render");
  }

  if (frameCount == 2)
  {
    // exporter un fichier image dans le format .jpg
    save("render.jpg");
  }

  if (frameCount == 3)
  {
    // exporter un fichier image dans le format .png (format recommandé pour la plupart des besoins)
    save("render.png");
  }

  if (frameCount == 4)
  {
    // exporter un fichier image avec le caractère # dans le nom
    saveFrame("render#.png");
  }

  if (frameCount >= 5)
  {
    // exporter un fichier image avec un numéro séquentiel (fonctionne avec ##, ### ou ####)
    saveFrame("render##.png");
  }

  println("frame " + frameCount);

  // arrêter les mises à jour après un certain nombre de frames
  if (frameCount >= 10)
    noLoop();
}
