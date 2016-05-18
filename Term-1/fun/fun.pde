void setup()
{
size(200, 200); 
}
void draw()
{
  background(0);
for (int i = 5; i <= width; i += 5) {
  for (int y = 5; y <= height; y += 5) {
    fill(random(222));
    rectMode(CENTER);
    rect(i,y,10,10);
    }
    
}
}
