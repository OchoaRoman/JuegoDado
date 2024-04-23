class Dado extends GameObject {
  int valor;
  String textoValor;
  PVector textoPosicion;

  Dado(float x, float y) {
    super(x, y);
    valor = 1; // Valor inicial
    textoValor = "Uno"; // Inicialmente mostramos "Uno"
    // Calcular la posición del texto en la parte superior derecha del programa
    textoPosicion = new PVector(width - 20, 20);
  }

  void display() {
    // Cambiar el color de relleno a rojo
    fill(255, 0, 0); // Rojo
    // Dibujar el dado
    rectMode(CENTER);
    rect(position.x, position.y, 100, 100);
    // Mostrar el texto del valor en la parte superior derecha
    textAlign(RIGHT, TOP);
    textSize(20);
    fill(0);
    text(textoValor, textoPosicion.x, textoPosicion.y);
    // Mostrar los puntos del dado
    mostrarPuntos();
  }

  void mostrarPuntos() {
    // Calcular la posición de los puntos
    float radio = 8;
    float offset = 25; // Distancia desde el centro del dado al centro de los puntos
    float centroX = position.x;
    float centroY = position.y;
    fill(0);
    // Dibujar los puntos basados en el valor del dado
    switch (valor) {
      case 1:
        ellipse(centroX, centroY, radio * 2, radio * 2); // Punto central
        break;
      case 2:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2); // Punto superior izquierdo
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2); // Punto inferior derecho
        break;
      case 3:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2); // Punto superior izquierdo
        ellipse(centroX, centroY, radio * 2, radio * 2); // Punto central
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2); // Punto inferior derecho
        break;
      case 4:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2); // Punto superior izquierdo
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2); // Punto superior derecho
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2); // Punto inferior izquierdo
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2); // Punto inferior derecho
        break;
      case 5:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2); // Punto superior izquierdo
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2); // Punto superior derecho
        ellipse(centroX, centroY, radio * 2, radio * 2); // Punto central
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2); // Punto inferior izquierdo
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2); // Punto inferior derecho
        break;
      case 6:
        ellipse(centroX - offset, centroY - offset, radio * 2, radio * 2); // Punto superior izquierdo
        ellipse(centroX + offset, centroY - offset, radio * 2, radio * 2); // Punto superior derecho
        ellipse(centroX - offset, centroY, radio * 2, radio * 2); // Punto medio izquierdo
        ellipse(centroX + offset, centroY, radio * 2, radio * 2); // Punto medio derecho
        ellipse(centroX - offset, centroY + offset, radio * 2, radio * 2); // Punto inferior izquierdo
        ellipse(centroX + offset, centroY + offset, radio * 2, radio * 2); // Punto inferior derecho
        break;
    }
  }

  void lanzar() {
    valor = int(random(1, 7)); // Generar número aleatorio entre 1 y 6
    // Actualizar el texto del valor basado en el número obtenido
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
