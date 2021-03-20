void setup() {
    size(200, 200, P3D);
    background(0);
    noStroke();
}

void draw() {
    // Sets the default ambient
    // and directional light
    // Include lights() at the beginning
    // of draw() to keep them persistent
    lights();
    translate(20, 50, 0);
    sphere(30);
    translate(60, 0, 0);
    sphere(30);
}
