Player player;
SpawnerVehicles spawner;
void setupJuegoFrogger() {
  player = new Player(100, 100, 30, 30);
  spawner = new SpawnerVehicles(60); // Ajusta la tasa de aparición según sea necesario
}
void setup() {
  size(400, 400);
  setupJuegoFrogger(); // Inicializa todas las instancias para el juego de Frogger
}
void draw() {
  background(255);
  player.display();
  spawner.update();
}
