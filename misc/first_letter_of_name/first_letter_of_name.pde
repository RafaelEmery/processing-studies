void setup(){
  size(800, 500);
  background(255, 255, 255);
  
  surface.setTitle("First Letter of my Name");
}

void draw(){
  line(400, 250, 460, 310);
  line(400, 150, 400, 310);
  arc(410, 200, 100, 100, radians(260), radians(460));
  
  strokeWeight(10);
  
  save("first_letter.jpg");
}
