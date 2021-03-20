void setup() {
    size(800, 500, P3D);
    background(255, 255, 255);
    surface.setTitle("Task 08 - Building with lights");
}

void draw() {
    lights();
    background(135, 206, 235);

    createBuildind();
    
    if ((mouseX > 0 && mouseX < 100) && (mouseY > 0 && mouseY < 100)) {
        background(255, 0, 0);
    }
    else if ((mouseX > 100 && mouseX < 200) && (mouseY > 0 && mouseY < 100)) {
        background(0, 255, 0);
    }
    else if ((mouseX > 0 && mouseX < 100) && (mouseY > 100 && mouseY < 200)) {
        background(255, 255, 0);
    }
    else if ((mouseX > 200 && mouseX < 300) && (mouseY > 200 && mouseY < 300)) {
        background(0, 0, 255);
    }
    else if ((mouseX > 500 && mouseX < 600) && (mouseY > 400 && mouseY < 500)) {
        background(0, 0, 0);
    }
}

void createBuildind() {
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
    // ellipse(x, y, width, height);
}
