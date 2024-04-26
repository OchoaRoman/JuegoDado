class Asteroide implements IDisplayable, IMoveable {
  float x, y;
  float velocidad;
  PImage img;
  
  Asteroide(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }
  
  void display() {
    image(img, x, y);
  }
  
  void mover() {
    y += velocidad;
    if (y > height) {
      y = -20;
      x = random(width);
    }
  }
}
