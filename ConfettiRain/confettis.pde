//Confetti [] confettis = new Confetti[100];
ArrayList<Confetti []> confettisList = new ArrayList<>();

boolean partyTime = false;

void setup(){
  size(1000,1000);
   generateConfettis();
}

void mousePressed(){
  partyTime = true;
  generateConfettis();

 }

void draw(){
  background(0);
  
  if(partyTime){
  for(Confetti [] confettiArray : confettisList){
    for(Confetti c : confettiArray){
        c.show();
        c.update();
    }
  }
  }
}

void generateConfettis(){
  Confetti[] newBatch = new Confetti[100];
  for(int i = 0; i < newBatch.length ; i++){
    newBatch[i] = new Confetti();
    newBatch[i].burst(mouseX,mouseY);
    }
    
    confettisList.add(newBatch);
}

  
  
