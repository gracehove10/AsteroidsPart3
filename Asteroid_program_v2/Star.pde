class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Star()
  {
    myX = (int)(Math.random() *500);
    myY = (int) (Math.random()*500);
    mySize = (int) (Math.random()*8);
    myColor = color((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255, ((float)Math.random()*255));
  }
  public void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
