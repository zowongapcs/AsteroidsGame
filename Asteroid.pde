class Asteroid extends Floater
{
  private double rotspeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -(int) (Math.random()*10+5);
    yCorners[0] = -(int) (Math.random()*10+5);
    xCorners[1] = (int) (Math.random()*10+5);
    yCorners[1] = -(int) (Math.random()*10+5);
    xCorners[2] = (int) (Math.random()*10+5);
    yCorners[2] = 0;
    xCorners[3] = (int) (Math.random()*10+5);
    yCorners[3] = (int) (Math.random()*10+5);
    xCorners[4] = -(int) (Math.random()*10+5);
    yCorners[4] = (int) (Math.random()*10+5);
    xCorners[5] = -(int) (Math.random()*10+5);
    yCorners[5] = 0;
    myColor = color(255,0,0);
    myCenterX = (double) (Math.random()*800);
    myCenterY = (double) (Math.random()*600);
    myXspeed = (double) (Math.random()*2-1);
    myYspeed = (double) (Math.random()*2-1);
    myPointDirection = 0;
    rotspeed = (double) (Math.random()*4-2);
  }
  public void move()
  {
    turn(rotspeed);
    super.move();
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
}
