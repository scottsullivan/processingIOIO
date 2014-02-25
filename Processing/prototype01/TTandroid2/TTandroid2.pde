//button

PFont font;



import controlP5.*;
ControlP5 controlP5;

void setup() {
  size(1280, 800);
  background(255);
  textSize(35); 
  fill(51, 51, 51);
  smooth();
  noStroke();

  font = createFont("Helvetica-Bold", 48, true);
  textAlign(LEFT);
  textFont(font, 36);

  homeSetup();
}

void draw() {
}

void homeSetup() {
  background(255);
  setupGUI();
  text("TIGERTREE alpha 0.1", 71, 139);

}

void item1() {
  background(255);
  controlP5.controller("back").setVisible(true);

  controlP5.controller("item1").setVisible(false);
  controlP5.controller("item2").setVisible(false);
  controlP5.controller("item3").setVisible(false);
  controlP5.controller("item4").setVisible(false);
  controlP5.controller("item5").setVisible(false);
  controlP5.controller("item6").setVisible(false);
  controlP5.controller("item7").setVisible(false);
  controlP5.controller("item8").setVisible(false);
  controlP5.controller("item9").setVisible(false);
  controlP5.controller("item10").setVisible(false);
}

void back() {
  homeSetup();
}

