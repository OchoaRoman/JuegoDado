class Enemigo implements IDisplayable, IMoveable {
  private float x, y;
  private float velocidad;
  private PImage img;

  public Enemigo(float x, float y, float velocidad, PImage img) {
    this.x = x;
    this.y = y;
    this.velocidad = velocidad;
    this.img = img;
  }

  public void display() {
    image(img, x, y);
  }

  public void mover() {
    y += velocidad;
    if (y > height) {
      y = -50;
      x = random(width);
    }
  }
}
