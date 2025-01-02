float side = 75;

void setup(){
  size(600,600);
}

void draw(){
  background(0);
  //boolean white = true;
  for(int rows = 0; rows < 8 ; rows++){
    
    boolean white = (rows%2 == 0);
      
    for(int cols = 0; cols < 8; cols++){
          if(white){
              fill(255);
          }else{
              fill(0);
          }
          white =! white;
    
          square(cols*side, rows*side, side);
    }
     
  
  }

}
  
