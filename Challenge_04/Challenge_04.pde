//Design++ Workshop
//15 Jan 2017
//iashris
//Onclick random cloud
boolean mouseCounter=true;

void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();
  

}
void draw(){
  background(255);
  for(int i=0;i<120;i++){
  for(int j=0;j<120;j++){
    if(mouseCounter)fill(#D91C56,random(255));
    else {
      float transp=255*noise((i+frameCount)/10.0,(frameCount+j)/10.0);
      fill(#D91C56,transp);
    }
    rect(i*5,j*5,5,5);
    
  }
  }
  
}
void mousePressed(){
  mouseCounter=!mouseCounter;
}