//Siddhant Devaru
//Computer Programming 1
//Period 4B







void setup() {
  size(400,400);
}



void draw() {
  button("I am",200,200,100,40);
  button("Hi",100,50,100,40);
  button("Sidd",250,270, 100,100);
}



void button(String bText,int a, int b, int w, int h) {
  noStroke();
  rectMode(CENTER);
  fill(145);
  rect(a-5,b+5,w,h,25,25,25,25);
  fill(255,0,0);
  rect(a,b,w,h,25,25,25,25);
  fill(0);
  textSize(30);
  text(bText, a-50,b+10);
  
}
