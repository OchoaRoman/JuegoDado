class Nave implements IDisplayable, IMoveable, IController {
    protected PVector position;
    protected float velocidad;
    protected PImage img;

    public Nave(PVector position, float velocidad, PImage img) {
        this.position = position.copy();
        this.velocidad = velocidad;
        this.img = img;
    }

    public void display() {
        image(img, position.x, position.y);
    }

    public void mover() {
        if (keyPressed) {
            if (key == 'a' || key == 'A') {
                position.x -= velocidad;
            }
            if (key == 'd' || key == 'D') {
                position.x += velocidad;
            }
            if (key == 'w' || key == 'W') {
                position.y -= velocidad;
            }
            if (key == 's' || key == 'S') {
                position.y += velocidad;
            }
        }
        position.x = constrain(position.x, 0, width - img.width);
        position.y = constrain(position.y, 0, height - img.height);
    }
  
    public boolean impacto(Asteroide asteroide) {
        float d = dist(position.x + img.width/2, position.y + img.height/2, asteroide.position.x + asteroide.img.width/2, asteroide.position.y + asteroide.img.height/2);
        return (d < img.width/2 + asteroide.img.width/2);
    }
  
    public void readCommand() {
    }
}
