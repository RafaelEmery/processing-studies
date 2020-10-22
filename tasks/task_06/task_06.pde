PImage image, rotatedImage;

void setup() {
  size(800, 500);
  
  image = loadImage("image.jpg"); //Setting the image
  rotatedImage = createImage(image.width + 200, image.height + 200, RGB);
  
  surface.setTitle("Task 06 - Reverse Rotating Image");
}

void draw() {
 image.loadPixels();
 
 reverseRotating();
 
 image(rotatedImage, 0, 0, 800, 500);
 save("reverseRotatedImage.png");
}

void reverseRotating() {
  for (int x = 0; x < image.width; x++) {
    for (int y = 0; y < image.height; y++ ) {
      
      float rotatedY, rotatedX ;

      color c = image.get(x,y);
      rotatedX = reversedRotateX(radians(33), x, y);      
      rotatedY = reversedRotateY(radians(33), x, y);

      rotatedImage.set((int)rotatedX,(int)rotatedY + 350, c);
    }
  }
  rotatedImage.updatePixels();
  
  for (int x = 0; x < rotatedImage.width; x++) {
    for (int y = -350; y < rotatedImage.height; y++ ) {
      float rotatedX = rotateX(radians(33), x, y);
      float rotatedY = rotateY(radians(33), x, y);
      
      color c = getPx(rotatedX,rotatedY);
      
      rotatedImage.set(x,y + 350, c);
      
     }
  }
  rotatedImage.updatePixels();
}

//Reverse rotating the x pixels
float reversedRotateX(float grau, int x, int y){  
  return ((x * cos(radians(grau))) + y * (sin(radians(grau))));
}

//Reverse rotating the y pixels
float reversedRotateY(float grau,int x, int y){
  return ((x * (-sin(radians(grau)))) + y * cos(radians(grau)));
}

//Rotating the x pixels
int rotateX(float degrees,int x, int y) {
  return round(((x * cos(degrees)) + y * (-sin(degrees))));
}

//Rotating the y pixels
int rotateY(float degrees, int x, int y) {
  return round((x * sin(degrees) + ((cos(degrees)) * y)));
}

//Getting the pixels 
color getPx (float x, float y){
       
      //Red pixels
      float pixelARed = red(image.get(floor(x), floor(y)));
      float pixelBRed = red(image.get(ceil(x), floor(y)));
      float pixelCRed = red(image.get(floor(x), ceil(y)));
      float pixelDRed = red(image.get(ceil(x), ceil(y)));
       
       //Green pixels
      float pixelAGreen = green(image.get(floor(x), floor(y)));
      float pixelBGreen = green(image.get(ceil(x), floor(y)));
      float pixelCGreen = green(image.get(floor(x), ceil(y)));
      float pixelDGreen = green(image.get(ceil(x), ceil(y)));
      
      //Blue pixels
      float pixelABlue = blue(image.get(floor(x), floor(y)));
      float pixelBBlue = blue(image.get(ceil(x), floor(y)));
      float pixelCBlue = blue(image.get(floor(x), ceil(y)));
      float pixelDBlue = blue(image.get(ceil(x), ceil(y)));
      
      float Dcol = (( x - floor(x) ));
      float Dlin = (( y - floor(y) ));
      
      float ctrlABRed = (Dcol * (pixelBRed - pixelARed)) + pixelARed;
      float ctrlCDRed = (Dcol * ( pixelDRed - pixelCRed)) + pixelCRed;
      
      float ctrlABGreen = (Dcol * (pixelBGreen - pixelAGreen)) + pixelAGreen;
      float ctrlCDGreen = (Dcol * ( pixelDGreen - pixelCGreen)) + pixelCGreen;
      
      float ctrlABBlue = (Dcol * (pixelBBlue - pixelABlue)) + pixelABlue;
      float ctrlCDBlue = (Dcol * ( pixelDBlue - pixelCBlue)) + pixelCBlue;
      
      float PxRed = Dlin * (ctrlCDRed - ctrlABRed) + ctrlABRed ;
      float PxGreen = Dlin * (ctrlCDGreen - ctrlABGreen) + ctrlABGreen ;
      float PxBlue = Dlin * (ctrlCDBlue - ctrlABBlue) + ctrlABBlue ;
      
      return color(PxRed, PxGreen, PxBlue);
}
