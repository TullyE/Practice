class Balloon
{
  color mycol = color((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
  int mySize, x, y;
  boolean inflating = false;
  Balloon(int x, int y)
  {
    this.x = x;
    this.y = y;
    mySize = (int) (Math.random() * 100 + 10);
  }
  void inflate()
  {
    mySize += 1;
  }
  
  void show()
  {
    fill(mycol);
    ellipse(x, y, mySize, mySize);
  }
  
  boolean checkEdge()
  {
    if(this.x - this.mySize/2 <= 0 || this.y - this.mySize/2 <= 0 || this.x + this.mySize/2 >= width || this.y + this.mySize/2 >= height)
    {
      this.inflating = false;
      return true;
    }
    return false;
  }
  void delete()
  {
    this.x = 0;
    this.y = 0;
    this.mySize = 0;
  }
  
  boolean clicked(int mX, int mY)
  {
    if((mX > this.x - this.mySize/2 && mX < this.x + this.mySize/2) && (mY > this.y - this.mySize/2 && mY < this.y + this.mySize/2))
    {
      return true;
    }
    return false;
  }
}
