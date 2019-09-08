// ANI2012A19_DrawStar.pde
// Dessine des polygones en forme d'étoile.

int side = 5;
float angle;
float offset;
float radius;
float centerX;
float centerY;
float positionX1;
float positionY1;
float positionX2;
float positionY2;

void setup()
{
  size(512, 512);

  strokeWeight(6);

  radius = width * 0.4f;
  centerX = width / 2.0f;
  centerY = height / 2.0f;
}

void draw()
{
  background(191);
  angle = radians(-90.0f);
  offset = radians(360.0f / side);

  for (int index = 0; index < side; ++index)
  {
    positionX1 = centerX + cos(angle) * radius;
    positionY1 = centerY + sin(angle) * radius;

    angle += offset * 2;

    positionX2 = centerX + cos(angle) * radius;
    positionY2 = centerY + sin(angle) * radius;

    line(positionX1, positionY1, positionX2, positionY2);
  }
}

void keyReleased()
{
  if (key == '1')
    side = 3;
  if (key == '2')
    side = 5;
  if (key == '3')
    side = 7;
  if (key == '4')
    side = 9;
  if (key == '5')
    side = 11;
  if (key == '6')
    side = 13;
  if (key == '7')
    side = 15;
  if (key == '8')
    side = 17;
  if (key == '9')
    side = 19;
  if (key == '0')
    side = 21;
}
