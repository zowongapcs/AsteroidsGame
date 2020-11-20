Star[] stars = new Star[100];
Spaceship ship = new Spaceship();
public void setup() 
{
  size(800,600);
  background(0);
  for(int i=0;i<stars.length;i++){
    stars[i]= new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i=0;i<stars.length;i++){
    stars[i].show();
  }
  ship.show();
  ship.move();
}
public void keyPressed()
{
  if(key == 'w'){
    ship.accelerate(1);
  }else if(key == 'a'){
    ship.turn(-5);
  }else if(key == 'd'){
    ship.turn(5);
  }else if(key == 's'){
    ship.accelerate(-1);
  }else if(key == ' '){
    
  }else if(key == CODED && keyCode ==SHIFT){
    ship.setmyCenterX();
    ship.setmyCenterY();
    ship.setmyPointDirection();
    ship.setmyXspeed(0);
    ship.setmyYspeed(0);
  }
}
