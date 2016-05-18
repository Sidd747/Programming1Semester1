


CalcButton [] numButtons = new CalcButton[10];
CalcButton [] opButtons = new CalcButton[11];
CalcButton [] spButtons = new CalcButton[1];
String displayValue = "0";
String valuetoCompute = "";
String valuetoCompute2 = "";
float valueToComputeI = 0.0;
float valueToComputeI2 = 0.0;
float result = 0;
String opValue;
boolean firstNum;
char opValueS;


void setup() {

  size(380, 470);
  background(0, 0, 125);
  noFill();
  strokeWeight(3);
  stroke(200);
  fill(255);
  rect(5, 5, 370, 85, 10);

  numButtons[0] = new CalcButton(65, 425).asNumber(0, 60, 30);
  numButtons[1] = new CalcButton(0, 375).asNumber(1, 60, 30);
  numButtons[2] = new CalcButton(65, 375).asNumber(2, 60, 30);
  numButtons[3] = new CalcButton(130, 375).asNumber(3, 60, 30);
  numButtons[4] = new CalcButton(0, 325).asNumber(4, 60, 30);
  numButtons[5] = new CalcButton(65, 325).asNumber(5, 60, 30);
  numButtons[6] = new CalcButton(130, 325).asNumber(6, 60, 30);
  numButtons[7] = new CalcButton(0, 275).asNumber(7, 60, 30);
  numButtons[8] = new CalcButton(65, 275).asNumber(8, 60, 30);
  numButtons[9] = new CalcButton(130, 275).asNumber(9, 60, 30);
  opButtons[0] = new CalcButton(230, 125).asOperator("+", 45, 30);
  opButtons[1] = new CalcButton(300, 125).asOperator("-", 45, 30);
  opButtons[2] = new CalcButton(300, 425).asOperator("=", 60, 30);
  opButtons[3] = new CalcButton(230, 170).asOperator("*", 45, 30);
  opButtons[4] = new CalcButton(0, 425).asOperator("C", 60, 30);
  opButtons[5] = new CalcButton(300, 170).asOperator("/", 45, 30);
  opButtons[6] = new CalcButton(230, 220).asOperator("^2", 45, 30);
  opButtons[7] = new CalcButton(300, 220).asOperator("SqRt", 65, 30);
  opButtons[8] = new CalcButton(230, 270).asOperator("+-", 45, 30);
  opButtons[9] = new CalcButton(300,270).asOperator("^",45,30);
  opButtons[10] = new CalcButton(230,320).asOperator("sin",55,30);
  spButtons[0] = new CalcButton(130, 425).asSpecial(".", 60, 30);
  displayValue = "";
  firstNum = true;
}

void draw() {
  background(0, 0, 125);
  fill(255);
  //text(valueToComputeI,10,150);
  //text(valueToComputeI2,10,170);
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].clickButton(mouseX, mouseY);
  }
  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].clickButton(mouseX, mouseY);
  }
  for (int i = 0; i<spButtons.length; i++) {
    spButtons[i].display();
    spButtons[i].clickButton(mouseX, mouseY);
  }
  updateDisplay();
}

void performCalculation() {
  valueToComputeI = float(valuetoCompute);
  valueToComputeI2 = float(valuetoCompute2);

  if (opValue == "+") {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } 


  else if (opValue == "-") {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } 

 
  else if (opValue == "*") {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } 

  
  else if (opValue == "/") {
    result = valueToComputeI/valueToComputeI2;
    displayValue = str(result);
  } 

  
   else if (opValue == "^2") {
    result = valueToComputeI*valueToComputeI;
    displayValue = str(result);
  } 
  
  else if (opValue == "SqRt") {
    result = sqrt(valueToComputeI);
    displayValue = str(result);
  }
  
  else if (opValue == "+-") {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
      valuetoCompute = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str(valueToComputeI2);
    }
  }
  else if (opValue == "^") {
    result = pow(valueToComputeI,valueToComputeI2);
    displayValue = str(result);
  }
  
  else if (opValue == "sin") {
    result = sin(valueToComputeI);
    displayValue = str(result);
  }
  
}

void updateDisplay() {
  rect(5, 5, 370, 85, 10);
  fill(0);
  //textSize(20);
  //text(displayValue, 20, 37);
  text(displayValue, 20, 41);
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].clickButton(mouseX, mouseY);
    if (numButtons[i].overBox) {
      if (firstNum) {
        println(i + " " + numButtons[i].numButtonValue);
        valuetoCompute += int(numButtons[i].numButtonValue);
        displayValue = valuetoCompute;
      } else {
        valuetoCompute2 += int(numButtons[i].numButtonValue);
        displayValue = valuetoCompute2;
      }
    }
  }
  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i].clickButton(mouseX, mouseY);
    if (opButtons[i].overBox) {
      if (opButtons[i].opValue == "C") {
        displayValue = "";
        opValue = "C";
        valuetoCompute = "";
        valuetoCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI2 = 0;
        result = 0;
        firstNum = true;
      } else if (opButtons[i].opValue == "=") {
        firstNum = true;
        performCalculation();
      } else if (opButtons[i].opValue == "-") {
        if (result != 0) {
          opValue = "-";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else {
          opValue = "-";
          firstNum = false;
          displayValue = "-";
        }
      } else if (opButtons[i].opValue == "+") {
        if (result != 0) {
          opValue = "+";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opValue = "+";
          firstNum = false;
          displayValue = "+";
        }
      } else if (opButtons[i].opValue == "*") {
        if (result != 0) {
          opValue = "*";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "*";
        } else {
          opValue = "*";
          firstNum = false;
          displayValue = "*";
        }
      } else if (opButtons[i].opValue == "/") {
        if (result != 0) {
          opValue = "/";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "/";
        } else {
          opValue = "/";
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButtons[i].opValue == "^2") {
        if (result != 0) {
          opValue = "^2";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "^2";
        } else {
          opValue = "^2";
          firstNum = false;
          displayValue = "^2";
        }
      } else if (opButtons[i].opValue == "SqRt") {
        if (result != 0) {
          opValue = "SqRt";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "SqRt";
        } else {
          opValue = "SqRt";
          firstNum = false;
          displayValue =  "SqRt";
        }
      } else if (opButtons[i].opValue == "+-") {
        opValue = "+-";
        performCalculation();
      }
      else if (opButtons[i].opValue == "^") {
        if (result != 0) {
          opValue = "^";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "^";
        } else {
          opValue = "^";
          firstNum = false;
          displayValue = "^";
        }
      }
      else if (opButtons[i].opValue == "sin") {
        if (result != 0) {
          opValue = "sin";
          valuetoCompute2 = "";
          firstNum = false;
          displayValue = "sin";
        } else {
          opValue = "sin";
          firstNum = false;
          displayValue = "sin";
        }
        
      }
    }
  }
  for (int i = 0; i<spButtons.length; i++) {
    spButtons[i].clickButton(mouseX, mouseY);
    if (spButtons[i].overBox) {
      if (spButtons[i].spValue == ".") {
        if (spButtons[i].overBox && firstNum == true) {
          valuetoCompute += spButtons[i].spValue;
          displayValue = valuetoCompute;
        } else if (spButtons[i].overBox && firstNum == false) {
          valuetoCompute2 += spButtons[i].spValue;
          displayValue = valuetoCompute2;
        }
      }
    }
  }
}