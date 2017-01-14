//Design++ Workshop
//15 Jan 2017
//iashris
//two sets of concentric circles moving in opposite directions

void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();
}
void draw(){
  background(255);
  translate(width/2,height/2);
  
  
  pushMatrix();
    rotate(radians(frameCount));
    for(int i=0;i<10;i++){
      rotate(radians(36));
      ellipse(0,100,14,14);
    }
  popMatrix();
  
  pushMatrix();
    rotate(radians(-frameCount));
    for(int i=0;i<20;i++){
      rotate(radians(-18));
      ellipse(0,200,14,14);
    }
  popMatrix();
}