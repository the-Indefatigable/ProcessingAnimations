
float [] prices = {100,200,40};
String [] fruits = {"mango" , "banana", "apple"};
int index = 0;


void setup(){
  size(600,600);
}

void draw(){
  background(0);
  strokeWeight(50);
  strokeCap(SQUARE);
  stroke(255);
  
  for(int i  = 0; i < prices.length;i++){
    
    float x  = i*100 + 200;
    
    line(x , height/2 , x ,  height/2 - prices[i]);
    textAlign(CENTER);
    textSize(20);
    text(fruits[i], x, height/2 + 50);
  }
    
  
  
  
  
  
}
  
