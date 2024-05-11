abstract class GameObject {
  protected PVector position;
  protected int width, height;
  public GameObject(float x, float y, int w, int h) {
    position = new PVector(x, y);
    width = w;
    height = h;
  }  
  abstract void display();
}
