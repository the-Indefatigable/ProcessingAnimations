class Mover
{
  PVector pos;
  PVector vel;
  int radius = 15;
  PVector acceleration;
  int limit = 5;
  float mass;
  
  
  Mover(float x , float y )
   {
     pos = new PVector(x ,y);
     vel = new PVector(0,0);
     acceleration = new PVector(0,0);
     mass = 1;
     
     
   }
  
  
  // for updating the velocity
  
  void update()
  {
    
    // code is for the accelaration - attraction
    {
    //PVector mouse = new PVector(mouseX,mouseY);
    //PVector dir = PVector.sub(mouse,pos);
    //dir.normalize();
    //dir.mult(2);
    //float dist = mouse.dist(pos);
    //float mappedDist = map(dist,0,dist,0,5);
    //dir.setMag(mappedDist);
    //acceleration = dir;
    }
    
    vel.add(acceleration);
    vel.limit(2);
    pos.add(vel);
    acceleration.mult(0);
    
  }
  
  
  // To check for edges 
  void checkEdges()
  {
    if(pos.x >= width-radius ||  pos.x<= radius)
    {

      vel.x *= -1;
    }
    
    if(pos.y >= height-radius || pos.y<= radius)
    {
      vel.y *= -1;
    }
  }
  
  
  
  // apply the force
  
  void applyForce(PVector force)
  {
    acceleration.add(force);
    
  }
    
  
  
  
  
  //To see the mover 
  void show()
  {
    fill(255);
    noStroke();
    circle(pos.x,pos.y,radius*2);
  }
    
}
