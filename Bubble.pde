static int total_id; //static used for if hit is it more efficeint?¸
class Bubble
{
  private int id;
  private int x;
  private int y;
  private int radius;
  private color c;
  private boolean black;
  private int xDir;
  private int xMoves;
  private boolean flagFR;


  Bubble(int _x, int radius)
  {
    flagFR = false;
    this.x = _x;
    this.y = (int) (Math.random() * 500);
    this.radius = radius;
    this.c = color((int) (Math.random() * 255), (int) (Math.random() * 255), (int) (Math.random() * 255));
    total_id ++;
    this.id = total_id;
    black = false;
    xMoves = 0;
    xDir = (int) (Math.random() * 2);
  }

  void show()
  {
    noStroke();
    if (black)
    {
      fill(0);
    } else
    {
      fill(this.c);
    }
    ellipse(x, y, radius*2, radius*2);
  }


  void move()
  {
    this.y -= radius*2 / 15;
    this.y = this.y < 0 - radius*2 ? this.y = 500 + radius*2 : this.y;

    if (xMoves <= (int) (Math.random() * 5) + 5)
    {
      xMoves += 1;
      if (xDir == 0)
      {
        this.x += 1;
      } else
      {
        this.x -= 1;
      }
    } else
    {
      xDir = (int) (Math.random() * 2);
      xMoves = 0;
      move();
    }
  }

  void check(ArrayList<Bubble> ml)
  {
    double distance;
    for (Bubble b : ml)
    {
      distance = dist(this.x, this.y, b.getX(), b.getY());
      if ((distance < this.radius + b.getRad()) && b.getId() != this.id)
      {
        b.setRemove(true);
        setRemove(true);
      }
    }
  }

  int getRad()
  {
    return this.radius;
  }

  int getX()
  {
    return this.x;
  }
  
  void setRemove(boolean f)
  {
    flagFR = f;
  }
  
  boolean getRemove()
  {
    return flagFR;
  }

  int getY()
  {
    return this.y;
  }

  void setBlack(boolean TF)
  {
    this.black = TF;
  }

  color getC()
  {
    return this.c;
  }

  int getId()
  {
    return this.id;
  }
}
