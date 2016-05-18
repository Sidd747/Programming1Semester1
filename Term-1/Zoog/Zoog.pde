void setup() {
  size(700,800);
  frameRate(30);
}



void draw() {
  //background(0,255,255);
  zoog(mouseX,mouseY);
  zoog(mouseX-60,mouseY);
  zoog(mouseX+60,mouseY);
  fill(0);
  ellipse(350,750,600,300);
  fill(255,255,0);
  ellipse(700,50,100,100);
}


void zoog(int x, int y) {
  rectMode(CENTER);
  
  stroke(0);
  fill(0,0,255);
  rect(x,y,20,100);
  
  stroke(0);
  fill(255,0,0);
  ellipse(x,y-30,60,60);
  
  fill(0);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,16,32);
  
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
 
  
  stroke(0);
  line(x-10,y,x-20,y+10);
  line(x+10,y,x+20,y+10);
}




