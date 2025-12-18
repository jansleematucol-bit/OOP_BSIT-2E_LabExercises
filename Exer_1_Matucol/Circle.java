public class Circle extends Shape{

    private float radius;
    final float PI = 3.15f;

    public Circle(float radius){
    super();
    this.radius = radius;
    }

    public float calculateArea(){
     float Carea = PI * (radius*radius);
     return Carea;
    }   

    public String displayInfo;

	public void setRadius(float f) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'setRadius'");
	}
    return "The area of a circle with radius" + this.radius + "is" + this.calculateArea();
}