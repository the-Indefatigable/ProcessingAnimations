Bubble []  bubbles = new Bubble [10];

void setup(){
  size(600,600);
  
  for (int i = 0; i < bubbles.length; i++) {
    float x = i * 50 + 30;
    float y = random(20, 40);
    bubbles[i] = new Bubble(x, y);
  }
 
}

void mousePressed(){
  for(Bubble b: bubbles){
    if(b.over(mouseX,mouseY)){
      b.changeColor();
    }
  }
}

void draw(){
  background(255);
  
  // Enhanced loop
  
  for(Bubble b : bubbles){
    b.edge();
    b.show();
    //b.over(MouseX);
    b.update();
  }
  
  //for(int i  = 0; i < bub.length ; i++){
    
  //  bub[i].show();
  //  bub[i].update();
  //  bub[i].edge();
  //  bub[i].over(mouseX,mouseY);
    
  //}
  
  
}
