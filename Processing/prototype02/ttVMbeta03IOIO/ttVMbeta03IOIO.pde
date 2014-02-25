// - - - - - - - - - - - - - - - - - - - - - - - 
// CrateLogger v01 06-30-13
// BY SCOTT SULLIVAN / GOINVO.COM
// - - - - - - - - - - - - - - - - - - - - - - -

// FEATURES TO ADD

// - - main functionaility
// Credit card payment
// Bluetooth connectivity to IOIO

// - - minor functionality
// get rid of Android bar at bottom
// get rid of screen timeout
// get app to read from web (just change the paths with internet permissions enabled)


// - - - - - - - - - - - - - - - - - - - - - - - 
// LIBRARIES
// - - - - - - - - - - - - - - - - - - - - - - - 
import ioio.lib.util.*;
import ioio.lib.impl.*;
import ioio.lib.api.*;
import ioio.lib.api.exception.*;

// - - - - - - - - - - - - - - - - - - - - - - - 
// GLOBAL VARIABLES
// - - - - - - - - - - - - - - - - - - - - - - - 
ArrayList<Item> items = new ArrayList(); // array list stores values forever
PImage logo, small0, small1, small2, small3, small4, large0, large1, large2, large3, large4;
int selector = 5;
boolean homepage;

//our rectangle size
int rectSize = 100;

//boolean to turn the light on or off
boolean light1On = false;
boolean light2On = false;
boolean light3On = false;
boolean light4On = false;
boolean light5On = false;

//create a IOIO instance
IOIO ioio = IOIOFactory.create();

//create a thread for our IOIO code
myIOIOThread thread1; 


// - - - - - - - - - - - - - - - - - - - - - - - 
// SETUP
// - - - - - - - - - - - - - - - - - - - - - - - 
void setup() {
  //instantiate our thread
  thread1 = new myIOIOThread("thread1", 100);
  //start our thread
  thread1.start();

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
  if (homepage) {
    coverPage();
  } 
  else {
    items.get(selector).displayPage();
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

    if (light1On == true) {
      light1On = false;
      rectSize = 50;
    }
    else if (light1On == false) {
      light1On = true;
      rectSize = 100;
    }
  }

  //top right button
  if (inButton(width/3 * 2, 400, 200, 200) && homepage) {
    homepage = false;
    selector = 1;

    if (light2On == true) {
      light2On = false;
      rectSize = 50;
    }
    else if (light2On == false) {
      light2On = true;
      rectSize = 100;
    }
  }

  //middle left button
  if (inButton(width/3, 666, 200, 200) && homepage) {
    homepage = false;
    selector = 2;

    if (light3On == true) {
      light3On = false;
      rectSize = 50;
    }
    else if (light3On == false) {
      light3On = true;
      rectSize = 100;
    }
  }

  //middle right button
  if (inButton(width/3 * 2, 666, 200, 200) && homepage) {
    homepage = false;
    selector = 3;

    if (light4On == true) {
      light4On = false;
      rectSize = 50;
    }
    else if (light4On == false) {
      light4On = true;
      rectSize = 100;
    }
  }

  //bottom left button
  if (inButton(width/3, 932, 200, 200) && homepage) {
    homepage = false;
    selector = 4;

    if (light5On == true) {
      light5On = false;
      rectSize = 50;
    }
    else if (light5On == false) {
      light5On = true;
      rectSize = 100;
    }
  }

  //back button
  if (inButton(100, 35, 200, 70) && !homepage) {
    homepage = true;
    selector = 5;
    
    light1On = false;
    light2On = false;
    light3On = false;
    light4On = false;
    light5On = false;
  }
}

