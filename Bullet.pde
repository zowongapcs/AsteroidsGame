class Bullet extends Floater
{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getmyCenterX();
    myCenterY = theShip.getmyCenterY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getmyPointDirection();
    accelerate(6.00);
  }
  public void show(){
    fill(255);
    stroke(200,200,255);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
}
