class Spaceship extends Floater  
{   
   public Spaceship() {
     myCenterX = width/2;
     myCenterY = height/2;
     myColor = 255;
     myXspeed= 0;
     myYspeed = 0;
     myPointDirection = 10;
     corners = 11;
     xCorners = new int [corners];
     yCorners = new int [corners];
     xCorners[0] = -16;
     yCorners[0] = -5;
     xCorners[1] = -10;
     yCorners[1] = -5;
     xCorners[2] = -10;
     yCorners[2] = -10;
     xCorners[3] = 0;
     yCorners[3] = -7;
     xCorners[4] = 11;
     yCorners[4] = -7;
     xCorners[5] = 16;
     yCorners[5] = 0;
     xCorners[6] = 11;
     yCorners[6] = 7;
     xCorners[7] = 0;
     yCorners[7] = 7;
     xCorners[8] = -10;
     yCorners[8] = 10;
     xCorners[9] = -10;
     yCorners[9] = 5;
     xCorners[10] = -16;
     yCorners[10] = 5;
   }
   public void setXspeed(double x){
   myXspeed = x;
   }
   public void setYspeed (double y){
     myYspeed = y;
   }
   public double getX(){
     return(myCenterX);
   }
   public double getY(){
     return(myCenterY);
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
