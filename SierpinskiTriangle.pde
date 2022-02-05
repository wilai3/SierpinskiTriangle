int base = 500;

public void setup()
{
  size(500, 500);
  background(0);
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}

public void draw()
{
  sierpinski(0, 500, 500, base);
}

public void mousePressed()
{
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  if (base > 5) {
    base = base/2;
  }
}

public void sierpinski(int x, int y, int len, int limit) 
{
  if (len <= limit) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else
  {
    sierpinski(x, y, len/2, limit);
    sierpinski(x+len/2, y, len/2, limit);
    sierpinski(x+len/4, y-len/2, len/2, limit);
  }
}
