Balloon[][] myBalls = new Balloon[15][15];
void setup()
{
  size(300, 300);
  for(int i = 0; i < 15; i ++)
  {
     for(int j = 0; j < 15; j ++)
     {
       if((int) (Math.random() * 25) == 0)
       {
         myBalls[i][j] = new Balloon(j * 20, i * 20);
       }
       else
       {
         myBalls[i][j] = new Balloon(0, 0);
       }
     }
  }
}

void draw()
{
  background(255);
  for(int i = 0; i < 15; i ++)
  {
    for(int j = 0; j < 15; j ++)
    {
      if(myBalls[i][j].checkEdge())
      {
        myBalls[i][j].delete();
      }
      else if(myBalls[i][j].inflating)
      {
        myBalls[i][j].inflate();
      }
      myBalls[i][j].show();
    }
  }
}

void mousePressed()
{
  for(int i = 0; i < 15; i ++)
  {
    for(int j = 0; j < 15; j ++)
    {
      if(myBalls[i][j].clicked(mouseX, mouseY))
      {
        myBalls[i][j].inflating = true;
      }
    }
  }
}

void mouseReleased()
{
  for(int i = 0; i < 15; i ++)
  {
    for(int j = 0; j < 15; j ++)
    {
      myBalls[i][j].inflating = false;
    }
  }
}
