//buttonfromscratch
ArrayList<Button> buttons = new ArrayList(); // array list stores values forever

void setup() {
  size(1280, 800);
  background(255);
  noStroke();
  loadData("TigertreeVenditems.csv");
  text("TIGERTREE alpha 0.2", 71, 139);
}

void draw() {
  text("TIGERTREE alpha 0.2", 71, 139);
  for (Button b:buttons) { //every boat in the harbor
    // b.showPage();
    b.update();
    b.render();
  }
}

void loadData(String url) {
  Table myTable = loadTable(url);
  myTable.removeTitleRow();
  for (int i = 0;i < myTable.getRowCount(); i++) {
    // after you remove the title, you can call the column by name!
    Button b = new Button();
    b.title = myTable.getString(i, "Title");
    b.xPos = myTable.getInt(i, "xPos");
    b.yPos = myTable.getInt(i, "yPos");
    b.xSize = myTable.getInt(i, "xSize");
    b.ySize = myTable.getInt(i, "ySize");
    b.image = myTable.getString(i, "Image");
    buttons.add(b);//adds to array list
  }
}

