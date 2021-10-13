void setup()
{
  size(400, 400);
  noLoop();
}
void draw()
{
  background(0);
  for (int i = 0; i < 100; i++)
  {
    Clover bob = new Clover((int) (Math.random() * width), (int) (Math.random() * height));
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Clover
{
  private int numLeaves;
  private int myX;
  private int myY;
  Clover(int myX, int myY)//constructor
  {
    this.myX = myX;
    this.myY = myY;
    this.numLeaves = (int) (Math.random() * 2) + 3;
  }
  void show()
  {
    //I used some ugly math below
    //you can ignore it for now
    fill(0, 255, 0);
    stroke(0, 255, 0);
    float rot = random(PI*2);
    translate(myX, myY);
    rotate(rot);
    for (float i = 0; i < PI * 2; i+= PI*2/numLeaves)
    {
      rotate(i);
      translate(6, 0);
      ellipse(0, 0, 10, 10);
      translate(-6, 0);
      rotate(-i);
    }
    rotate(-rot);
    translate(-myX, -myY );
  }
}
