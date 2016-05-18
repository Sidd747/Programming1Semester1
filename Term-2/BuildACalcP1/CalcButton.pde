class CalcButton {
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opValue;
  String spValue;
  float x;
  float y;
  int boxSize;
  int buttonW;
  int buttonH;
  boolean overBox;


  CalcButton(float x, float y) {
    this.x = x;
    this.y = y;
  }

  CalcButton asNumber(float tempnumButtonValue, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempnumButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  CalcButton asOperator(String tempopVal, int tempW, int tempH) {
    opValue = tempopVal;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  CalcButton asSpecial(String tempspValue, int tempW, int tempH) {
    isSpecial = true;
    buttonW = tempW;
    buttonH = tempH;
    spValue =tempspValue;
    return this;
  } 

  void display() {
    if (isNumber) {
      if (overBox) {
        fill(200);
      } else {
        fill(177);
      }
      stroke(0);
      strokeWeight(2);
      rect(x, y, buttonW, buttonH);
      fill(255);
      textSize(20);
      text(int(numButtonValue), x + 23, y + 23);
    } else if (isSpecial) {
      fill(200);
      stroke(0);
      strokeWeight(2);
      rect(x, y, buttonW, buttonH);
      fill(255);
      textSize(25);
      text(spValue, x + 25, y + 16);
    } else { //for operators 
      if (overBox) {
        fill(0, 180, 0);
      } else {
        fill(0, 200, 0);
      }
      if (opValue == "=") {
        fill(0,240,255);
        stroke(0);
        strokeWeight(2);
        rect(x-50, y-50, buttonW+25, buttonH+25);
        fill(0);
        textSize(40);
        text( opValue, x-20, y-10 );
      } else if (opValue == "C") {
        if (overBox) {
          fill(200);
        } else {
          fill(177);
        }
        stroke(0);
        strokeWeight(2);
        rect(x, y, buttonW, buttonH);
        fill(255);
        textSize(20);
        text( opValue, x + 17, y + 20);
      }
      else {
        stroke(0);
        strokeWeight(2);
        rect(x, y, buttonW, buttonH);
        fill(255);
        textSize(20);
        text( opValue, x + 17, y + 20);
      }
    }
  }

  void clickButton(int xpos, int ypos) {
    if (opValue == "=") {
      overBox = xpos > x-50 && xpos < x + buttonW+25 && ypos > y-50 && ypos < y+buttonH+25;
    } else {
      overBox = xpos > x && xpos < x + buttonW && ypos > y && ypos < y+buttonH;
    }
  }
}