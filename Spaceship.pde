class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 16;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners]; 
    xCorners[0] = 7;
    yCorners[0] = -5;
    xCorners[1] = -2;
    yCorners[1] = -5;
    xCorners[2] = -2;
    yCorners[2] = -4;
    xCorners[3] = -1;
    yCorners[3] = -4;
    xCorners[4] = -1;
    yCorners[4] = 1;
    xCorners[5] = -2;
    yCorners[5] = 1;
    xCorners[6] = -2;
    yCorners[6] = 2;
    xCorners[7] = -4;
    yCorners[7] = 2;
    xCorners[8] = -4;
    yCorners[8] = 16;
    xCorners[9] = 7;
    yCorners[9] = 16;
    xCorners[10] = 7;
    yCorners[10] = 2;
    xCorners[11] = 3;
    yCorners[11] = 2;
    xCorners[12] = 3;
    yCorners[12] = 1;
    xCorners[13] = 1;
    yCorners[13] = 1;
    xCorners[14] = 1;
    yCorners[14] = -4;
    xCorners[15] = 7;
    yCorners[15] = -4;
    myColor = 255;   
    myCenterX = 400;
    myCenterY = 300; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  public void setmyCenterX(){
    myCenterX = (double) (Math.random()*800);
  }
  public void setmyCenterY(){
    myCenterY = (double) (Math.random()*600);
  }
  public void setmyPointDirection(){
    myPointDirection = (double) (Math.random()*360);
  }
  public void setmyXspeed(int x){
    myXspeed = x;
  }
  public void setmyYspeed(int y){
    myYspeed = y;
  }
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
    public double getmyXspeed(){
    return myXspeed;
  }
  public double getmyYspeed(){
    return myYspeed;
  }
  public double getmyPointDirection(){
    return myPointDirection;
  }
}
