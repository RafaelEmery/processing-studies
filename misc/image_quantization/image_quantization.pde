import milchreis.imageprocessing.*;

PImage image, quantImage;

void setup() {
  size(800, 500);
  
  image = loadImage("city.jpg");
  quantImage = Quantization.apply(image, 1);
  
  surface.setTitle("Quantização de imagens");
}

void draw() {
  image(quantImage, 0, 0, width, height);
  
  save("quantizated_image.jpg");
}
