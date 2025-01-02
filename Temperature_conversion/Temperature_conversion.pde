float spacing = 100;
float []celcius = new float[10];
int index = 0;
void celciusFill(){
  for(int i = 0; i < 10; i++){
    celcius[i] = random(-273.15,1000);
  }
  
}

void setup(){
  size(640,360);
  celciusFill();
}

void mousePressed(){
  index += 1;
}

void draw(){
  background(255);
  graph(80,celcius[index]);
  //graph(190,180);
}


float celciusToFarenheit(float celcius){
  float farenheit = celcius*1.8 + 32;
  return farenheit;
}

void graph(float y, float celcius){
  float mappedCelcius = map(celcius , -273.15,1000,80,500);
  float farenheit = celciusToFarenheit(celcius);
  float mappedFarenheit = map(farenheit,-500,1000,80,500);
  
  String text1 = farenheit + "farenheit";
  String text2 = celcius + "celcius";
  
  stroke(51);
  noFill();
  strokeWeight(50);
  line(80 , y , 500,y);
  line(80,y+spacing,500,y+spacing);
  
  // for graph
  
  stroke(23);
  noFill();
  strokeWeight(50);
  line(80,y,mappedFarenheit,y);
  textAlign(CENTER);
  textSize(20);
  text(text1 , (80+500)/2 ,y);
  line(80,y+spacing, mappedCelcius , y+spacing);
  text(text2 , (80+500)/2,y+spacing);
  System.out.println(celcius);
  System.out.println(mappedCelcius);
  
  
}
