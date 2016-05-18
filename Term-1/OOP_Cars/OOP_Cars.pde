Car[] myCars = new Car[10];
Car myCar1;



void setup() {
  size(600, 600);
  myCar1 = new Car(128, random(width), random(height), random(0, 10));


  for (int i = 0; i < myCars.length; i++) {
    myCars[i]= new Car(128, random(width), random(height), random(0, 10));
  }
}

void draw() {
  background(255);
  myCar1.display();
  myCar1.drive();

  for (int i = 0; i < myCars.length; i++) {
    myCars[i].display();
    myCars[i].drive();
  }
}