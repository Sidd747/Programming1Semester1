//Class Name
class Button {
  //Class variables/member variables. 
  boolean button;
  int x, y, w, h;



  //Class contstructor
  Button(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    button = false;
  }



  // Class Attributes
  void display() {
    if (button) {
      fill(0);
      text("Button ON: " + str(button), x-10, y-10);
      fill(55);
      rect(x, y, w, h);
    } else if (!button) {
      fill(0);
      text("Button ON: " + str(button), x-10, y-10);
      fill(222);
      rect(x, y, w, h);
    }
  }


  //Class behavior
  void clickButton() {
    if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
      button = !button;
    }
  }
}