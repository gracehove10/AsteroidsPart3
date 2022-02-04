Spaceship bob= new Spaceship ();
Star[] nightSky = new Star[300];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList<Bullet> shots = new ArrayList <Bullet>();
int nRocks = 2;
Asteroid tom = new Asteroid();
boolean left;
boolean right;
boolean forward;
boolean backwards;

public void setup()
{
  size (500, 500);
  for (int i=0; i<nRocks; i++)
  {
    rocks.add(new Asteroid());
  }
  for (int i=0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  noStroke();
  for (int i=rocks.size()-1; i>=0; i--)
  {
    Asteroid aRock = rocks.get(i);
    aRock.move();
    aRock.show();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)aRock.getX(),(float) aRock.getY());
    if (d<25){
      rocks.remove(i);
    }
    else if (aRock.collide()){
      rocks.remove(i);
    }
    
  }
  for (int i=0; i<nightSky.length; i++)
  {
    noStroke();
    nightSky[i].show();
  }
  //for (int i=0; i<rocks.size(); i++)
  //{
  //  rocks.get(i).show();
  //  rocks.get(i).move();
  //}
  bob.show();
  bob.move();
  //tom.show();
  //tom.move();
  for(int i=shots.size()-1; i>=0; i--){
    shots.get(i).move();
    shots.get(i).show();
    if (shots.get(i).getX()>width){
      shots.remove(i);
    }
    else if (shots.get(i).getY()>height){
      shots.remove(i);
    }
    else if (shots.get(i).getY()<0){
      shots.remove(i);
    }
   else if (shots.get(i).getX()<0){
      shots.remove(i);
      //
    }
  }
  if (forward == true) {
    bob.accelerate(0.1);
  }
  if (left== true) {
    bob.turn(-4);
  }
  if (right==true) {
    bob.turn(4);
  }
  if (backwards==true) {
    bob.accelerate(-0.1);
  }
  
}
public void keyPressed()
{
  if (key =='h')
  {
    bob.setXspeed(0);
  }
  if (key =='j')
  {
    bob.setYspeed(0);
  }
  if (key =='w')
  {
    forward = true;
  }
  if (key =='d')
  {
    right = true;
  }
  if (key =='a')
  {
    left=true;
  }
  if (key == 's')
  {
    backwards =true;
  }
  if (key == ' ')
  {
    shots.add (new Bullet(bob));
  }
}
public void keyReleased()
{
  if (key =='w')
  {
    forward = false;
  }
  if (key =='d')
  {
    right = false;
  }
  if (key =='a')
  {
    left=false;
  }
  if (key == 's')
  {
    backwards =false;
  }
}
