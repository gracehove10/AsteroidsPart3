class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
   // myYspeed =1; //theShip.getY();
    //myXspeed =1; //theShip.getX();
    myPointDirection = theShip.getPointDirection();
    accelerate(3);
  }
  public void show(){
    fill(225,0,0);
    ellipse((float) myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX(){
    return myCenterX;
  }
   public double getY(){
    return myCenterY;
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
     public void setYspeed (double y){
     myYspeed = y;
   }
   public double getPointDirection() {
     return myPointDirection;
   }
   public double getYspeed() {
     return myYspeed;
   }
   public double getXspeed() {
     return myXspeed;
   }
}
