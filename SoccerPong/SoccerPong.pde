//Global Variables
Paddle paddle;
float x, y, rectWidth, rectHeight;
Ball[] balls = new Ball[4000];
int ballCounter = balls.length - balls.length;

void setup() {
  fullScreen();
  paddle = new Paddle(width, height);
  x = width*1/4;
y = height*0;
rectWidth = width*1/2;
rectHeight = height*1/10;
//
  balls[ballCounter] = new Ball(width, height); 
  balls[ballCounter].gameStart();
  //
  ballCounter +=1;
  //
}

void draw() {
  background(#27553C);
  for ( int i = 0; i<ballCounter; i++ ) { //Controls each ball
    balls[i].ballDraw(); //Variables and Contructor
    balls[i].gamePlay();
    //
    paddle.paddleDraw();
  }
}

void keyPressed() {
  if (key == CODED && key == 'W' || key == 'w') paddle.upLeftGetter();
  if (key == CODED && key == 'S' || key == 's') paddle.downLeftGetter();
  if (key == CODED && keyCode == UP) paddle.upRightGetter();
  if (key == CODED && keyCode == DOWN) paddle.downRightGetter();
}

void mousePressed() {
  //println(ballCounter);
  if ( ballCounter >= balls.length ) { //Game Quit based on ball counting
    exit(); //Eventually will become a button
  } else { 
    ballCounter += 1;
  }
  for ( int i = ballCounter-1; i<ballCounter; i++ ) { //Constructor for other balls should not be run
    balls[i] = new Ball(width, height); 
    balls[i].gameStart(); //Completes Constructor, teaching opportunity
  }
}
