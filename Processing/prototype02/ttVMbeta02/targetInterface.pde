class Item {
  String title;
  String description;
  String largeImage;
  String smallImage;
  float price;

  void displayPage() {
    //back button
    fill(#FF0000);
    rect(100, 35, 200, 70);
    fill(0);
    text("BACK", 100, 45);

    //300x300 image
    if (selector == 0) {
      image(large0, width/2, 300, 300, 300);
    }
    if (selector == 1) {
      image(large1, width/2, 300, 300, 300);
    }
    if (selector == 2) {
      image(large2, width/2, 300, 300, 300);
    }
    if (selector == 3) {
      image(large3, width/2, 300, 300, 300);
    }
    if (selector == 4) {
      image(large4, width/2, 300, 300, 300);
    }

    fill(0);
    
    //Title
    textSize(30);
    text(title, width/2, 500);

    //Price
    textSize(25);
    text(price, width/2, 540);

    //buy button
    fill(0);
    rect(width/2, height-100, 300, 87);

    //description text
    fill(0);
    textSize(15);
    text(description, width/2, height/2 + 200, 300, 484);  // Text wraps within text box
    //rect(width/2, height/2 + 200, 300, 484);
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

