Particle[] p=new Particle[2080];

void setup(){
 size(800,800);
 background(0);
 for(int i=0; i<p.length;i++)
  p[i]=new Particle();
  for(int i=2000; i<p.length;i++)
  p[i]= new Weirdo();
}
void draw(){
 background(0);
 for(int i=0; i<p.length;i++){
  p[i].show();
  p[i].move();
}

}
void mousePressed(){
 
for(int i=0; i<p.length;i++)
  p[i]=new Particle();
for(int i=990; i<p.length;i++)
  p[i]= new Weirdo();
     redraw();
}

class Particle{
 double myX,myY,myAngle,mySpeed; 
 int myColor,mySize;
  Particle(){
   myX= mouseX;
    myY= mouseY;
    myAngle=(Math.random()*2*Math.PI);
    mySpeed=(Math.random()*15+1);
    myColor=color((int)(Math.random()*256),0,(int)(Math.random()*256));
    mySize=15/(int)mySpeed+10;
  }
  void move(){
    myX=myX+(Math.cos(myAngle)*mySpeed);
     myY=myY+(Math.sin(myAngle)*mySpeed);
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
    
  }
  
  
}
class Weirdo extends Particle{
   
  Weirdo(){
   myX= mouseX;
    myY= mouseY;
    
    myAngle=(Math.random()*4*Math.PI/2);
    mySpeed=2;
    myColor=color(0,(int)(Math.random()*256),255);
    mySize=30;
  }
  
  
}
