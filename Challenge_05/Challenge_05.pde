//Design++ Workshop
//15 Jan 2017
//iashris
//One ball

PVector pos,velocity,gravity;
float radius=20;
void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();
  pos=new PVector(width/2,100);
  gravity=new PVector(0,10);
  velocity=new PVector(0,0);
  

}
void draw(){
  background(255);
  
  velocity.add(gravity);
  pos.add(velocity);
  
  if(pos.y>height-radius){
    pos.y=height-radius;
    velocity.y*=-.9;
  }
  
  
  
 
  ellipse(pos.x,pos.y,radius*2,radius*2);
  

  
}
void mousePressed(){
  setup();
}