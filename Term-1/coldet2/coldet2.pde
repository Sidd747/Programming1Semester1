//Siddhant Devaru
//Collision Detection 2

//Declaring global variables
int xspeed, yspeed;
int xpos, ypos, wdth, ht;

//Setup runs once
void setup() {
  size(displayWidth, displayHeight);
  background(0); //inverse background
  xspeed = 0; //same x position
  yspeed = 10;
  wdth = 20; //double width of ball
  ht = 20;   //double heighth of ball
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(30); //speed of animation halved
}

// Draw is a loop
void draw() {
  //background(0) ball path
  fill(255); //inverse ball color
  ellipse(xpos+50, ypos+50, wdth, ht); //second ball
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    yspeed = yspeed * -1;
  }
  println(frameCount);
}

//formatting error is second if isn't lined up with first if. 

