class GameObject implements IDisplayable {
    protected PVector position;
    protected PImage img;
    protected PApplet applet;

    public GameObject(PApplet applet, PVector position, PImage img) {
        this.applet = applet;
        this.position = position.copy();
        this.img = img;
    }

    public void display() {
        applet.image(img, position.x, position.y);
    }
}
