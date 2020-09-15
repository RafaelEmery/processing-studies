//set the inicials config (size, color, background)
//executed a single time
void setup() {
  size(600, 400); 
  stroke(255);
  background(255, 255, 255);
  surface.setTitle("Making random 2D stuff to learn!");
}

//repeat this code throught the code's execution
void draw() {
  //Black ellipse
  fill(0, 0, 0);
  ellipse(300, 200, 100, 100);
  
  //Black line
  line(130, 50, 85, 175);
  stroke(0);
  
  //Red square
  fill(255, 0, 0);
  square(30, 20, 30);
}
