Line[] myLines = new Line [25];

void setup() {
  frameRate(40);
  background(random(100, 255));
  size(displayWidth, displayHeight);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Line(random(width), random(height), random(1, 5), random(1, 15));
  }
}

void draw() {
  if (frameCount == 500) {
    background(random(100, 255));
    frameCount = 0;
  } else {
    for (int i  = 0; i<myLines.length; i++) {
      myLines[i].display();
    }
  }
}