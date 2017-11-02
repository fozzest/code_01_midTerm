// QUESTION 6 -
// map() the values properly so that the clock hands are displayed at the correct angle

int seconds;
int minutes;
int hours;

void setup() {
  size(400,400);
}

void draw() {
  background(255);
  
  fill(220);
  noStroke();
  ellipse(width/2, height/2, 230, 230);
  
  // these are the values that need mapping
  
  
  //mapping to 12:38pm
  
  
  seconds = second();
  minutes = minute();
  hours = hour();
   
  stroke(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(map(seconds,0,59,0,59)));
  strokeWeight(1);
  line(0, 0, 0, -100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(map(minutes,0,59,38,40)));
  strokeWeight(2);
  line(0, 0, 0, -80);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(map(hours,0,23,12,13)));
  strokeWeight(3);
  line(0, 0, 0, -60);
  popMatrix();
}