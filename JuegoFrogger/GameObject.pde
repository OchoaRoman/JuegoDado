abstract class GameObject {
    protected PVector position;
    protected int width, height;    
    public GameObject(PVector position, int w, int h) {
        this.position = position;
        this.width = w;
        this.height = h;
    }
    abstract void display();
}
