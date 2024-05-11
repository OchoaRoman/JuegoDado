class Dado extends GameObject {
  private int valor;
  private PImage[] imagenes;
  private String textoValor;
  private PVector textoPosicion;

  public Dado(float x, float y) {
    super(x, y);
    valor = 1;
    textoValor = "Uno"; // Inicializamos textoValor con un valor por defecto
    textoPosicion = new PVector(width - 20, 20);
    imagenes = new PImage[6];
    for (int i = 0; i < 6; i++) {
      imagenes[i] = loadImage("dado_" + (i+1) + ".png");
    }
  }

  public void display() {
    imageMode(CENTER);
    image(imagenes[valor - 1], position.x, position.y, 100, 100);
    
    textAlign(RIGHT, TOP);
    textSize(20);
    fill(0);
    text(textoValor, textoPosicion.x, textoPosicion.y);
  }

  public void lanzar() {
    valor = int(random(1, 7));
    switch (valor) {
      case 1:
        textoValor = "Uno";
        break;
      case 2:
        textoValor = "Dos";
        break;
      case 3:
        textoValor = "Tres";
        break;
      case 4:
        textoValor = "Cuatro";
        break;
      case 5:
        textoValor = "Cinco";
        break;
      case 6:
        textoValor = "Seis";
        break;
    }
  }
}
