 Bacteria [] colony;
 void setup()   
 {     
	size(100,100);
	colony = new Bacteria[100];
	for (int i=0; i<colony.length; i++)
	{
		colony[i] = new Bacteria();
	}
 }   
 void draw()   
 {    
 	background(0);
 	for (int i = 0; i<colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 50;
 		myY = 50;
 		//myColor = (((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
 	}   
 	void move()
 	{
 		myX = myX + ((int)(Math.random()*3)-1);
 		myY = myY + ((int)(Math.random()*3)-1);
 	}
 	void show()
 	{
 		ellipse(myX,myY,5,5);
 	}
 }    