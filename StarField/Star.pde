class Star{
  float x;
  float y;
  float z;
  float pz;
  
  Star(){
    x = random (-width,width);
    y = random (-height,height);
    z = random(width);
    pz = z;
  }
  
  
  void show(){
    
    noStroke();
    fill(255);
    float sx = map(x/z,0,1,0,width);
    float sy = map(y/z,0,1,0,height);
    float r = map (z, 0 ,width, 16,0);
    //ellipse(sx,sy,r,r);
    
    
    stroke(255,0,0);
    float px = map(x/pz,0,1,0,width);
    float py = map(y/pz,0,1,0,height);
    pz = z;
    line(px,py,sx,sy);
    
    
  }
  
  void update(){
    z = z-speed;
    
    if(z < 1){
      z = width;
      x = random (-width,width);
      y = random (-height,height);
      pz = z;
    }
  }

}
