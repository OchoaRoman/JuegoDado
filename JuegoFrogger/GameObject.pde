abstract class GameObject {
  PVector position;
  int width, height;

  GameObject(float x, float y, int w, int h) {
    position = new PVector(x, y);
    width = w;
    height = h;
  }
  abstract void display();
}
