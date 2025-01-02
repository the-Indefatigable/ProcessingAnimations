float x = 320;
float y = 180;
float radius = 25;
float xSpeed = 7;
float ySpeed = 5;
boolean isGoing;


void mousePressed(){
  if(isGoing){
    isGoing = false;
  }else{
    isGoing = true;
  }
  
}



void setup(){
  size(640,360);
}

void draw(){
  
  background(0);
  stroke(0);
  
  float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);
  
  fill(r,g,b);
 
  circle(x,y,radius*2);
  
  if(isGoing){
   x += xSpeed;
   y += ySpeed;
  }
  
  if(x>=width-radius || x <= radius){
     xSpeed *= -1;
  }
  
  if(y >= height-radius || y <= radius){
    ySpeed *= -1;
  }
  
  //frameRate(1);
  
  //println(x);
}
