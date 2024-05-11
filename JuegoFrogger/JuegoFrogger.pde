Player player;
SpawnerVehicles spawner;
public void setupJuegoFrogger() {
    PVector playerPosition = new PVector(100, 100);
    player = new Player(playerPosition, 30, 30);
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
