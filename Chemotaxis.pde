Bacteria [] colony;
void setup()   
{     
	size(300,300);
	colony = new Bacteria[100];
	for (int i=0; i<colony.length; i++)
	{
		colony[i] = new Bacteria();
	}
}   
void draw()   
{    
 	background(255);
 	for (int i = 0; i<colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
}  
class Bacteria    
{     
 	int myX, myY, myColor, bSize, lastX, lastY;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		myColor = color(0,((int)(Math.random()*64)+150),((int)(Math.random()*101)+155),((int)(Math.random()*100)+100));
 		bSize = ((int)(Math.random()*16)+5);
 	}   
 	void move()
 	{
 		lastX = myX;
 		lastY = myY;
 		myX = myX + ((int)(Math.random()*3)-1);
 		myY = myY + ((int)(Math.random()*3)-1);
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,bSize,bSize);
 	}
 	void line()
 	{
 		line(lastX,lastY,myX,myY);
 	}
}    