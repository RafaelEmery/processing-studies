//Task 1:

//Setting the basic configs
void setup() {
  size(500, 500);
  background(255, 255, 255);
}

void draw() {
  //Rectangle
  rect(100, 100, 50, 50);
  
  //Line
  line(400, 400, 200, 350);
  
  //Translated circle
  translate(250, 250);
  ellipse(0, 0, 100, 100);
  
  //Saving image
  saveFrame("list_1_1.png");
}
