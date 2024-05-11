class Enemigo implements IDisplayable, IMoveable {
    private PVector position;
    private PVector velocidad;
    private PImage img;

    public Enemigo(PVector position, float velocidadY, PImage img) {
        this.position = position;
        this.velocidad = new PVector(0, velocidadY);
        this.img = img;
    }

    public void display() {
        image(img, position.x, position.y);
    }

    public void mover() {
        position.add(velocidad);
        if (position.y > height) {
            position.y = -50;
            position.x = random(width);
        }
    }
}
