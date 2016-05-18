void setup() {
  size(1000, 1000);
}

void draw() {
  background(128);
  drawGrid();
  noLoop();
}


void drawGrid() {
  for (int i = 100; i<= width; i += 100) 
  { 
    line(0, i, width, i);
    line(i, 0, i, height);
    text(i,i-30,15);
    text(i,5,i);
  }
  
}

