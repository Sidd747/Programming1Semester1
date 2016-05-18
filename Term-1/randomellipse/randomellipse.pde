void setup() {
  size(400,400);
  background(0,0,255);
}


void draw() {
  //background(0,0,255);
  fill(random(20,255),random(20,50),0);
  ellipse(mouseX,mouseY,random(20,30),random(50,80));
}
