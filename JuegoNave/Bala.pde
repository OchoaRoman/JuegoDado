class Bala implements IDisplayable, IMoveable {
    private PVector position;
    private float velocidad;
    private PImage img;

    public Bala(PVector position, float velocidad, PImage img) {
        this.position = position.copy();
        this.velocidad = velocidad;
        this.img = img;
    }

    public void display() {
        image(img, position.x, position.y);
    }

    public void mover() {
        position.y -= velocidad;
    }

    public boolean salir() {
        return (position.y < 0);
    }

    public boolean impacto(Asteroide asteroide) {
        float d = dist(position.x + img.width/2, position.y + img.height/2, asteroide.position.x + asteroide.img.width/2, asteroide.position.y + asteroide.img.height/2);
        return (d < img.width/2 + asteroide.img.width/2);
    }
}

