void coverPage() {
  //logoimage
  image(logo, 400, 110, 800, 212);

  smallImageDisplay(small0, 150, topgap + 100, 200, 200, 0);

  smallImageDisplay(small1, 400, topgap + 100, 200, 200, 1);

  smallImageDisplay(small2, 650, topgap + 100, 200, 200, 2);

  smallImageDisplay(small3, 150, topgap + 350, 200, 200, 3);

  smallImageDisplay(small4, 400, topgap + 350, 200, 200, 4);

  smallImageDisplay(small5, 650, topgap + 350, 200, 200, 5);

  smallImageDisplay(small6, 150, topgap + 600, 200, 199, 6);

  smallImageDisplay(small7, 400, topgap + 600, 200, 199, 7);

  smallImageDisplay(small8, 650, topgap + 600, 200, 199, 8);

  smallImageDisplay(small9, 150, topgap + 850, 200, 200, 9);

  smallImageDisplay(small10, 400, topgap + 850, 200, 200, 10);

  smallImageDisplay(small11, 650, topgap + 850, 200, 200, 11);
}




void smallImageDisplay(PImage imageNo, int xPos, int yPos, int wid, int hei, int index) {
  image(imageNo, xPos, yPos, wid, hei);
  fill(0);
  image(label, xPos, yPos+100, 208, 48);
  
  textAlign(CENTER);
  textFont(priceFont, 20);
  text(items.get(index).title, xPos, yPos+108);
  image(pricecircle, xPos+85, yPos+70, 78, 78);
  fill(0);
  textFont(priceFont, 25);
  text("$" + items.get(index).price, xPos+85, yPos+80);
}
