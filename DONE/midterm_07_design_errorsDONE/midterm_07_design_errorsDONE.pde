// QUESTION 7
// currently this sketch has an array of Walker type objects that get instantiated individually when the mouse is pressed.
// because the array is of limited length, eventually it overflows if the mouse button is pushed long enough.
// fix the code to make sure that the overflow doesn't happen. 
// you could do this via logic with the walker counter, or using an ArrayList instead of an array.
ArrayList<Walker> walkers = new ArrayList<Walker>();


int whichWalker = 0;

void setup() {
  size(600,600);
  background(255);
}

void draw() {
  for (int i = 0; i < walkers.size(); i++) {
    
    Walker w = walkers.get(i);
    w.update();
    w.display();
  }

  
} 
  
  void mousePressed() {
  
  walkers.add(new Walker(mouseX,mouseY));
  


}