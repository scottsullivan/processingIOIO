class Button {
  String title;
  int xPos;
  int yPos;
  int xSize;
  int ySize;
  String image;
  boolean overButton;
  //  boolean clickCheck = false;
  //  boolean clicked;

  void update() {
    overButton = (mouseX >= xPos && mouseX <= xPos + xSize &&  mouseY >= yPos && mouseY <= yPos + ySize);

  }

  void render() {

    pushMatrix();
    translate(xPos, yPos);
    fill(#F03838);
    rect(0, 0, xSize, ySize);
    fill(0);
    rect(0, 172, 202, 30);
    fill(255);
    text(title, 8, 193);

    if (overButton && mousePressed) {
      fill(0);
      rect(0, 0, xSize, ySize);
      fill(0);
      rect(0, 172, 202, 30);
      fill(255);
      text(title, 8, 193);
      //clickCheck = true;
    }
    popMatrix();
  }
}
//  void showPage() {
//    if (clickCheck) {
//      fill(0);
//      rect(0,0, width, height);
//    }
//  }
//}

