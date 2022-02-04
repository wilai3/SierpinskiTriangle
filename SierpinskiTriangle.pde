public void setup()
{
  size(500,500);
}

public void draw()
{
  sierpinski(0,500,500);
}

public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,0,x+len,y);
  } else {
    
  
}
