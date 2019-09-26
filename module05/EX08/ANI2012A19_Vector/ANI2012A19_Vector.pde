// ANI2012A19_Vector.pde
// Tests unitaires d'une classe de type vecteur 3D.

// paramètres
Vector v1 = new Vector(1.0f, 0.0f, 0.0f);
Vector v2 = new Vector(0.0f, 1.0f, 0.0f);
Vector v3 = new Vector(0.0f, 0.0f, 1.0f);

// variable
Vector result;

void setup()
{
  size(512, 512);
  noLoop();
  textAlign(CENTER, CENTER);
  textSize(32);

  result = new Vector();

  testVector();
}

void draw()
{
  text("Tests unitaires\nclasse Vector\n(voir résultats dans la console)", width/2, height/2);
}

void testVector()
{
  println("Vector class unit tests");

  // 1. afficher la valeur d'un vecteur dans la console
  v1.print("v1");
  v2.print("v2");
  v3.print("v3");

  // 2. addition de deux vecteurs
  result.set(1.0f, 0.0f, 0.0f);
  result.add(v1);
  result.print("addition");

  // 3. différence entre deux vecteurs
  result.set(1.0f, 0.0f, 0.0f);
  result.minus(v1);
  result.print("minus");

  // 4. magnitude (longueur) d'un vecteur
  println("magnitude = " + v1.magnitude());

  // 5. distance entre des vecteurs
  println("magnitude = " + v1.distance(v2));

  // 6. angle entre 2 vecteurs 3D
  println("angle between v1 and v2 = " + v1.angleBetween(v2));

  // 7. angle entre un vecteur et l'axe X (orientation dans un plan 2D)
  println("angle between v2 and X axis = " + v2.heading());

  // 8. produit scalaire entre deux vecteurs (retourne une mesure de la différence entre deux vecteurs)
  println("v1 dot v2 = " + v1.dot(v2));
  println("v2 dot v1 = " + v2.dot(v1));

  // 9. produit croisé entre deux vecteurs (retourne un vecteur perpendiculaire aux deux vecteurs)
  result = v1.cross(v2);
  result.print("v1 cross v2");

  result = v2.cross(v1);
  result.print("v2 cross v1");

  result = v1.cross(v2).cross(v3);
  result.print("v1 cross v2 cross v3");

  // 10. produit scalaire et produit croisé combinés ensemble
  println("v1 cross v2 dot v3 = " + v1.cross(v2).dot(v3));

  // 11. position aléatoire dans une boîte définie par 3 paramètres (largeur x hauteur x profondeur)
  result.randomize(1, 3, 10, true);
  result.print("randomize centered");

  result.randomize(1, 3, 10, false);
  result.print("randomize uncentered");
}
