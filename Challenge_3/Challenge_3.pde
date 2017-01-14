//Design++ Workshop
//15 Jan 2017
//iashris
//Bars with noisy heights
float wid=5;
float [] heights=new float[120];
void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();

}
void draw(){
  background(255);
  translate(0,height);
  for(int i=0;i<120;i++){
    float h=(height-mouseY)*noise((i+frameCount)/100.0);
    rect(wid*i,-h,wid,h);
  }
  
}