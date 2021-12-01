class Paddle {
  //Variables
  color colour;
  int paddleXLeft, paddleXRight, paddleYLeft, paddleYRight, paddleWidth, paddleHeight;
  int yMove; //Possible Easteregg to move paddles differently requires two vars
  boolean upLeft=false, downLeft=false, upRight=false, downRight=false;

  //Constructor, populates the variables
  Paddle (float width, float height) { //Passsing Geometry
    this.colour = color (int(random(100, 255)), int(random(50, 255)), int(random(175, 255)));
    paddleWidth = int(height*1/80); //no "this" thus no change ever
    paddleXRight = int(width*39/40) - paddleWidth;
    paddleXLeft = int(width*1/40);
    paddleHeight = int(height*1/4);
    this.paddleYLeft = int(height*1/2) - paddleHeight*1/2;
    this.paddleYRight = paddleYLeft; 
    this.upLeft = false;
    this.downLeft = false;
    this.upRight = false;
    this.downRight = false;
    this.yMove = int( (height / height) * 9);
  }//End Constructor
  //
  void paddleDraw() {
    //Background here will cover each individual ball
    fill(colour);
    gamePlay(); //Arithmetic Code, Security Feature
    rect (paddleXLeft, paddleYLeft, paddleWidth, paddleHeight);
    rect (paddleXRight, paddleYRight, paddleWidth, paddleHeight);
    fill(0); //Reset fill
  }//End ballDraw
  //
  void gamePlay() {
    // Bouncing Off Left Paddle
    //
    // Bouncing off Right Paddle
    //
    // Moving Left Paddle
    // 
    if ( upLeft == true && downLeft == false) {
      paddleYLeft -= yMove;
      upLeft = false;
    }
    if (upLeft == false && downLeft == true) {
      paddleYLeft += yMove;
      downLeft = false;
    }
    //
    // Moving Right Paddle
    if ( upRight == true && downRight == false) {
      paddleYRight -= yMove;
      upRight = false;
    }
    if (upRight == false && downRight == true) {
      paddleYRight += yMove;
      downRight = false;
    }
    //
    // Redrawing Paddle if too High
    if ( paddleYLeft < height * 0) paddleYLeft = 0;
    if (paddleYLeft  > height - paddleHeight ) paddleYLeft = height - paddleHeight;
    //
    // Redrawing Paddle if too Low
    if ( paddleYRight < height * 0) paddleYRight = 0;
    if (paddleYRight > height - paddleHeight ) paddleYRight = height - paddleHeight;
    //
  }//End gamePlay
  //
  // Getters and Setters
  void upLeftGetter() {
    upLeft = true;
  }
  void downLeftGetter() {
    downLeft = true;
  }
  void upRightGetter() {
    upRight = true;
  }
  void downRightGetter() {
    downRight = true;
  }
}//End Ball
