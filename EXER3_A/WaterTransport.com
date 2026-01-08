public abstract class WaterTransport extends Transportation {
    protected String hullType;

    public WaterTransport(String brand, String model, int year, double maxSpeed,
                          double engineCapacity, String fuelType, String hullType) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType);
        this.hullType = hullType;
    }

    @Override
    public void showInfo() {
        super.showInfo();
        System.out.println("Hull Type: " + hullType);
    }
}

// Subclasses
class Boat extends WaterTransport {
    private int passengerCapacity;

    public Boat(String brand, String model, int year, double maxSpeed,
                double engineCapacity, String fuelType, String hullType, int passengerCapacity) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, hullType);
        this.passengerCapacity = passengerCapacity;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is sailing on water.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== BOAT INFO ===");
        super.showInfo();
        System.out.println("Passenger Capacity: " + passengerCapacity);
    }
}

class Ship extends WaterTransport {
    private double cargoCapacity;

    public Ship(String brand, String model, int year, double maxSpeed,
                double engineCapacity, String fuelType, String hullType, double cargoCapacity) {
        super(brand, model, year, maxSpeed, engineCapacity, fuelType, hullType);
        this.cargoCapacity = cargoCapacity;
    }

    @Override
    public void move() {
        System.out.println(brand + " " + model + " is navigating across the ocean.");
    }

    @Override
    public void showInfo() {
        System.out.println("=== SHIP INFO ===");
        super.showInfo();
        System.out.println("Cargo Capacity: " + cargoCapacity + " tons");
    }
}
