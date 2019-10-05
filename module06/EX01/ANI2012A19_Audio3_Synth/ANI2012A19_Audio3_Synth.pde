// ANI2012A19_Audio3_Synth.pde
// Exemple d'un programme qui simule un synthétiseur qui peut de générer des notes de musiques.
// Le synthétiseur peut jouer les notes d'une gamme en DO majeur avec les touches de 1 à 8 du clavier.
// Le volume et la panoramique des notes jouées par le synthétiseur peuvent être ajustés avec les flèches du clavier.

import processing.sound.*;

// paramètres

float offsetAmplitude = 0.1f;
float offsetPanning = 0.2f;

// variables

SinOsc oscillator;

float amplitude;
float frequency;
float panning;

void setup()
{
  size(640, 360);
  noLoop();

  // création d'un oscillateur basé sur un sinus
  oscillator = new SinOsc(this);

  // volume de la note (intervalle normalisé entre [0, 1])
  amplitude = 0.618f;

  // fréquence de la note (ex. 440 Hertz = le 'LA' du 4e octave)
  frequency = 440.0f;

  // position panoramique de gauche à droite dans l'intervalle [-1, 1]
  panning = 0;
}

void draw()
{
  textSize(24);
  textAlign(CENTER, CENTER);

  text("Presser une touche de 1 à 8 pour jouer une note.", width / 2.0f, height / 2.0f);
}

// fonction qui permet de jouer une note certaine fréquence
void playNote(float f)
{
  frequency = f;

  oscillator.freq(frequency);
  oscillator.amp(amplitude);
  oscillator.pan(panning);

  oscillator.play();
}

// fonction qui permet monter le volume
void volumeUp()
{
  amplitude += offsetAmplitude;

  if (amplitude > 1.0f)
    amplitude = 1.0f;

  oscillator.amp(amplitude);
}

// fonction qui permet baisser le volume
void volumeDown()
{
  amplitude -= offsetAmplitude;

  if (amplitude < 0.001f)
    amplitude = 0.001f;

  oscillator.amp(amplitude);
}

// fonction qui permet de changer la position panoramique vers la gauche
void panLeft()
{
  panning -= offsetPanning;

  if (panning < -1.0f)
    panning = -1.0f;

  oscillator.pan(panning);
}

// fonction qui permet de changer la position panoramique vers la droite
void panRight()
{
  panning += offsetPanning;

  if (panning > 1.0f)
    panning = 1.0f;

  oscillator.pan(panning);
}

// fonction qui permet de choisir une fréquence aléatoire
void randomFrequency()
{
  frequency = random(100.0f, 1000.0f);
  oscillator.freq(frequency);
}

void keyPressed()
{
  if (key == '1') // DO (4e octave)
    playNote(261.63f);
  if (key == '2') // RE
    playNote(293.66f);
  if (key == '3') // MI
    playNote(329.63f);
  if (key == '4') // FA
    playNote(349.23f);
  if (key == '5') // SOL
    playNote(392.00f);
  if (key == '6') // LA
    playNote(440.00f);
  if (key == '7') // SI
    playNote(493.88f);
  if (key == '8') // DO (5e octave)
    playNote(523.25f);

  if (keyCode == UP)
    volumeUp();
  if (keyCode == DOWN)
    volumeDown();

  if (keyCode == LEFT)
    panLeft();
  if (keyCode == RIGHT)
    panRight();

  if (keyCode == ' ')
    randomFrequency();
}
