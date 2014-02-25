void setupGUI() {
  controlP5 = new ControlP5(this);
  PFont GUIfont = createFont("arial", 12);
  controlP5.setControlFont(GUIfont);
  //buttonstuff ("function it fires", ?, XPOS, YPOS, Width, Height).setLabel("LABEL"); 
  //firtrow
  controlP5.addButton("item1", 50, 71, 253, 202, 202).setLabel("item 1");
  controlP5.addButton("item2", 50, 304, 253, 202, 202).setLabel("item 2");
  controlP5.addButton("item3", 50, 537, 253, 202, 202).setLabel("item 3");
  controlP5.addButton("item4", 50, 770, 253, 202, 202).setLabel("item 4");
  controlP5.addButton("item5", 50, 1003, 253, 202, 202).setLabel("item 5");
  //secondrow
  controlP5.addButton("item6", 50, 71, 486, 202, 202).setLabel("item 6");
  controlP5.addButton("item7", 50, 304, 486, 202, 202).setLabel("item 7");
  controlP5.addButton("item8", 50, 537, 486, 202, 202).setLabel("item 8");
  controlP5.addButton("item9", 50, 770, 486, 202, 202).setLabel("item 9");
  controlP5.addButton("item10", 50, 1003, 486, 202, 202).setLabel("item 10");

  controlP5.addButton("back", 50, 71, 139, 80, 30).setLabel("Back");

  controlP5.controller("item1").setVisible(true);
  controlP5.controller("item2").setVisible(true);
  controlP5.controller("item3").setVisible(true);
  controlP5.controller("item4").setVisible(true);
  controlP5.controller("item5").setVisible(true);

  controlP5.controller("item6").setVisible(true);
  controlP5.controller("item7").setVisible(true);
  controlP5.controller("item8").setVisible(true);
  controlP5.controller("item9").setVisible(true);
  controlP5.controller("item10").setVisible(true);

  controlP5.controller("back").setVisible(false);
}

void drawGUI() {
}


//fill(0, 0, 0);
//rect(71, 253, 202, 202);
//
//fill(0, 0, 0);
//rect(304, 253, 202, 202);
//
//fill(255, 35, 0);
//rect(70, 139, 1, 1);

