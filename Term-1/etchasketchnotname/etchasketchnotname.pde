int x, y;

void setup() {
  size(400,400);
  frameRate(10);
  //Set start coords
  x = 0;
  y = 0;
  strokeWeight(3);
}

void draw() {}



void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      if (x>width) {
        x = width;
      }
      moveRight(1);
    }
    else if (keyCode == LEFT) {
      if (x<0) {
        x = 0;
      }
      moveLeft(1);
    }
    else if (keyCode == DOWN) {
      if (y>height) {
        y= height;
      }
      moveDown(1);
    }
    else if (keyCode == UP) {
      if (y<0) {
        y = 0;
      }
      moveUp(1);
    }
   }
}


void mouseClicked() {
  saveFrame("ETCHASKETCH-########.png");
}



//Method to draw right line
void moveRight(int rep) {
  for (int i=0;i<rep*5;i++) {
    point(x+i,y);
  }
  x = x + (5*rep);
}

void moveLeft(int rep) {
  for (int o = 0;o<rep*5;o++) {
    point(x-o,y);
  }
  x = x - (rep*5);
}

void moveUp(int rep) {
  for (int o = 0;o<rep*5;o++) {
    point(x,y-o);
  }
  y = y - (rep*5);
}

void moveDown(int rep) {
  for (int o = 0;o<rep*5;o++) {
    point(x,y+o);
  }
  y = y + (rep*5);
}