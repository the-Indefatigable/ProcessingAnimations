Mover m1;

void setup()
{
  
  size(600,600);
  m1 = new Mover(width/2, height/2);
}

void draw()
{
  if(mousePressed)
  {
    PVector wind = new PVector(0,-0.2);
    m1.applyForce(wind);
  }
  
  
  
  background(0);
  m1.show();
  m1.update();
  m1.checkEdges();
  
  PVector gravity = new PVector(0,0.2);
  m1.applyForce(gravity);
 
  
}
