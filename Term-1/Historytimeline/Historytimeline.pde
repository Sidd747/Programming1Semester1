

void setup() {
  size(900,400);
}



void draw() {
  background(55);
  fill(255);
  textSize(30);
  text("Historic Computer Systems", 250,50);
  stroke(255);
  strokeWeight(5);
  line(40,225,825,225);
  histEvent("ENIAC: 1946", "the first electronic programmable computer built in the US.\nit was much faster and more flexible.\nIt was unambiguously a Turing complete device\ncould compute any problem that would fit into its memory.",50,150,100,40);
  histEvent("Manchester baby", "first stored program computer\nbuilt at Victoria University of Manchester\nran its first program on 21 June 1948", 150,300,100,40);
  
}


void histEvent(String bText, String dText, int x, int y, int w, int h) {
  stroke(255);
  line(x+10,y+10,x+10,225);
  noStroke();
  fill(100);
  rect(x-2,y+2,w,h,10);
  fill(128);
  rect(x,y,w,h,10);
  fill(255);
  textSize(12);
  text(bText,x+20,y+20);
  if (mouseX >= x && mouseX <= x+w && mouseY >= y && mouseY <= y+h)
    { fill(255,0,0);
      textSize(10);
      text(dText, x-50,y+60);
    }
}

