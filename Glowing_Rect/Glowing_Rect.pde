float topLeft = 255;
float topRight = 255;
float bottomLeft = 255;
float bottomRight = 255;

float speed = 5;

void setup (){
  size(640,360);
}

void draw(){
  background(0);
  
  if(mouseX > 0 && mouseX < 320 && mouseY > 0 && mouseY < 180){
    topLeft = 255;
    fill(topLeft);
  }else if(mouseX > 320 && mouseX < 600 && mouseY > 0 && mouseY < 180){
    topRight = 255;
    fill(topRight);
  }if(mouseX > 0 && mouseX < 320 && mouseY > 180 && mouseY < 320){
    bottomLeft = 255;
    fill(bottomLeft);
  }if(mouseX > 320 && mouseX < 640 && mouseY > 180 && mouseY < 360 ){
    bottomRight = 255;
    fill(bottomRight);
  }
  
  fill(topLeft);
  topLeft -= speed;
  rect(0,0,320,180);
   
  fill(topRight);
  topRight -= speed;
  rect(320,0,320,180);
  
  fill(bottomLeft);
  bottomLeft -= speed;
  rect(0,180,320,180);
  
  fill(bottomRight);
  bottomRight -= speed;
  rect(320,180,320,180);
  
 
  
  
}
