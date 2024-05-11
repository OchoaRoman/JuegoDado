GameObject[] objetos;
ArrayList<Integer> resultados;
boolean juegoFinalizado;
public void setup() {
  size(600, 400);
  objetos = new GameObject[2];
  objetos[0] = new Tablero(width/2, height/2);
  objetos[1] = new Dado(width/2, height/2);
  resultados = new ArrayList<Integer>();
  juegoFinalizado = false;
}
public void draw() {
  objetos[0].display();
  if (!juegoFinalizado) {
    objetos[1].display();
  } else {
    mostrarResultados();
  }
}
public void mousePressed() {
  if (!juegoFinalizado) {
    if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
      ((Dado)objetos[1]).lanzar();
      resultados.add(((Dado)objetos[1]).valor);
    }
  }
}

public void keyPressed() {
  if (key == ' ') {
    juegoFinalizado = true;
  }
}
public void mostrarResultados() {
  int columna = 0;
  int fila = 0;
  for (int i = 0; i < resultados.size(); i++) {
    if (columna >= 4) {
      columna = 0;
      fila++;
    }
    if (fila >= 8) {
      break;
    }
    textAlign(LEFT, TOP);
    textSize(20);
    fill(0);
    text(resultados.get(i), columna * 100, fila * 100);
    columna++;
  }
}
