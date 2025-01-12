float angle = PI/8;

void setup(){
  size(600,600);
}

void draw(){
  background(0);
  stroke(255);
  translate(300,height);
  branch(200);
}

void branch(float len){
  line (0,0,0,-len);
  //before drawing i will have to translate again
  translate(0,-len);
  //rotate and draw branch to right
  
  if(len>4){
    pushMatrix();
    rotate(angle);
    branch(len*0.67);
    popMatrix();
    
    pushMatrix();
    rotate(-angle);
    branch(len*0.67);
    popMatrix();
  
  }
  //line(0,0,0,-len*0.67);
}
