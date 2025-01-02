class Confetti{
  
  float xSpeed , ySpeed;
  float x , y , side;
  color col = color(random(255),random(255),random(255));
  
  Confetti(){
    x = -80000;
    y = -80000;
    side = 25;
    xSpeed = 0;
    ySpeed = 0;
  }
  
  void show(){
    fill(col);
    rectMode(CENTER);
    square(x,y,side);
  }
  
  void burst(float mx, float my){
    xSpeed = random(-5,5);
    ySpeed = random(-10,10);
    x = mx;
    y = my;
  }
  
  void update(){
    x += xSpeed;
    y += ySpeed; 
    ySpeed += 0.1;
  }
  
}
    
