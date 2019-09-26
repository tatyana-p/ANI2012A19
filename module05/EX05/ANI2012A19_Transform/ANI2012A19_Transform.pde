// ANI2012A19_Transform.pde
// Exemple de transformations géométriques appliquées sur une image (touches numériques 1 à 0).

// paramètres
float offsetX = 80.0f;
float offsetY = 80.0f;

float scaleX = 2.0f;
float scaleY = 2.0f;

float angleZ = PI / 4.0f; // (90 degrés en radians)

// variables
boolean isKeyPressed1 = false;
boolean isKeyPressed2 = false;
boolean isKeyPressed3 = false;
boolean isKeyPressed4 = false;
boolean isKeyPressed5 = false;
boolean isKeyPressed6 = false;
boolean isKeyPressed7 = false;
boolean isKeyPressed8 = false;
boolean isKeyPressed9 = false;
boolean isKeyPressed0 = false;

int matrixStackLevel;

PImage img;

void setup()
{
  size(512, 512);
  frameRate(60);

  imageMode(CENTER);

  img = loadImage("wintersmall.jpg");

  matrixStackLevel = 0;
}

void draw()
{
  background(63);

  // dessiner une instance de l'image avant transformation
  tint(255, 255, 255, 31);
  image(img, width/2, height/2);

  pushMatrix();

  if (isKeyPressed3)
  {
    tint(255, 0, 0);
    translate(offsetX, 0.0f);
  }
  if (isKeyPressed4)
  {
    tint(0, 255, 0);
    translate(0.0f, offsetY);
  }
  if (isKeyPressed5)
  {
    tint(255, 255, 0);
    translate(offsetX, offsetY);
  }
  if (isKeyPressed6)
  {
    tint(0, 0, 255);
    rotate(angleZ);
  }
  if (isKeyPressed7)
  {
    tint(0, 0, 255);
    rotate(-angleZ);
  }
  if (isKeyPressed8)
  {
    tint(255, 0, 0);
    scale(scaleX, 1.0f);
  }
  if (isKeyPressed9)
  {
    tint(0, 255, 0);
    scale(1.0f, scaleY);
  }
  if (isKeyPressed0)
  {
    tint(255, 255, 0);
    scale(1.0f / scaleX, 1.0f / scaleY);
  }

  // dessiner une instance de l'image après transformation
  image(img, width/2, height/2);

  popMatrix();

  textSize(18);
  textAlign(CENTER, CENTER);

  text("(Touches 0-9 du clavier)", width / 2.0f, height - height / 8.0f);
}

void keyPressed()
{
  if (key == '1')
  {
    isKeyPressed1 = true;
  }
  if (key == '2')
  {
    isKeyPressed2 = true;
  }
  if (key == '3')
  {
    isKeyPressed3 = true;
    println("translate(" + offsetX + ", 0)");
  }
  if (key == '4')
  {
    isKeyPressed4 = true;
    println("translate(0, " + offsetY + ")");
  }
  if (key == '5')
  {
    isKeyPressed5 = true;
    println("translate(" + offsetY + ", " + offsetY + ")");
  }
  if (key == '6')
  {
    isKeyPressed6 = true;
    println("rotate(" + degrees(angleZ) + ")");
  }
  if (key == '7')
  {
    isKeyPressed7 = true;
    println("rotate(" + degrees(-angleZ) + ")");
  }
  if (key == '8')
  {
    isKeyPressed8 = true;
    println("scale(" + scaleX + ", 0)");
  }
  if (key == '9')
  {
    isKeyPressed9 = true;
    println("scale(0, " + scaleY + ")");
  }
  if (key == '0')
  {
    isKeyPressed0 = true;
    println("scale(" + 1/scaleX + ", " + 1/scaleY + ")");
  }
}

void keyReleased()
{
  if (key == '1')
  {
    isKeyPressed1 = false;
    pushMatrix();
    matrixStackLevel++;
    println("push matrix, matrix stack level is now: " + matrixStackLevel);
  }
  if (key == '2')
  {
    if (matrixStackLevel > 0)
    {
      isKeyPressed2 = false;
      popMatrix();
      matrixStackLevel--;
      println("pop matrix, matrix stack level is now: " + matrixStackLevel);
    }
  }
  if (key == '3')
    isKeyPressed3 = false;
  if (key == '4')
    isKeyPressed4 = false;
  if (key == '5')
    isKeyPressed5 = false;
  if (key == '6')
    isKeyPressed6 = false;
  if (key == '7')
    isKeyPressed7 = false;
  if (key == '8')
    isKeyPressed8 = false;
  if (key == '9')
    isKeyPressed9 = false;
  if (key == '0')
    isKeyPressed0 = false;
}
