PImage image, invertedImage;

//Defining the las y coordinates
int yFinal;
 
void setup() {
  size(800, 500);
  
  image = loadImage("image.jpg"); //Setting the image
  invertedImage = createImage(image.width, image.height, RGB);
  
  //Setting the y coordinates
  yFinal = image.height - 1;
  
  surface.setTitle("Task 04 - Vertical");
}

void draw() {
  image.loadPixels();
  
  for (int x = 0; x < image.width; x++) {
    for (int y = 0; y < image.height; y++) {
      color c = image.get(x, y);
      invertedImage.set(x, yFinal, c);
      
      yFinal--;
    }
    //Resetting the yFinal
    yFinal = image.height - 1;
  }
  
  invertedImage.updatePixels();
  background(invertedImage);
  save("vertical_inverted_image.png");
}
