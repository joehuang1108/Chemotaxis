Jumper bob = new Jumper ();
Walker notbob = new Walker ();
void setup()
{
  size(500,500);
}

void draw ()
{
  background (0);
  bob.show();
  bob.jump();
  notbob.show();
  notbob.walk();
  
}
class Jumper 
{
  int myX, myY;
  Jumper()
  {
  myX=myY=250;
  
  }
void jump ()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
 void show ()
{
  fill(255,0,0);
  ellipse (myX, myY, 50 , 50);
} 
}
class Walker 
{
  int myX, myY;
  Walker()
  {
  myX=myY=250;
  
  }
   void walk ()
  {
    myX = myX+ (int)((Math.random()*5)-1);
  
  } 

void show ()
{
  fill(0,0,255);
  ellipse (myX, myY, 50 , 50);
}
}