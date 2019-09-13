//Ship
//Jeremiah Wilson 12 Sept 2019

float xPos =0;
float yPos=0;
boolean left=false;
boolean right=false;
boolean up=false;
boolean down=false;
void setup() {
  size(1200, 900);
  background(0);
  fill(0);
  stroke(255);
  xPos=width/2;
  yPos=height/2;
}
void draw() {
  background(0);
  if (left) {
    xPos=xPos - 3;
  }
  if (right) {
    xPos=xPos + 3;
  } else {
    if (up) {
      yPos=yPos - 3;
    }
    if (down) {
      yPos=yPos + 3;
    }
  }

  beginShape(); 
  vertex(xPos-10, yPos-10);
  vertex(xPos, yPos-15);
  vertex(xPos+10, yPos-10);
  vertex(xPos, yPos-40);
  endShape(CLOSE);
  loop();
  if (yPos>900) {
    yPos=0;
  }
  if (xPos>1200) {
    xPos=0;
  }
  if (yPos<0) {
    yPos=900;
  }
  if (xPos<0) {
    xPos=1200;
  }
}
void keyPressed() {
    if (key=='w') {
      up=true;
      down=false;
      right=false;
      left=false;
    }
    if (key=='s') {
      down=true;
      up=false;
      right=false;
      left=false;
    }
    if (key=='a') {
      left=true;
      right=false;
      up=false;
      down=false;
    }
    if (key=='d') {
      right=true;
      left=false;
      up=false;
      down=false;
    }
}
void keyReleased() {
    if (key=='w') {
      up=false;
    }
    if (key=='s') {
      down=false;
    }
    if (key=='a') {
      left=false;
    }
    if (key=='d') {
      right=false;
    }
}
