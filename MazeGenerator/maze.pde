float spacing = 50;

void setup(){
  size(600,600);
 
}

void draw(){
  
  background(random(0,255),random(0,255),random(0,255));
 
  
  for(int x = 0; x < width ; x+= spacing){
   for(int y = 0; y < height; y+= spacing){
     
         stroke(random(1,255), random(1,255),random(1,255));
         strokeWeight(random(0,4));
         float prob = random(1);
          //square(x, y, spacing);
          if(prob < 0.5){
            line(x,y,x+spacing,y+spacing);
          }else{
             line(x+spacing,y,x,y+spacing);
          }
   
          
    }
     
  
  }
  
  noLoop(); 

}
  
