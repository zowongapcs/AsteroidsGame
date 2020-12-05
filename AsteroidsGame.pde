Star[] stars = new Star[100];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> covid = new ArrayList <Asteroid>();
public void setup() 
{
  size(800,600);
  background(0);
  for(int i=0;i<stars.length;i++){
    stars[i]= new Star();
  }
    for(int i=0;i<=10;i++){
    covid.add(new Asteroid());
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
  for(int i=0;i<covid.size()-1;i++){
    Asteroid corona = covid.get(i);
    corona.show();
    corona.move();
    if(dist((float)corona.getmyCenterX(),(float)corona.getmyCenterY(),(float)ship.getmyCenterX(),(float)ship.getmyCenterY())<=20)
    {
      covid.remove(corona);
    }
  }
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
