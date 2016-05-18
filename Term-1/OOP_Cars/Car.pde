class Car {
  color c;
  float x;
  float y;
  float speed;
  float left;
  Car(color tempC, float tempX, float tempY, float tempSpeed) {
    c = tempC;
    x = tempX; 
    y = tempY;
    speed = tempSpeed;
    left = random(2);
  }

  void display() {
    fill(c);
    rect(x, y, 30, 10,20,20,20,20);
    ellipseMode(CENTER);
    fill(0);
    ellipse(x+30, y+10, 5, 5);
    ellipse(x,y+10,5,5);
    textSize(14);
    text("S", x+10, y);
  }
  void drive() {
    if (left<= 1) {
      x = x - speed;
      if (x < 0) {
        x = width;
      }
    } else {
      x = x + speed;
      if (x > width) {
        x = 0;
      }
    }
  }
}