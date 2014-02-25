// - - - - - - - - - - - - - - - - - - - - - - - 
// Tigertree Vending Machine v05 08-03-13
// BY SCOTT SULLIVAN
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
import ioio.lib.api.*;
import ioio.lib.api.exception.*;
import com.pinkhatproductions.pioio.*;

// - - - - - - - - - - - - - - - - - - - - - - - 
// ANDROID
// - - - - - - - - - - - - - - - - - - - - - - - 
import android.view.Window;
import android.view.WindowManager;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.bluetooth.*;

// - - - - - - - - - - - - - - - - - - - - - - - 
// GLOBAL VARIABLES
// - - - - - - - - - - - - - - - - - - - - - - - 
ArrayList<Item> items = new ArrayList(); // array list stores values forever
PImage logo, label, woodback, backbutton, pricecircle, descriptionBlock, labelBlock, small0, small1, small2, small3, small4, small5, small6, small7, small8, small9, small10, small11, large0, large1, large2, large3, large4, large5, large6, large7, large8, large9, large10, large11;
int selector = 12;
boolean homepage;

//our rectangle size
int rectSize = 100;

//boolean to turn the light on or off
boolean light1On = false;
boolean light2On = false;
boolean light3On = false;
boolean light4On = false;
boolean light5On = false;
boolean light6On = false;
boolean light7On = false;
boolean light8On = false;
boolean light9On = false;
boolean light10On = false;
boolean light11On = false;
boolean light12On = false;
boolean buySwitch = false;

//topgap
int topgap = 230;

PFont priceFont;
PFont descriptionFont;


//create a IOIO instance
//IOIO ioio = IOIOFactory.create();

//create a thread for our IOIO code
//myIOIOThread thread1; 

// - - - - - - - - - - - - - - - - - - - - - - - 
// FROM OLD IOIO THREAD
// - - - - - - - - - - - - - - - - - - - - - - - 
  DigitalOutput led1;  //DigitalOutput type for the onboard led
  DigitalOutput led2;  //DigitalOutput type for the onboard led
  DigitalOutput led3;  //DigitalOutput type for the onboard led
  DigitalOutput led4;  //DigitalOutput type for the onboard led
  DigitalOutput led5;  //DigitalOutput type for the onboard led
  DigitalOutput led6;  //DigitalOutput type for the onboard led
  DigitalOutput led7;  //DigitalOutput type for the onboard led
  DigitalOutput led8;  //DigitalOutput type for the onboard led
  DigitalOutput led9;  //DigitalOutput type for the onboard led
  DigitalOutput led10;  //DigitalOutput type for the onboard led
  DigitalOutput led11;  //DigitalOutput type for the onboard led
  DigitalOutput led12;  //DigitalOutput type for the onboard led


// - - - - - - - - - - - - - - - - - - - - - - - 
// SETUP
// - - - - - - - - - - - - - - - - - - - - - - - 
void setup() {
  // - - - - old IOIOlib stuff
  //instantiate our thread
  //  thread1 = new myIOIOThread("thread1", 100);
  //  //start our thread
  //  thread1.start();

  new PIOIOManager(this).start();

  size(800, 1280);
  noStroke();
  rectMode(CENTER);
  imageMode(CENTER);
  homepage = true;

  loadData("controlSheet.csv");
  logo = loadImage("logo.png");
  small0 = loadImage(items.get(0).smallImage);
  small1 = loadImage(items.get(1).smallImage);
  small2 = loadImage(items.get(2).smallImage);
  small3 = loadImage(items.get(3).smallImage);
  small4 = loadImage(items.get(4).smallImage);
  small5 = loadImage(items.get(5).smallImage);
  small6 = loadImage(items.get(6).smallImage);
  small7 = loadImage(items.get(7).smallImage);
  small8 = loadImage(items.get(8).smallImage);
  small9 = loadImage(items.get(9).smallImage);
  small10 = loadImage(items.get(10).largeImage);
  small11 = loadImage(items.get(11).largeImage);
  large0 = loadImage(items.get(0).largeImage);
  large1 = loadImage(items.get(1).largeImage);
  large2 = loadImage(items.get(2).largeImage);
  large3 = loadImage(items.get(3).largeImage);
  large4 = loadImage(items.get(4).largeImage);
  large5 = loadImage(items.get(5).largeImage);
  large6 = loadImage(items.get(6).largeImage);
  large7 = loadImage(items.get(7).largeImage);
  large8 = loadImage(items.get(8).largeImage);
  large9 = loadImage(items.get(9).largeImage);
  large10 = loadImage(items.get(10).largeImage);
  large11 = loadImage(items.get(11).largeImage);
  woodback = loadImage("woodBack.jpg");
  label = loadImage("label.png");
  backbutton = loadImage("backbutton.png");
  pricecircle = loadImage("pricecircle.png");
  descriptionBlock = loadImage("inside_description_block.png");
  labelBlock = loadImage("inside_label_block.png");

  priceFont = loadFont("BebasNeue-48.vlw");
  descriptionFont = loadFont("ProximaNova-Regular-30.vlw");
}


// - - - - - - - - - - - - - - - - - - - - - - - 
// DRAW LOOP
// - - - - - - - - - - - - - - - - - - - - - - - 
void draw() {
  background(woodback);
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
  //item 1
  if (inButton(150, topgap + 100, 200, 200) && homepage) {
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

  //item 2
  if (inButton(400, topgap + 100, 200, 200) && homepage) {
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

  //item 3
  if (inButton(650, topgap + 100, 200, 200) && homepage) {
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

  //item 4
  if (inButton(150, topgap + 350, 200, 200) && homepage) {
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

  //item 5
  if (inButton(400, topgap + 350, 200, 200) && homepage) {
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

  //item 6
  if (inButton(650, topgap + 350, 200, 200) && homepage) {
    homepage = false;
    selector = 5;

    if (light6On == true) {
      light6On = false;
      rectSize = 50;
    }
    else if (light6On == false) {
      light6On = true;
      rectSize = 100;
    }
  }

  //item 7
  if (inButton(150, topgap + 600, 200, 200) && homepage) {
    homepage = false;
    selector = 6;

    if (light7On == true) {
      light7On = false;
      rectSize = 50;
    }
    else if (light7On == false) {
      light7On = true;
      rectSize = 100;
    }
  }

  //item 8
  if (inButton(400, topgap + 600, 200, 200) && homepage) {
    homepage = false;
    selector = 7;

    if (light8On == true) {
      light8On = false;
      rectSize = 50;
    }
    else if (light8On == false) {
      light8On = true;
      rectSize = 100;
    }
  }

  //item 9
  if (inButton(650, topgap + 600, 200, 200) && homepage) {
    homepage = false;
    selector = 8;

    if (light9On == true) {
      light9On = false;
      rectSize = 50;
    }
    else if (light9On == false) {
      light9On = true;
      rectSize = 100;
    }
  }

  //item 10
  if (inButton(150, topgap + 850, 200, 200) && homepage) {
    homepage = false;
    selector = 9;

    if (light10On == true) {
      light10On = false;
      rectSize = 50;
    }
    else if (light10On == false) {
      light10On = true;
      rectSize = 100;
    }
  }

  //item 11
  if (inButton(400, topgap + 850, 200, 200) && homepage) {
    homepage = false;
    selector = 10;

    if (light11On == true) {
      light11On = false;
      rectSize = 50;
    }
    else if (light11On == false) {
      light11On = true;
      rectSize = 100;
    }
  }

  //item 12
  if (inButton(650, topgap + 850, 200, 200) && homepage) {
    homepage = false;
    selector = 11;

    if (light12On == true) {
      light12On = false;
      rectSize = 50;
    }
    else if (light12On == false) {
      light12On = true;
      rectSize = 100;
    }
  }

  //back button
  if (inButton(105, 74, 209, 88) && !homepage) {
    homepage = true;
    selector = 12;

    light1On = false;
    light2On = false;
    light3On = false;
    light4On = false;
    light5On = false;
    light6On = false;
    light7On = false;
    light8On = false;
    light9On = false;
    light10On = false;
    light11On = false;
    light12On = false;
  }
}

//@Override
//public void onCreate(Bundle savedInstanceState) {
//  super.onCreate(savedInstanceState);
//
//  getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
// 
//}

