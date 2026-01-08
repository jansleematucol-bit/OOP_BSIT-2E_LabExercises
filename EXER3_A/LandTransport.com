public abstract class LandTransport extends Transportation {
    protected int wheels;

    public LandTransport(String brand, String model, int year, double maxSpeed,
                         double engineCapacity, String fuelType, int wheels) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType);
        this.wheels = wheels;
    }

    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Wheels: " + wheels);
    }
}

// Subclasses
class Truck extends LandTransport {
    private double loadCapacity;

    public Truck(String brand, String model, int year, double maxSpeed,
                 double engineCapacity, String fuelType, int wheels, double loadCapacity) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, wheels);
        this.loadCapacity = loadCapacity;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is transporting heavy loads.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== TRUCK INFO ===");
        super.showInfo();
        System.out.println("Load Capacity: " + loadCapacity + " tons");
    }
}

class SUV extends LandTransport {
    private int seatingCapacity;

    public SUV(String brand, String model, int year, double maxSpeed,
               double engineCapacity, String fuelType, int wheels, int seatingCapacity) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, wheels);
        this.seatingCapacity = seatingCapacity;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is cruising on the road.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== SUV INFO ===");
        super.showInfo();
        System.out.println("Seating Capacity: " + seatingCapacity);
    }
}

class Tricycle extends LandTransport {
    private String passengerType;
    private boolean hasRoof;

    public Tricycle(String brand, String model, int year, double maxSpeed,
                    double engineCapacity, String fuelType, int wheels,
                    String passengerType, boolean hasRoof) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, wheels);
        this.passengerType = passengerType;
        this.hasRoof = hasRoof;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is driving on small roads.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== TRICYCLE INFO ===");
        super.showInfo();
        System.out.println("Passenger Type: " + passengerType);
        System.out.println("Has Roof: " + (hasRoof ? "Yes" : "No"));
    }
}

class Motorcycle extends LandTransport {
    private String type;

    public Motorcycle(String brand, String model, int year, double maxSpeed,
                      double engineCapacity, String fuelType, int wheels, String type) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, wheels);
        this.type = type;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is speeding down the highway.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== MOTORCYCLE INFO ===");
        super.showInfo();
        System.out.println("Type: " + type);
    }
}

class Kariton extends LandTransport {
    private String material;
    private boolean motorized;

    public Kariton(String brand, String model, int year, double maxSpeed,
                   double engineCapacity, String fuelType, int wheels,
                   String material, boolean motorized) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, wheels);
        this.material = material;
        this.motorized = motorized;
    }

    @Override
    public void move() {
    System.out.println("Kariton is being pushed.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== KARITON INFO ===");
        super.showInfo();
        System.out.println("Material: " + material);
        System.out.println("Motorized: " + (motorized ? "Yes" : "No"));
    }
}
