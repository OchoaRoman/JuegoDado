private PImage naveImg;
private PImage asteroidImg;
private PImage balaImg;
private PImage fondoImg;
private PImage enemigoImg;
private Enemigo enemigo;
private Nave nave;
private ArrayList<Asteroide> asteroides;
private ArrayList<Bala> balas;

public void setup() {
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
    nave = new Nave(new PVector(width/2, height/2), 3, naveImg);
    asteroides = new ArrayList<Asteroide>();
    balas = new ArrayList<Bala>();
    enemigo = new Enemigo(new PVector(random(width), -50), random(1, 3), enemigoImg);
}

public void draw() {
    background(fondoImg);
    nave.display();
    nave.mover();
    enemigo.display();
    enemigo.mover();

    for (Asteroide asteroide : asteroides) {
        asteroide.display();
        asteroide.mover();
        if (nave.impacto(asteroide)) {
            println("¡Game over!");
            noLoop();
        }
    }
    for (Bala bala : balas) {
        bala.display();
        bala.mover();
    }

    if (frameCount % 60 == 0) {
        asteroides.add(new Asteroide(new PVector(random(width), -50), random(1, 3), asteroidImg));
    }

    for (int i = balas.size() - 1; i >= 0; i--) {
        Bala bala = balas.get(i);
        if (bala.salir()) {
            balas.remove(i);
        } else {
            for (int j = asteroides.size() - 1; j >= 0; j--) {
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

public void keyPressed() {
    if (key == ' ') {
      balas.add(new Bala(new PVector(nave.position.x, nave.position.y), 5, balaImg));
    }
}
