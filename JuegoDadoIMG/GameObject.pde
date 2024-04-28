abstract class GameObject {
  PVector position;

  GameObject(float x, float y) {
    position = new PVector(x, y);
  }

  abstract void display();
}
