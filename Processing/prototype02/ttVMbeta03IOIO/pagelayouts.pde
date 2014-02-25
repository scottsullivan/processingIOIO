void coverPage() {
  //top left
  smallImageDisplay(small0, width/3, 400, 200, 200, 0);

  //top right
  smallImageDisplay(small1, width/3 * 2, 400, 200, 200, 1);

  //middle left
  smallImageDisplay(small2, width/3, 666, 200, 200, 2);

  //middle right
  smallImageDisplay(small3, width/3 * 2, 666, 200, 200, 3);

  //bottom left
  smallImageDisplay(small4, width/3, 932, 200, 200, 4);

  //logoimage
  image(logo, 300, 80, 600, 160);
}

void smallImageDisplay(PImage imageNo, int xPos, int yPos, int wid, int hei, int index) {
  image(imageNo, xPos, yPos, wid, hei);
  fill(0);
  textAlign(CENTER);
  text(items.get(index).title, xPos, yPos + 120);
}

void itemPage() {
  //back button
  fill(176, 197, 255);
  rect(100, 35, 200, 70);

  //300x300 image
  fill(0);
  rect(width/2, 300, 300, 300);

  //Title
  textSize(30);
  text("TITLE", width/2 - 150, 500);

  //Price
  textSize(25);
  text("$100.55", width/2 - 150, 540);

  //buy button
  fill(0);
  rect(width/2, height-100, 300, 87);

  //description text
  fill(255, 24, 179);
  rect(width/2, height/2 + 200, 300, 484);
}


