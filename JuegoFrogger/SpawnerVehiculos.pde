class SpawnerVehicles extends GameObject {
    private ArrayList<Vehicle> vehicles; 
    private float spawnRate;
    
    public SpawnerVehicles(float rate) {
        super(new PVector(0, 0), 0, 0);
        vehicles = new ArrayList<Vehicle>();
        spawnRate = rate;
    }
    
    public void spawnVehicle() {
        float yPos = random(height - 30);
        float speed = random(1, 3);
        Vehicle vehicle = new Vehicle(-50, yPos, 50, 30, speed);
        vehicles.add(vehicle);
    } 
    
    public void update() {
        for (int i = vehicles.size() - 1; i >= 0; i--) {
            Vehicle v = vehicles.get(i);
            v.move();
            v.display();
            if (v.position.x > width) {
                vehicles.remove(i);
            }
        }
        if (frameCount % spawnRate == 0) {
            spawnVehicle();
        }
    }
    
    public void display() {
    }
}
