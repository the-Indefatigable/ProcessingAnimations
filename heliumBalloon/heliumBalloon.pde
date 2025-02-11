PVector pos;
PVector vel ;

void setup()
{
  size(600,600);
  pos = new PVector(width/2,height-150);
  vel = new PVector (0,-1);
}

void draw()
{
 
  background(0);
  fillWithHelium(pos,vel);
  
}

void drawBalloon()
{
  noFill();
  stroke(255);
  ellipse(pos.x,pos.y,80,100);
  strokeWeight(5);
  line(pos.x,pos.y+100,pos.x,pos.y+50);
}

void fillWithHelium(PVector pos , PVector vel)
{ 
  pos.add(vel);
  drawBalloon();
  
}
