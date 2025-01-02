float x = 300;
float y = 300;
float w = 200;
float brightness;
float speed = 5;

void setup(){
  size(600,600);
  println("This is Running");
  brightness = 0;
}

void draw(){
  rectMode(CENTER);
  background(0);
  stroke(255);
  
  if(mouseX > x - w/2 && mouseX < x + w/2 && mouseY > y - w/2 && mouseY < y + w/2){
    brightness = 255;
    fill(brightness);
    
  }
    brightness -= speed;
    fill(brightness);
   square(x,y,w);
}
  
