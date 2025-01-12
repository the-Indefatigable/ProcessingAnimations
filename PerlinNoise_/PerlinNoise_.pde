float inc = 0.02;

void setup() {
  size(600, 600); // Set canvas siz3
  pixelDensity(1);
}

void draw() {
  background(0); // Clear the background
  
  loadPixels(); // Load the pixels array for modification
  
 
  
  float yOff = 0;
  for(int y = 0; y< height; y++){
     
     float xOff = 0;
    for(int x = 0;x<width;x++){ 
    
  
      int index = x + y * width; // Calculate the index
      
      //float brightness = map(noise(iOff,jOff),0,1,0,255);
      float brightness = noise(xOff,yOff)*255;
      color col = color(brightness,brightness,brightness,255);
      pixels[index] = col;
      
      xOff+=inc;
      
      
    }
    
    yOff += inc;
    
  }
  
  updatePixels(); // Apply the changes to the display
}
