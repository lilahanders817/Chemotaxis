//PImage img;
int x;
int y;
int z = 400;


Cow[] cows;

void setup(){
  size(800,800);
  cows = new Cow[7];
  for(int i = 0; i < cows.length; i++)
    cows[i] = new Cow();
  //img = loadImage("Cow_PNG2127.webp");

}
void draw(){
 
  //UFO
  x = mouseX;
  y = mouseY;
  background(0);
  noStroke();
  fill(128,128,128);
  ellipse(x,y,80,80);
  triangle(x-30,y+28,x+30,y+28,x,y+50);
  fill(100,100,100);
  ellipse(x,y+10,120,40);
  fill(128,128,128);
  ellipse(x,y,80,30);
  fill(173,255,47);
  triangle(x,y+50,x-100,800,x+100,800);
  fill(50,205,50);
  rect(0,700,800,100);
 
  //Die myDie = new Die();
  //myDie.roll();  
  //myDie.show();
 
  //Cows
  for (int i = 0; i < cows.length; i++) {
    cows[i].move();
    cows[i].show();
    }
   
   
}  

class Cow {
  int myX;
  int myY;

  Cow(){
    //myX = (int)(Math.random()*width);
    myX = mouseX;
    myY = (int)(Math.random()*height);
  }
  void move(){
    //myX+= (int)(Math.random()*10)-5;
    myX = mouseX;
    myY+= (int)(Math.random()*10)-5;
    //myX-=(int)(10*(x-mouseX)/width);
    myY-=(int)(10*(y-mouseY)/height);
   
  }
  void show(){
    fill(225,225,225);
    if(myY <= mouseY +50){
      fill(255,0,0,0);
      myY = 780;
    }
    //ellipse(myX,myY,20,20);
    fill(0);
    triangle(myX-5,myY-5,myX-9,myY-5,myX-11,myY-15);
    triangle(myX+5,myY-5,myX+9,myY-5,myX+11,myY-15);
    fill(255,255,255);
    ellipse(myX,myY,20,20);
    ellipse(myX-6,myY-3,2,2);
    fill(0);
    ellipse(myX-6,myY-2,4,6);
    //ellipse(myX-6,myY-3,2,2);
    ellipse(myX+6,myY-3,2,2);
    fill(255,192,203);
    ellipse(myX,myY+4,8,4);
    fill(0);
    ellipse(myX-3,myY-3,2,2);
    //image(img, myX, myY);
}
