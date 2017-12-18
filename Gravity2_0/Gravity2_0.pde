Particle[] particles = new Particle[50];


void setup() {
  size(500, 500);
  ellipseMode(CENTER);
  
  for(int i=0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background (0); //Black
  
  for(int i=0; i < particles.length; i++) {
    particles[i].step();// Calling the draw functions
  } 
  
  for(int i=0; i < particles.length; i++) {
    particles[i].draw();// Calling the draw functions
  } 
  
  for(int i=0; i < particles.length; i++) {
    particles[i].EdgeDetection();// Calling the draw functions
  } 
}

void mousePressed() {
  for(int i=0; i < particles.length; i++) {
    particles[i].reset();
  }
  
}