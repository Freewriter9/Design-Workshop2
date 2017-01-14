//Design++ Workshop
//15 Jan 2017
//iashris
//100 balls
class Ball{
  PVector pos,vel;
  Ball(PVector p,PVector v){
    pos=p;
    vel=v;
  }
  void update(){
    vel.setMag(10);
    pos.add(vel);
    
    if(pos.x>width){
    pos.x=width;
    vel.x*=-1;
  }
   if(pos.x<0){
    pos.x=0;
    vel.x*=-1;
  }
    if(pos.y<0){
    pos.y=0;
    vel.y*=-1;
  }
     if(pos.y>height){
    pos.y=height;
    vel.y*=-1;
  }
  }
  void show(){
      ellipse(pos.x,pos.y,15,15);
  }
  
}
PVector temp_pos,temp_vel;
Ball [] balls=new Ball[100];
void setup(){
  size(600,600);
fill(#D91C56);
  noStroke();
  for(int i=0;i<100;i++){
    
  temp_pos=new PVector(random(width),random(height));
 temp_vel=new PVector(random(-10,10),random(-10,10));
 balls[i]=new Ball(temp_pos,temp_vel);
  }

}
void draw(){
  background(255);
  for(int i=0;i<100;i++){
    balls[i].update();
    balls[i].show();
  }
 
  
  

  

  
}