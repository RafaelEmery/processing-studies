void setup() {
  size(800, 500);
  background(255, 255, 255);
  surface.setTitle("Task 01 - Building");
}

void draw() {
  //Building
  fill(230, 0, 0);
  rect(200, 200, 260, 300);
  
  //Roof
  fill(0, 0, 200);
  triangle(200, 200, 460, 200, 330, 50);
   
  //Door
  fill(160, 82, 45); 
  rect(360, 420, 80, 120);
  fill(0);
  line(400, 420, 400, 500);
  
  //Windows
  fill(255,255,51);
  rect(240, 420, 80, 50);
  fill(0);
  line(280, 420, 280, 470);
  
  fill(255,255,51);
  rect(240, 330, 80, 50);
  fill(0);
  line(280, 330, 280, 380);
  
  fill(0);
  rect(240, 240, 80, 50);
  
  fill(255,255,51);
  rect(360, 330, 80, 50);
  fill(0);
  line(400, 330, 400, 380);
  
  fill(0);
  rect(360, 240, 80, 50);
   
  //Tree
  fill(160, 82, 45); 
  rect(500, 420, 25, 80); 
  
  fill(0, 245, 0);
  ellipse(513, 346, 50, 150);
  
  save('task_01_building.png');
}
