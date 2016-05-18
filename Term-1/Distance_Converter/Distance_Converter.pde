void setup() {}


void settings() {
  size(650,400);
}



void draw() {
  background(0,255,255);
  fill(0);
  textSize(15);
  text("Conversion Miles to Nautical Miles \n Siddhant Devaru \n All x values correspond to miles. Your mouse sets the x value ", 10, 50);
  line(0,height/2, width, height/2); 
  fill(0,0,255);
  ellipse(mouseX, height/2, 8,8);
  distConverter(mouseX);
  for (int i = 0; i <= 600; i += 50) {
    line(i, height/2, i, height/2 - 4);
    textSize(10);
    text(i + " mi",i-3, height/2-24);
  }
  fill(255,0,0);
  textSize(14);
  text (mouseX + " is " + distConverter(mouseX) + " nautical miles", 300, 350);
  
}



float distConverter(float m) {
  float n = m * (1.1508);
  return n;
}