color BackgroundC = color(255);
ArrayList<Bubble> myB = new ArrayList <Bubble> ();
void setup()
{
  size(500, 500);
  for (int i = 0; i < 10; i ++)
  {
    myB.add(new Bubble((int) (Math.random() * 500), (int) (Math.random() * 25) + 25));
  }
}

void draw()
{
  background(BackgroundC);
  for(int i = myB.size()-1; i >= 0; i --)
  {
    if(myB.get(i).getRemove())
    {
      myB.remove(i);
    }
  }
  for (Bubble b : myB)
  {
    b.check(myB);
    b.move();
    b.show();
  }
}


void mousePressed()
{
  redraw();
}
