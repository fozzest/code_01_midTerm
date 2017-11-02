// QUESTION 3
// Make the lines follow the mouse as a trail behind the mouse position correctly
// The position is off and so is the assignment

float[] xPositions = new float[100];
float[] yPositions = new float[100];

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  for (int i = 0; i < xPositions.length - 1; i++) {
    line(xPositions[i], yPositions[i], xPositions[i+1], yPositions[i+1]);
  }

  for (int i = xPositions.length - 1; i > 0; i--) {
    //xPositions[i] = xPositions[i-1];
    //yPositions[i] = yPositions[i-1];
     xPositions[i-1]=mouseX;
    yPositions[i-1]=mouseY;
  }

  //xPositions[0] = mouseY;
  //yPositions[0] = mouseX;
}