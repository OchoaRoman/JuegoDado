class Player extends GameObject {
    public Player(PVector position, int w, int h) {
        super(position, w, h);
    }
    
    public void display() {
        fill(0, 255, 0);
        rect(position.x, position.y, width, height);
    }
}
