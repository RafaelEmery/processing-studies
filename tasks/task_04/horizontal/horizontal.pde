PImage image, invertedImage;

//Defining the las x coordinates
int xFinal;
  
void setup() {
  size(800, 500);
  
  image = loadImage("image.jpg"); //Setting the image
  invertedImage = createImage(image.width, image.height, RGB);
  
  //Setting the x coordinates
  xFinal = image.width - 1;
  
  surface.setTitle("Task 04 - Horizontal");
}

void draw() {
  image.loadPixels();
  
  for (int x = 0; x < image.width; x++) {
    for (int y = 0; y < image.height; y++) {
      color c = image.get(x, y);
      invertedImage.set(xFinal, y, c);
    }
    
    xFinal--;
  }
  
  invertedImage.updatePixels();
  background(invertedImage);
  save("horizontal_inverted_image.png");
}
