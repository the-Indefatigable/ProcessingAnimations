PVector pos;
PVector vel;
float boxSize = 300;

void setup()
{
  size(600,600,P3D);
  pos = new PVector(0,0,0);
  vel = new PVector(5,2,6);
}

void draw()
{
   background(0);
   
   stroke(255);
   noFill();
   translate(300,300);
   rotateY(frameCount * 0.01);
   box(boxSize);
   
   float halfBox  = boxSize/2;
   
   // check for collision for wall
   
   if(pos.x < -halfBox || pos.x > halfBox)
   {
     vel.x *= -1;
   }
   if(pos.y < -halfBox || pos.y > halfBox)
   {
     vel.y *= -1;
   }
   if(pos.z < -halfBox || pos.z > halfBox)
   {
     vel.z *= -1;
   }
   
   //sphereDetail(mouseX / 2);
   
   
   pos.add(vel);
   pushMatrix();
   translate(pos.x,pos.y,pos.z);
   sphere(20);
   popMatrix();
   
   
   
}
