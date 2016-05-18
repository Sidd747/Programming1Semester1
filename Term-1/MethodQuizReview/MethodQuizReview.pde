void setup() {}



void draw() {
  background(0);
  text(minusOne(mouseX), 10, 20);
  text(numCounter(mouseX), 10, 35);
  text(str(isPositive(mouseX)), 10, 60);
  text(converToPercent(mouseX), 30, 35);

}




int minusOne(int r) {
  int n = r - 1;
  return n;
}


int numCounter(int n) {
  n++;
  return n;
}

boolean isPositive(int i) {
  if(i>=0) {
    return true;
  }
  
  return false;
  
}

float converToPercent(float b) {
  float p = b*0.01;
  return p;
}