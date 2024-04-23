GameObject[] objetos;
ArrayList<Integer> resultados;
boolean juegoFinalizado;

void setup() {
  size(600, 400);
  objetos = new GameObject[2];
  objetos[0] = new Tablero(width/2, height/2);
  objetos[1] = new Dado(width/2, height/2);
  resultados = new ArrayList<Integer>();
  juegoFinalizado = false;
}

void draw() {
  objetos[0].display(); // Mostrar tablero

  if (!juegoFinalizado) {
    objetos[1].display(); // Mostrar dado
  } else {
    // Dibujar resultados al finalizar
    mostrarResultados();
  }
}

void mousePressed() {
  if (!juegoFinalizado) {
    if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
      // Lanzar el dado al presionar el mouse
      ((Dado)objetos[1]).lanzar();
      resultados.add(((Dado)objetos[1]).valor);
    }
  }
}

void keyPressed() {
  if (key == ' ') { // Presionar espacio para finalizar el juego
    juegoFinalizado = true;
  }
}

void mostrarResultados() {
  // Dibujar los resultados por consola
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
