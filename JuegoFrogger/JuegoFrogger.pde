Player player;
SpawnerVehicles spawner;
  public void setupJuegoFrogger() {
  player = new Player(100, 100, 30, 30);
  spawner = new SpawnerVehicles(50);
}
  public void setup() {
    size(400,400);
    setupJuegoFrogger();
  }
  public void draw() {
    background(255);
    player.display();
    spawner.update();
  }
