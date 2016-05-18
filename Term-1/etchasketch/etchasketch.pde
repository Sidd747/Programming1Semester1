int x, y;

void setup() {
  size(400,400);
  frameRate(10);
  //Set start coords
  x = width/4;
  y = height/4;
}


void draw() {
  fill(255);
  drawName();
  noLoop();
}

//Algorithm for your first name
void drawName() {
  moveRight(7);
  moveLeft(7);
  moveDown(7);
  moveRight(7);
  moveDown(7);
  moveLeft(7);
  moveRight(12);
  
  
  
}


//Method to draw right line
void moveRight(int rep) {
  for (int i=0;i<rep*10;i++) {
    point(x+i,y);
  }
  x = x + (10*rep);
}

void moveLeft(int rep) {
  for (int o = 0;o<rep*10;o++) {
    point(x-o,y);
  }
  x = x - (rep*10);
}

void moveUp(int rep) {
  for (int o = 0;o<rep*10;o++) {
    point(x,y-o);
  }
  y = y - (rep*10);
}

void moveDown(int rep) {
  for (int o = 0;o<rep*10;o++) {
    point(x,y+o);
  }
  y = y + (rep*10);
}
