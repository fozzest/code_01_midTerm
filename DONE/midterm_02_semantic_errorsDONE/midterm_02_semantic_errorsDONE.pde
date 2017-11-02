// QUESTION 2 - 
// Fix all the semantic errors so the code runs as expected

PImage img;
int aNumber = 1;
float[] bunchONumbers = {10, 20, 30};

void setup() {
  size(1000, 1000);
  
  

  for (int i = 0; i <= bunchONumbers.length; i++) {
    println(bunchONumbers[i]);
  }
  
  boolean[] bunchOBools = new boolean[1];
  
  for (int i = 10; i > 30; i++) {
    bunchOBools[i] = true;
    img = loadImage("doge.png");
    image(img, 0, 0, width, height);
  }

  //img = loadImage("doge.png");
  //image(img, 0, 0, width, height);
  

}

void draw(){
  img = loadImage("doge.png");
  image(img, 0, 0, width, height);
}