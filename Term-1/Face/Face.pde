void setup() {
  size(400, 400);
  background(0, 120, 255);
}

void draw() {
  face();
}


void face() {
  fill(#EDE8C4);
  ellipse(200, 200, 150, 200);
  
  stroke(255);
  line(150, 250, 250, 250);
  
  fill(255);
  ellipse(175,150,50,50);
  ellipse(225,150,50,50);
  
  fill(0);
  ellipse(175,150,random(20,30),random(20,30));
  ellipse(225,150,random(20,30),random(20,30));
  
  fill(255);
  triangle(201,201,225,225,175,225);
}

