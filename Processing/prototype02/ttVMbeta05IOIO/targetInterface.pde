class Item {
  String title;
  String description;
  String largeImage;
  String smallImage;
  float price;

  void displayPage() {
    //back button
    image(backbutton, 104, 74, 209, 88);

    //300x300 image
    if (selector == 0) {
      image(large0, 200, 350, 300, 300);
    }
    if (selector == 1) {
      image(large1, 200, 350, 300, 300);
    }
    if (selector == 2) {
      image(large2, 200, 350, 300, 300);
    }
    if (selector == 3) {
      image(large3, 200, 350, 300, 300);
    }
    if (selector == 4) {
      image(large4, 200, 350, 300, 300);
    }
    if (selector == 5) {
      image(large5, 200, 350, 300, 300);
    }
    if (selector == 6) {
      image(large6, 200, 350, 300, 300);
    }
    if (selector == 6) {
      image(large6, 200, 350, 300, 300);
    }
    if (selector == 7) {
      image(large7, 200, 350, 300, 300);
    }
    if (selector == 8) {
      image(large8, 200, 350, 300, 300);
    }
    if (selector == 9) {
      image(large9, 200, 350, 300, 300);
    }
    if (selector == 10) {
      image(large10, 200, 350, 300, 300);
    }
    if (selector == 11) {
      image(large11, 200, 350, 300, 300);
    }

    fill(0);

    //top labels
    image(labelBlock, 575, 370, 369, 246);

    //top labels
    image(descriptionBlock, width/2, 820, 618, 502);
    textAlign(CENTER);
    textFont(priceFont, 30);
    //Title
    textSize(35);
    text(title, 575, 303);

    //Price
    textSize(70);
    text("$" + int(price), 475, 438);

    //description text
    fill(0);
    textAlign(LEFT);
    textFont(descriptionFont, 30);
    textSize(20);
    text(description, width/2, 860, 500, 483);
  }
}

void loadData(String url) {
  Table myTable = loadTable(url);
  myTable.removeTitleRow();
  for (int i = 0;i < myTable.getRowCount(); i++) {
    // after you remove the title, you can call the column by name!
    Item t = new Item();
    t.title = myTable.getString(i, "title");
    t.description = myTable.getString(i, "description");
    t.smallImage = myTable.getString(i, "smallImage");
    t.largeImage = myTable.getString(i, "largeImage");
    t.price = myTable.getFloat(i, "price");
    items.add(t);//adds to array list
  }
}

