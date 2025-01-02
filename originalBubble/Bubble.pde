class Bubble {
  
  float x , y , r;
  color col;
  
  
  Bubble(float _x , float _r){
  
    x = _x;
    y = height;
    r = _r;
    col  = color(random(0,255),0,random(255),100); 
    //println("it is running");
    
  }
  
  void update(){
    x = x + random(-1,1);
    y = y - random(1,4);
  }
  
  void show(){
    stroke(0);
    strokeWeight(4);
    fill(col);
    circle(x,y,r*2);
  }
  
  void edge(){
    if(y < -r){
      y = height+r;
    }
  
  
}

boolean over (float mx , float my){
  float d = dist(x,y,mx,my);
  
  return d<r;

}

void changeColor(){
  col = color(0,0,0);
  }
  
}
