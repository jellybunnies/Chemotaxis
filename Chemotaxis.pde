//declare bacteria variables here 
Bacteria[] bob;
 void setup()   
 {     
   //initialize bacteria variables here
   background(0);
   size(500,500);
   bob = new Bacteria[100];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   for(int i = 0; i < bob.length; i++)
   {
     bob[i].walk();
     bob[i].show();
   }
 }  
 class Bacteria    
 {     
   //lots of java!   
   int myX, myY;
   Bacteria()
   {
     myX = 250;
     myY = 250;
   }
   void walk()
   {
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
   }
   void show()
   {
     //background(0);
     stroke(255);
     fill((int)(Math.random()*56 + 150),(int)(Math.random()*56 + 150),(int)(Math.random()*56 + 150),200);
     ellipse(myX,myY,50,50);
     if(mouseX > myX)
     {
       myX = myX + (int)(Math.random()*5)-1;
     }
     if(mouseY > myY)
     {
       myY = myY + (int)(Math.random()*5)-1;
     }
     else
     {
       myX = myX + (int)(Math.random()*5)-3;
       myY = myY + (int)(Math.random()*5)-3;
     }
   }
 }   
