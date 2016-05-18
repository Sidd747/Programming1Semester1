class Spaceship {
  color c;
  float x;
  float y;
  float z;
  float a;
  float b;
  float d;
  float speed;
  float left;
  
  Spaceship(color tempC,float tempX, float tempY, float tempSpeed, float tempZ, float tempA, float tempB, float tempD) {
    x = tempX;
    y = tempY;
    z = tempZ;
    a = tempA;
    b = tempB;
    d = tempD;
    speed = tempSpeed;
    left = random(2);
  }
  
  void display() {
    fill(c);
    triangle(x,y,z,a,b,d);
    ellipse(x,y,z,a);
    textSize(23);
    text("USS BUDDHA", x+10, y);
    }
    
  void fly() {
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