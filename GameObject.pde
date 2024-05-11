abstract class GameObject {
  protected PVector position;

  public GameObject(float x, float y) {
    position = new PVector(x, y);
  }

  abstract void display();
}
