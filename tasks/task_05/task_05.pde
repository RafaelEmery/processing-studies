PImage image, rotatedImage;

void setup() {
  size(800, 500);
  
  image = loadImage("image.jpg"); //Setting the image
  rotatedImage = createImage(image.width + 200, image.height + 200, RGB);
  
  surface.setTitle("Task 05 - Rotating Image");
}

void rotate(float degrees) {
  
  for (int x = 0; x < image.width; x++) {
    for (int y = 0; y < image.height; y++ ) {
      color c = image.get(x,y);
 
      rotatedImage.set(rotateX(degrees, x, y), rotateY(degrees, x, y) + 220, c);    
    }
  }
  rotatedImage.updatePixels();
   
  //Showing and saving image
  image(rotatedImage, 0, 0, 600, 400);
  save("rotated_image.png");
}

//Rotating the x pixels
int rotateX(float degrees,int x, int y) {
  return round(((x * cos(degrees)) + y * (-sin(degrees))));
}

//Rotating the y pixels
int rotateY(float degrees, int x, int y) {
  return round((x * sin(degrees) + ((cos(degrees)) * y)));
}

void draw() {
  image.loadPixels();
  
  //Function to rotate the image
  rotate(radians(-15));
}
