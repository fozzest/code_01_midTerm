// QUESTION 5 - 
// pressing the button should change the background color. figure out why it doesn't and fix it

int buttonX = 100;
int buttonY = 100;
int buttonW = 100;
int buttonH = 100;

boolean switchState = false;

void setup() {
  size(300, 300);
}

void draw() {
  background(40);

  //if (mousePressed) {
  //  if (mouseX < buttonX && mouseX > buttonW) {
  //    if (mouseY < buttonY && mouseY > buttonH) {
  //      background(255);
  //    }
  //  }
  if (switchState) {
    background(255);
  } else {
    background(40);
  }
  
    
  rect(buttonX, buttonY, buttonW, buttonH);

}

void mousePressed() {
  if (mouseX > buttonX&& mouseX < buttonX +100 & mouseY > buttonY && mouseY < buttonY +100){ 
  switchState = !switchState;
   
  }

}