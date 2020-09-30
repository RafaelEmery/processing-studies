PImage img;

void setup() {
  size(800, 500);
  img = loadImage("image.jpg"); //Setting the image
  surface.setTitle("Task 03 - Invert Image Colors");
}

void draw() {
  image(img, 0, 0);
  
  //Loading pixels
  loadPixels();
  img.loadPixels();
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y * width;
      
      float red = red(img.pixels[loc]);
      float green = green(img.pixels[loc]);
      float blue = blue(img.pixels[loc]);
      
      //Inverting the colour
      float newRed = 255 - red;
      float newGreen = 255 - green;
      float newBlue = 255 - blue;
      
      //Setting the new colors (inverted) in every pixel
      pixels[loc] = color(newRed, newGreen, newBlue);
    }
  }
  
  //Updating the all the pixels with inverted colours
  updatePixels();
  save("image_inverted_colors.png");
}
