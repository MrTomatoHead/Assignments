private Star[] stars = new Star[Star.starCount];

public void setup() {
  size(500, 500);
  ellipseMode(CENTER);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(500), random(500), random(Star.maxRadius));
  }
  
  println("maxRadius" + Star.maxRadius);
  println("starCount" + Star.starCount);
}

public void draw() {

  background(0);

  for (int i = 0; i < stars.length; i++) {
    ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
  }
}

public void mouseClicked() {
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(500), random(500), random(Star.maxRadius));
  }
}