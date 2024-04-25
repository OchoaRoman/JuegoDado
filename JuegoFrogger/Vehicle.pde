class Vehicle extends GameObject {
  float velocidad;
  Vehicle(float x, float y, int w, int h, float s) {
    super(x, y, w, h);
    velocidad = s;
  }
  void display() {
    fill(255, 0, 0);
    rect(position.x, position.y, width, height);
  }
  void move() {
    position.x += velocidad;
  }
}
