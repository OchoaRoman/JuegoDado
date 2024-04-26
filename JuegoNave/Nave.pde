class Nave implements IDisplayable, IMoveable, IController {
  float x, y;
  float velocidad;
  PImage img;
  
  Nave(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }
  
  void display() {
    image(img, x, y);
  }
  
  void mover() {
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        x -= velocidad;
      }
      if (key == 'd' || key == 'D') {
        x += velocidad;
      }
      if (key == 'w' || key == 'W') {
        y -= velocidad;
      }
      if (key == 's' || key == 'S') {
        y += velocidad;
      }
    }
    x = constrain(x, 0, width-img.width);
    y = constrain(y, 0, height-img.height);
  }
  
  boolean impacto(Asteroide asteroide) {
    float d = dist(x + img.width/2, y + img.height/2, asteroide.x + asteroide.img.width/2, asteroide.y + asteroide.img.height/2);
    return (d < img.width/2 + asteroide.img.width/2);
  }
  
  void readCommand() {
    // Método para leer comandos
  }
}
