class Bala implements IDisplayable, IMoveable {
  private float x, y;
  private float velocidad;
  private PImage img;

  public Bala(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
    y -= velocidad;
  }

  public boolean salir() {
    return (y < 0);
  }

  public boolean impacto(Asteroide asteroide) {
    float d = dist(x + img.width/2, y + img.height/2, asteroide.x + asteroide.img.width/2, asteroide.y + asteroide.img.height/2);
    return (d < img.width/2 + asteroide.img.width/2);
  }
}
