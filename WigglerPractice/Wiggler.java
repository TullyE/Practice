class Wiggler
{
  private int myX, myY;
  
  public Wiggler()
  {
    myX = myY = 150;
  }
  
  public void wiggle()
  {
    myX+=(int)(Math.random()*5)-2;
  }
  
  public int getX()
  {
    return this.myX;
  }
  
  public int getY()
  {
    return this.myY;
  }
  
  public void setX(int x_)
  {
    this.myX = x_;
  }
  
  public void setY(int y_)
  {
    this.myY = y_;
  }
}
