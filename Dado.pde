class Dado extends GameObject {
  private int valor;
  private String textoValor;
  private PVector textoPosicion;
  
  public Dado(float x, float y) {
    super(x, y);
    valor = 1; 
    textoValor = "Uno"; 
    textoPosicion = new PVector(width - 20, 20);
  }

  public void display() {
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(position.x, position.y, 100, 100);
    textAlign(RIGHT, TOP);
    textSize(20);
    fill(0);
    text(textoValor, textoPosicion.x, textoPosicion.y);
    mostrarPuntos();
  }
  
  private void mostrarPuntos() {
    float radio = 8;
    float offset = 25;
    float centroX = position.x;
    float centroY = position.y;
    fill(0);
    switch (valor) {
      case 1:
        ellipse(centroX, centroY, radio * 2, radio * 2);
        break;
      case 2:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2);
        break;
      case 3:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX, centroY, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2);
        break;
      case 4:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2);
        break;
      case 5:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX, centroY, radio * 2, radio * 2);
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2);
        break;
      case 6:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2);
        ellipse(centroX - offset, centroY, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY, radio * 2, radio * 2);
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2);
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2);
        break;
    }
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
  
  public int getValor() {
    return valor;
  }
}
