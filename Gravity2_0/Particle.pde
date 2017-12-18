class Particle {
  float gravity = 0.25;
  float x = random(width);
  float y = random(height);
  float xSpeed = 20.0;
  float ySpeed = 20.0;
  float deltaX = random(-7, 7);
  float deltaY = random(-10, 5);
  float radius = random(5, 20);
  
  // Create a constructor, keyword "This"
  void reset() {
   x = mouseX;
   y = mouseY;
   xSpeed = 20.0;
   ySpeed = 20.0;
   deltaX = random(-7, 7);
   deltaY = random(-10, 5);
   radius = random(5, 20);
  }
  
  void step() {
    deltaY += gravity;
    x += deltaX;
    y += deltaY;
  }
  
   void EdgeDetection() {
     if(x+xSpeed < 0 || x+xSpeed > width) { // Ensures ball, while moving, does not leave the left or right side of the screen
        xSpeed *= -1;
      }
      if (y+ySpeed < 0 || y+ySpeed > height) { // Ensures ball, while moving, does not leave the top or botom of the screen
        ySpeed *= -1;
      }
  
      x += xSpeed;
      y += ySpeed;
 } // End of Edge Detection
  
  void draw () {
     //draw the ball
     fill (255, 0, 0);
     ellipse (x, y, radius, radius);
  }
}