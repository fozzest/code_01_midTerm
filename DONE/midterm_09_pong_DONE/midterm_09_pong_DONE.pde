// QUESTION 9 - 
// put together a skeleton Pong game.

// create a bouncing ball that starts in the middle of the screen 
// either use a class or independent variables, it doesn't matter
// make it bounce only on the top and bottom walls
// create two paddles. this can also be a class or not
// have key presses control the up and down movement of the paddles independently
// make the ball reverse x direction when it touches the paddles
// return the ball to the middle of the screen with a random position when it goes off screen
// keep score for the two players

float blue = 400;
float red = 400;

float x = width/2;
float y = height/2;
float r = 40;
float dx = 3;
float dy = 3;
float gravity = 0.8;

void setup() {
  size(800, 800);
}

void draw() {
  background(200);
 
    

  fill(255);
  
  
  fill(0,0,255);
  rect(10, blue,20, 100); 
  
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      blue = blue -4;
    }
  } else {
    blue = blue;
  }
  
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      blue = blue +4;
    }
  } else {
    blue = blue;
  }
  
  
  fill(255,0,0);
  rect(780, red ,20, 100);
  
  if (keyPressed) {
    if (key == 'i' || key == 'I') {
      red = red -4;
    }
  } else {
    red = red;
  }
  
  if (keyPressed) {
    if (key == 'k' || key == 'K') {
      red = red +4;
    }
  } else {
    red = red;
  }
  
  
  
  fill(255);
  ellipse(x, y, r*2, r*2);
    
  x +=  dx;
  y += dy;


if (x > 750 && y <= red +50 ) {
   dx = -dx;
   //y = y -dy;
}

if (x < 10 && y <= blue +50 ) {
   dx = -dx;
   //y = y -dy;
}



  if (x > width - r || x < r) {
    x = 100;
    y = 100;
  }
  
  

  if (y > height - r || y < r) {
    dy = -dy;
  }
  
  
}