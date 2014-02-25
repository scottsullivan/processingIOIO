/* IOIO Test 2 -
 * Toggling the onboard LED on the IOIO board and changing rectangle size through Processing in Android mode
 * by Ben Leduc-Mills
 * This code is Beerware - feel free to reuse and credit me, and if it helped you out and we meet someday, buy me a beer.
 */

//import apwdidgets
import apwidgets.*;

//import ioio
import ioio.lib.util.*;
import ioio.lib.impl.*;
import ioio.lib.api.*;
import ioio.lib.api.exception.*;

//make a widget container and a button
APWidgetContainer widgetContainer;
APButton button1;
APButton button2;
APButton button3;
APButton button4;
APButton button5;

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

void setup() {

  //instantiate our thread
  thread1 = new myIOIOThread("thread1", 100);
  //start our thread
  thread1.start();

  size(480, 800);
  smooth();
  noStroke();
  fill(255);
  rectMode(CENTER);     //This sets all rectangles to draw from the center point

  //create new container for widgets
  widgetContainer = new APWidgetContainer(this); 

  //create new button from x- and y-pos. and label. size determined by text content
  button1 = new APButton(10, 10, "Toggle LED 1");
  button2 = new APButton(10, 50, "Toggle LED 2"); 
  button3 = new APButton(10, 90, "Toggle LED 3"); 
  button4 = new APButton(10, 130, "Toggle LED 4"); 
  button5 = new APButton(10, 170, "Toggle LED 5"); 

  //place button in container
  widgetContainer.addWidget(button1);
  widgetContainer.addWidget(button2);
  widgetContainer.addWidget(button3);
  widgetContainer.addWidget(button4);
  widgetContainer.addWidget(button5);
}

void draw() {
  background(#FF9900);
  rect(width/2, height/2, rectSize, rectSize);
}

//onClickWidget is called when a widget is clicked/touched
void onClickWidget(APWidget widget) {

  if (widget == button1) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size

    if (light1On == true) {
      light1On = false;
      rectSize = 50;
    }
    else if (light1On == false) {
      light1On = true;
      rectSize = 100;
    }
  }

  if (widget == button2) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size

    if (light2On == true) {
      light2On = false;
      rectSize = 50;
    }
    else if (light2On == false) {
      light2On = true;
      rectSize = 100;
    }
  }

  if (widget == button3) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size

    if (light3On == true) {
      light3On = false;
      rectSize = 50;
    }
    else if (light3On == false) {
      light3On = true;
      rectSize = 100;
    }
  }

  if (widget == button4) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size

    if (light4On == true) {
      light4On = false;
      rectSize = 50;
    }
    else if (light4On == false) {
      light4On = true;
      rectSize = 100;
    }
  }

  if (widget == button5) { //if it was button1 that was clicked
    //rectSize = 100; //set the smaller size

    if (light5On == true) {
      light5On = false;
      rectSize = 50;
    }
    else if (light5On == false) {
      light5On = true;
      rectSize = 100;
    }
  }
}

