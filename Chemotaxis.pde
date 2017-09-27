Red bob = new Red ();
Blue notbob = new Blue ();
void setup()
{
  size(500,500);
}

void draw ()
{
  background (0);
  bob.show();
  bob.redDot();
  notbob.show();
  notbob.blueDot();

  
}
 void mousePressed()
 {
 	bob.myX = (int)(Math.random()*500);
 	bob.myY = (int)(Math.random()*500);
 	notbob.myX = (int)(Math.random()*500);
 	notbob.myY = (int)(Math.random()*500);
 }
class Red 
{
  int myX, myY;
  Red()
  {
  myX=myY=250;
  
  }
void redDot ()
  {
    if(mouseX > myX)
      	myX = myX+ (int)((Math.random()*5)-1); //biased to right
    else
      	myX = myX+ (int)((Math.random()*5)-3); //biased to left

  	if(mouseY > myY)
  		 myY = myY+ (int)((Math.random()*5)-1); //biased to bottom
  	else
  		 myY = myY+ (int)((Math.random()*5)-3); //biased to top
  }
 void show ()
{
  fill(255,0,0);
  ellipse (myX, myY, 50 , 50);
} 
}
class Blue 
{
  int myX, myY;
  Blue()
  {
  myX=myY=250;
  
  }
   void blueDot ()
  {
    if(mouseX > myX)
      	myX = myX+ (int)((Math.random()*5)-1); //biased to right
    else
      	myX = myX+ (int)((Math.random()*5)-3); //biased to left

  	if(mouseY > myY)
  		 myY = myY+ (int)((Math.random()*5)-1); //biased to bottom
  	else
  		 myY = myY+ (int)((Math.random()*5)-3); //biased to top

  
  } 

void show ()
{
  fill(0,0,255);
  ellipse (myX, myY, 50 , 50);
}
}