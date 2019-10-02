// ANI2012A19_Audio1_File.pde
// Exemple où un son est chargé en mémoire à partir d'un fichier externe (.mp3).
// Le fichier à importer doit se trouver dans le répertoire /data qui accompagne le script principal.

// importer la librairie audio de Processing
import processing.sound.*;

// instance de la classe qui permet de charger en mémoire et de jouer le fichier audio
SoundFile pianoChord;

void setup()
{
  size(640, 360);
  noLoop();

  // charger le fichier audio en mémoire
  pianoChord = new SoundFile(this, "chord.mp3");
}

void draw()
{
  textSize(24);
  textAlign(CENTER, CENTER);

  text("Presser une touche pour jouer le son.", width / 2.0f, height / 2.0f);
}

void keyReleased()
{
  // jouer le son
  pianoChord.play();
}
