//Design++ Workshop
//15 Jan 2017
//iashris
//One ball

PVector pos,velocity,target;
void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();
  pos=new PVector(random(width),random(height));
 velocity=new PVector(5,9);

}
void draw(){
  background(255);
  
 
  velocity.setMag(10);
  pos.add(velocity);
  if(pos.x>width){
    pos.x=width;
    velocity.x*=-1;
  }
   if(pos.x<0){
    pos.x=0;
    velocity.x*=-1;
  }
    if(pos.y<0){
    pos.y=0;
    velocity.y*=-1;
  }
     if(pos.y>height){
    pos.y=height;
    velocity.y*=-1;
  }
  
  ellipse(pos.x,pos.y,15,15);
  

  
}