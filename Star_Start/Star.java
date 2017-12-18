class Star {
  private float x;
  private float y;
  private float radius; 
  
  public static int starCount = 250;
  public static int maxRadius = 20;

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  }

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
}