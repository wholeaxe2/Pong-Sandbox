abstract class Shape {
  //Varibles
  float x;
  float y;
  float w;
  float h;

  //Constuctor
  Shape(float xParameter, float yParameter, float wParameter, float hParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.w = wParameter;
    this.h = hParameter;
  }//End Constuctor

  abstract void draw();
}//End class Shape
