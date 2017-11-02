// QUESTION 4 -
// this is currently drawing an angled line of rectangles - it should draw a square grid.

void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 0; i <=width; i++) {
    for (int j = 0; j <=height; j++) {
      
      
      rect(i*50 , j*50, 25, 25);
    }
  }
}