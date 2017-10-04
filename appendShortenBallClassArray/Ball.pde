class Ball{
  // PROPERTIES
  int xBall,yBall,wBall;
  int vx, vy;
  color cBall;
  // CONSTRUCTOR
  Ball(int xBall, int yBall, int wBallParam){
    this.xBall = xBall;
    this.yBall = yBall;
    wBall = wBallParam;
    vx = 1;//int(random(10));
    vy = 1;//int(random(10));
    cBall = color(200,0,0);
  }
  // METHODS
  void show(){
    fill(cBall);
    ellipse(xBall, yBall, wBall, wBall);
  }
  void move(){
    xBall+=vx;
    if(xBall >= width-wBall/2 || xBall <= wBall/2){
      vx = -vx;
    }
    yBall+=vy;
    if(yBall >= height-wBall/2 || yBall <= wBall/2){
      vy = -vy;
    }
  }
  
}