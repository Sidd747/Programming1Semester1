class Line {
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  Line(float tempX, float tempY, float tempStroke, float tempCount) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempCount;
  }

  void display() {
    strokeW = random(1,7);
    pointCount = random(1, 40);
    stroke(5, random(100), random(200));
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      float a = random(100);
      if (a>70) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, pointCount);
      } else if (a>65) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount);
      } else if (a>55) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount);
      }
    }
  }


  void moveRight(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }




  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i++) {
      point(startX, startY+i);
      xpos = startX;
      ypos = startY+i;
    }
  }




  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i < moveCount; i++) {
      point(startX, startY-i);
      xpos = startX;
      ypos = startY-i;
    }
  }
}