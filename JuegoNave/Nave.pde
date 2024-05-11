class Nave implements IDisplayable, IMoveable, IController {
  protected float x, y;
  protected float velocidad;
  protected PImage img;

  public Nave(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
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
  
  public boolean impacto(Asteroide asteroide) {
    float d = dist(x + img.width/2, y + img.height/2, asteroide.x + asteroide.img.width/2, asteroide.y + asteroide.img.height/2);
    return (d < img.width/2 + asteroide.img.width/2);
  }
  public void readCommand() {
  }
}
