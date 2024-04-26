class Bala implements IDisplayable, IMoveable {
  float x, y;
  float velocidad;
  PImage img;
  Bala(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }
  void display() {
    image(img, x, y);
  }
  void mover() {
    y -= velocidad;
  }
  boolean salir() {
    return (y < 0);
  }
  boolean impacto(Asteroide asteroide) {
    float d = dist(x + img.width/2, y + img.height/2, asteroide.x + asteroide.img.width/2, asteroide.y + asteroide.img.height/2);
    return (d < img.width/2 + asteroide.img.width/2);
  }
}
