class Asteroide implements IDisplayable, IMoveable {
    private PVector position;
    private PVector velocidad;
    private PImage img;

    public Asteroide(PVector position, float velocidad, PImage img) {
        this.position = position.copy();
        this.velocidad = new PVector(0, velocidad); // Establecemos la velocidad solo en la dirección y
        this.img = img;
    }

    public void display() {
        image(img, position.x, position.y);
    }

    public void mover() {
        position.add(velocidad);
        if (position.y > height) {
            position.y = -20;
            position.x = random(width);
        }
    }
}
