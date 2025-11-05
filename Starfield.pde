Particle[] stars= new Particle[200];
void setup() {
  size (800,800);
  noStroke();
  for (int i=0; i<stars.length; i++){
    if (i==0){
      stars[i]= new OddballParticle(); 
    } else{
      stars[i]= new Particle();
    }
  }
}
void draw()
{
  background(0);
  
  for (int i=0; i<stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
}
class Particle
{
  //stuff Particle needs to know about itself
  float x, y;
  float speed;
  float angle;
  float size;
  color c;
  
  // constructor
  Particle (){
    x= width/2;
    y=height/2;
    angle = random(TWO_PI);
    speed = random(2,8);
    size =5;
    c = color(255);
}
  
  void move(){
  x+=cos(angle)*speed;
  y+=sin(angle)*speed;
  
  if (x<0||x>width||y<0|| y> height){
    x= width/2;
    y=height/2;
    angle = random(TWO_PI);
    speed = random(2,8);
  }
}
void show(){
  fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  ellipse(x,y,size,size);
  }
}

class OddballParticle extends Particle{//inherits from Particle

  OddballParticle(){
    super();
    c=color(0,255,255);
    size=15;
    speed= 5;
  }
}
