class Circle extends Shape {
  //Varibles
  //
  //Static Varibles
  // static int ballWidthStart, ballHeightStart, ballDiameter;
  //
  //Constuctor
  Circle(float x, float y, float w, float h) {
    super(x, y, w, h); 
  }//End Constuctor
  //
  void draw() {
    ellipse(x, y, w, h);
    step();
  }//End draw
  //
  //
  void step() {
    y++;
    x--;
  }
  //
}//End class Circle
