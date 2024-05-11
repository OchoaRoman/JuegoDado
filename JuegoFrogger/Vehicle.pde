class Vehicle extends GameObject {
    private float velocidad;
    
    public Vehicle(float x, float y, int w, int h, float s) {
        super(new PVector(x, y), w, h);
        velocidad = s;
    }
    
    public void display() {
        fill(255, 0, 0);
        rect(position.x, position.y, width, height);
    }
    
    public void move() {
        position.x += velocidad;
    }
}
