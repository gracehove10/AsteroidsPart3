class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid()
  {
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed= Math.random()*3-1;
    myYspeed = Math.random()*3-1;
    myColor = 150;
    rotSpeed= 3;
    corners = 15;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -22;
    yCorners[0] = -9;
    xCorners[1] = -16;
    yCorners[1] = -14;
    xCorners[2] = 13;
    yCorners[2] = -14;
    xCorners[3] = 17;
    yCorners[3] = -9;
    xCorners[4] = 21;
    yCorners[4] = -9;
    xCorners[5] = 21;
    yCorners[5] = 9;
    xCorners[6] = 16;
    yCorners[6] = 11;
    xCorners[7] = 14;
    yCorners[7] = 15;
    xCorners[8] = 10;
    yCorners[8] = 14;
    xCorners[9] = 0;
    yCorners[9] = 10;
    xCorners[10] = -14;
    yCorners[10] = 12;
    xCorners[11] = -15;
    yCorners[11] = 14;
    xCorners[12] = -18;
    yCorners[12] = 11;
    xCorners[13] = -16;
    yCorners[13] = 8;
    xCorners[14] = -20;
    yCorners[14] = 6;

    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
  }
  public boolean collide() {
    boolean collided = false;
    for (int i=shots.size()-1; i>=0; i--) {
      Bullet abullet = shots.get(i);
      if (dist((float)abullet.getX(), (float)abullet.getY(), (float)getX(), (float)getY())<=30)
      {
      shots.remove(i);
      collided = true;
       break;
      }
    }
    return collided;
  }
  public void move()
  {
    super.move();
    turn(rotSpeed);
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed (double y) {
    myYspeed = y;
  }
  public double getX() {
    return(myCenterX);
  }
  public double getY() {
    return(myCenterY);
  }
}
