/* IOIO Test 2 -
 * Toggling the onboard LED on the IOIO board and changing rectangle size through Processing in Android mode
 * by Ben Leduc-Mills
 * This code is Beerware - feel free to reuse and credit me, and if it helped you out and we meet someday, buy me a beer.
 */
 
////import apwdidgets
//import apwidgets.*;
 
//import ioio
import ioio.lib.util.*;
import ioio.lib.impl.*;
import ioio.lib.api.*;
import ioio.lib.api.exception.*;
 
//make a widget container and a button
//APWidgetContainer widgetContainer;
//APButton button1;
 
//our rectangle size
int rectSize = 100;
 
//boolean to turn the light on or off
boolean lightOn = false;
 
//create a IOIO instance
IOIO ioio = IOIOFactory.create();
 
//create a thread for our IOIO code
myIOIOThread thread1; 
 
void setup() {
 
  //instantiate our thread
  thread1 = new myIOIOThread("thread1", 100);
  //start our thread
  thread1.start();
 
  size(480, 800);
  smooth();
  noStroke();
  fill(255);
  //rectMode(CENTER);     //This sets all rectangles to draw from the center point
 
  //create new container for widgets
  //widgetContainer = new APWidgetContainer(this); 
 
  //create new button from x- and y-pos. and label. size determined by text content
  //button1 = new APButton(10, 10, "Toggle LED"); 
 
  //place button in container
  //widgetContainer.addWidget(button1);
}
 
void draw() {
  background(#FF9900);
  
  fill(0);
  rect(0, 0, 300, 100);
  
  fill(255);
  rect(width/2, height/2, rectSize, rectSize);
}
 
//onClickWidget is called when a widget is clicked/touched
void mousePressed() {
 
  if (inButton(0, 0, 300, 100)) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size
 
    if (lightOn == true) {
      lightOn = false;
      rectSize = 50;
    }
    else if (lightOn == false) {
      lightOn = true;
      rectSize = 100;
    }
  }
}

boolean inButton(int buttonX, int buttonY, int buttonW, int buttonH) {
  return mouseX > buttonX && mouseX < buttonX + buttonW && mouseY > buttonY && mouseY < buttonY + buttonH;
}
