color BackgroundC = color(255);
Bubble[] myB = new Bubble[10];
void setup()
{
  size(500, 500);
  for (int i = 0; i < myB.length; i ++)
  {
    myB[i] = new Bubble((int) (Math.random() * 500), (int) (Math.random() * 25) + 25);
  }
}

void draw()
{
  background(BackgroundC);
  for (Bubble b : myB)
  {
    for (Bubble otherB : myB)
    {
      b.check(otherB);
    }
    b.move();
    b.show();
  }
}

void mousePressed()
{
  redraw();
}
