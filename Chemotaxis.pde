 //declare bacteria variables here   
 Bacteria [] hi;
 void setup()   
 {     
 	
 	size(750,750);
 	hi = new Bacteria[100];
 	for(int i = 0; i < hi.length;i++)
 	{
 		hi[i] = new Bacteria();
 	}
 	
 }   
 void mousePressed()
 {
 	setup();
 }
 void draw()   
 {    
 	//move and show the bacteria  
 	background(127); 
 	for(int i = 0; i < hi.length; i++)
 	{
 		for(int z = i + 1; z < hi.length; z++)
 		{
 			if(dist(hi[i].myX, hi[i].myY, hi[z].myX, hi[z].myY) < 30)
 				{
 					hi[i].myColor = hi[z].myColor = color(255,0,0);
 				}
 		}
 		hi[i].move();
 		hi[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY, myZ, myA, myColor;
 	Bacteria()
 	{
 		myX = (int)(Math.random() * 750);
 		myY = (int)(Math.random() * 750);
 		myZ = 30;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 	void move()
 	{
 			myX = myX + (int)(Math.random() * 5)-2;
 			myY = myY + (int)(Math.random() * 5)-2;	
 			myZ = myZ + (int)(Math.random() * 3)-1;
 	}
 	void show()
 	{
 		
 		fill(myColor);
 		noStroke();
 		ellipse(myX,myY,myZ,myZ);
 	}
 }    