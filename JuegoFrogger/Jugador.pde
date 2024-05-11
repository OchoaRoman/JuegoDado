class Player extends GameObject {
  public Player(float x, float y, int w, int h) {
    super(x, y, w, h);
  }
  
  public void display() {
    fill(0, 255, 0);
    rect(position.x, position.y, width, height);
  }
}
