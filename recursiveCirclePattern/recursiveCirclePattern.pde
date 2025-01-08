void setup(){
  size(600,600);
}

void draw(){
  background(0);
  drawCircle(width/2,height/2,300);
}

void drawCircle(float x, float y, float d){
  
  stroke(255);
  noFill();
  ellipse(x,y,d,d);
  
  if(d>10){
  drawCircle(x+d/2,y,d/2);
  drawCircle(x-d/2,y,d/2);
  drawCircle(x,y+d/2,d/2);
  //drawCircle(x,y-d/2,d/2);
  }
}
