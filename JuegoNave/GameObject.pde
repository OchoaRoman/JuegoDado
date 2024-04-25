class GameObject implements IDisplayable {
  PVector position;
  PImage img;
  PApplet applet;

  GameObject(PApplet applet, float x, float y, PImage img) {
    this.applet = applet;
    position = new PVector(x, y);
    this.img = img;
  }

  public void display() {
    applet.image(img, position.x, position.y);
  }
}
