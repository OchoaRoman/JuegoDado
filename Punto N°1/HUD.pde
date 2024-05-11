class HUD {
  private int vidas;
  
  public HUD(int vidas) {
    this.vidas = vidas;
  }
  
  public void actualizarVidas(int nuevasVidas) {
    this.vidas = nuevasVidas;
  }
  
  public void display() {
    fill(255);
    textSize(20);
    textAlign(LEFT, TOP);
    text("Vidas: " + vidas, 20, 20);
  }
}
