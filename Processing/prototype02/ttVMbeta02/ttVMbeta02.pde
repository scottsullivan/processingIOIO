// - - - - - - - - - - - - - - - - - - - - - - - 
// CrateLogger v01 06-30-13
// BY SCOTT SULLIVAN / GOINVO.COM
// - - - - - - - - - - - - - - - - - - - - - - -

// FEATURES TO ADD

// - - 


// - - - - - - - - - - - - - - - - - - - - - - - 
// LIBRARIES
// - - - - - - - - - - - - - - - - - - - - - - - 


// - - - - - - - - - - - - - - - - - - - - - - - 
// GLOBAL VARIABLES
// - - - - - - - - - - - - - - - - - - - - - - - 
ArrayList<Item> items = new ArrayList(); // array list stores values forever
PImage logo, small0, small1, small2, small3, small4, large0, large1, large2, large3, large4;
int selector = 5;
boolean homepage;
// objects

// - - - - - - - - - - - - - - - - - - - - - - - 
// SETUP
// - - - - - - - - - - - - - - - - - - - - - - - 
void setup() {
  size(800, 1280);
  noStroke();
  rectMode(CENTER);
  imageMode(CENTER);
  homepage = true;

  loadData("controlSheet.csv");
  logo = loadImage("logo.png");
  small0 = loadImage(items.get(0).largeImage);
  small1 = loadImage(items.get(1).largeImage);
  small2 = loadImage(items.get(2).largeImage);
  small3 = loadImage(items.get(3).largeImage);
  small4 = loadImage(items.get(4).largeImage);
  large0 = loadImage(items.get(0).largeImage);
  large1 = loadImage(items.get(1).largeImage);
  large2 = loadImage(items.get(2).largeImage);
  large3 = loadImage(items.get(3).largeImage);
  large4 = loadImage(items.get(4).largeImage);
}


// - - - - - - - - - - - - - - - - - - - - - - - 
// DRAW LOOP
// - - - - - - - - - - - - - - - - - - - - - - - 
void draw() {
  background(255);
  //  fill(#FF0000);
  //  rect(width-125, height-40, 125, 40);
  //  fill(255);
  //  textAlign(LEFT);
  //  text("RESTORE DEFAULT", width-62, height-15);
  if (homepage) {
    coverPage();
  } 
  else {
    items.get(selector).displayPage();
    //itemPage();
  }
  println(selector);
}


// - - - - - - - - - - - - - - - - - - - - - - - 
// UNIVERSAL INTERACTIVE EVENTS
// - - - - - - - - - - - - - - - - - - - - - - - 

boolean inButton(int buttonX, int buttonY, int buttonW, int buttonH) {
  return mouseX > buttonX - buttonW/2 && mouseX < buttonX + buttonW/2 && mouseY > buttonY - buttonH/2 && mouseY < buttonY + buttonH/2;
}

void mousePressed() {
  //top left button
  if (inButton(width/3, 400, 200, 200) && homepage) {
    homepage = false;
    selector = 0;
  }

  //top right button
  if (inButton(width/3 * 2, 400, 200, 200) && homepage) {
    homepage = false;
    selector = 1;
  }

  //middle left button
  if (inButton(width/3, 666, 200, 200) && homepage) {
    homepage = false;
    selector = 2;
  }

  //middle right button
  if (inButton(width/3 * 2, 666, 200, 200) && homepage) {
    homepage = false;
    selector = 3;
  }
  //bottom left button
  if (inButton(width/3, 932, 200, 200) && homepage) {
    homepage = false;
    selector = 4;
  }

  //back button
  if (inButton(100, 35, 200, 70) && !homepage) {
    homepage = true;
    selector = 5;
  }
  //  else {
  //    if (inButton(width-100, 0, 100, 40) && editTargetButton) {
  //      theTarget.writeToCsv();
  //      editTargetButton = !editTargetButton;
  //    }
  //  }
}

