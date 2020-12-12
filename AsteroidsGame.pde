Star[] stars = new Star[100];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> covid = new ArrayList <Asteroid>();
ArrayList <Bullet> sanitizer = new ArrayList <Bullet>();
public int lvl = 1;
public int score = 0;
public int lives = 3;
public void setup() 
{
  size(800,600);
  background(0);
  for(int i=0;i<stars.length;i++){
    stars[i]= new Star();
  }
  for(int i=0;i<10;i++){
    covid.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  fill(255);
  if(lives<=0){
    textSize(20);
    text("Game Over",350,290);
    textSize(15);
    text("Level: "+lvl,350,320);
    text("Score: "+score,350,350);
  }else{
  textSize(50);
  text("Level " + lvl,310,50);
  textSize(20);
  text("Lives:",20,580);
  text("Score: "+score,20,550);
  stroke(255);
  for(int i=0;i<lives;i++){
    triangle(105+(i*50),582,95+(i*50),572,115+(i*50),572);
    arc(100+(i*50),570,10,10,0,TWO_PI);
    arc(110+(i*50),570,10,10,0,TWO_PI);
  }
  for(int i=0;i<stars.length;i++){
    stars[i].show();
  }
  ship.show();
  ship.move();
  for(int i=0;i<covid.size();i++){
    Asteroid corona = covid.get(i);
    corona.show();
    corona.move();
    if(dist((float)corona.getmyCenterX(),(float)corona.getmyCenterY(),(float)ship.getmyCenterX(),(float)ship.getmyCenterY())<=20)
    {
      covid.remove(corona);
      lives--;
    }
  }
  for(int i=0;i<sanitizer.size();i++){
      Bullet droplet = sanitizer.get(i);
      droplet.show();
      droplet.move();
      for(int j=0;j<covid.size();j++){
        Asteroid corona = covid.get(j);
        if(dist((float)droplet.getmyCenterX(),(float)droplet.getmyCenterY(),(float)corona.getmyCenterX(),(float)corona.getmyCenterY())<=10){
          score+=lvl;
          covid.remove(corona);
          sanitizer.remove(droplet);
          break;
        }
      }
    }
    if(covid.size()<=0){
      lvl++;
      for(int i=0;i< (lvl*10);i++){
        covid.add(new Asteroid());
      }
      if(lvl%3==0){
        lives++;
      }
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
    sanitizer.add(new Bullet(ship));
  }else if(key == CODED && keyCode ==SHIFT){
    ship.setmyCenterX();
    ship.setmyCenterY();
    ship.setmyPointDirection();
    ship.setmyXspeed(0);
    ship.setmyYspeed(0);
  }
}
