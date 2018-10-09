Bacteria [] colony;
int lastX, lastY;
void setup()   
{     
	size(300,300);
	colony = new Bacteria[50];
	for (int i=0; i<colony.length; i++)
	{
		colony[i] = new Bacteria();
	}
}   
void draw()   
{    
 	background(0,0,50);
 	stroke(76, 42, 7);
	strokeWeight(25);
	line(150,300,150,150);
	stroke(0);
	strokeWeight(1);
 	for (int i = 0; i<colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
}  
class Bacteria    
{     
 	int myX, myY, myColor, bSize;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		myColor = color(((int)(Math.random()*106)+150),((int)(Math.random()*125)),0,((int)(Math.random()*156)+100));
 		bSize = ((int)(Math.random()*16)+5);
 	}   
 	void move()
 	{
 		myX = myX + ((int)(Math.random()*3)-1);
 		myY = myY + ((int)(Math.random()*3)-1);
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,bSize,bSize);
 	}
}    