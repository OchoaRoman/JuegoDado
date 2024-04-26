PImage naveImg;
PImage asteroidImg;
PImage balaImg;
PImage fondoImg;
PImage enemigoImg;
Enemigo enemigo;
Nave nave;
ArrayList<Asteroide> asteroides;
ArrayList<Bala> balas;

void setup() {
  size(850, 478);
  fondoImg = loadImage("fondo.jpg");
  naveImg = loadImage("nave.png");
  naveImg.resize(70, 70);
  asteroidImg = loadImage("asteroide.png");
  asteroidImg.resize(50, 50);
  balaImg = loadImage("bala.png");
  balaImg.resize(20, 20);
  enemigoImg = loadImage("enemigo.png");
  enemigoImg.resize(70, 70);
  nave = new Nave(width/2, height/2, 3, naveImg);
  asteroides = new ArrayList<Asteroide>();
  balas = new ArrayList<Bala>();
  enemigo = new Enemigo(random(width), -50, random(1, 3), enemigoImg);
}

void draw() {
  background(fondoImg);
  nave.display();
  nave.mover();
  enemigo.display();
  enemigo.mover();
  
  for (Asteroide asteroide : asteroides) {
    asteroide.display(); // Cambiar "mostrar()" a "display()"
    asteroide.mover();
    if (nave.impacto(asteroide)) {
      println("¡Game over!");
      noLoop();
    }
  }
  for (Bala bala : balas) {
    bala.display(); // Cambiar "mostrar()" a "display()"
    bala.mover();
  }
  
  
  if (frameCount % 60 == 0) {
    asteroides.add(new Asteroide(random(width), -50, random(1, 3), asteroidImg));
  }
  
  for (int i = balas.size()-1; i >= 0; i--) {
    Bala bala = balas.get(i);
    if (bala.salir()) {
      balas.remove(i);
    } else {
      for (int j = asteroides.size()-1; j >= 0; j--) {
        Asteroide asteroide = asteroides.get(j);
        if (bala.impacto(asteroide)) {
          balas.remove(i);
          asteroides.remove(j);
          break;
        }
      }
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    balas.add(new Bala(nave.x, nave.y, 5, balaImg));
  }
}
