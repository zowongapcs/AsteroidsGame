class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  public Star()
  {
    myX = (double) (Math.random()*800);
    myY = (double) (Math.random()*600);
  }
  public void show()
  {
    noStroke();
    fill(255,255,255,100);
    ellipse((float)myX,(float)myY,5,5);
  }
}
