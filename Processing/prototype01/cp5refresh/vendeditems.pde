class VendItem {

  String title;
  String description;
  String price;
  String image;

  PVector pos = new PVector();
  PVector tpos = new PVector();

  PVector boxSize = new PVector();
  PVector tpos = new PVector();

  void update() {
    pos.lerp(tpos, 0.1);
    mouseOver = (pos.dist(mouse) < 10);
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(255, 150);

    float d = map(sqrt(otherkills), 0, sqrt(100), 1, 100);
    ellipse(0, 0, d, d);

    fill(255, 0, 0, 150);
    if (mouseOver) {
      text(title, map(sqrt(otherkills), 0, sqrt(100), 1, 100)/2, fontSize/3);
    }
    float d2 = map(sqrt(bondkills), 0, sqrt(100), 1, 100);
    ellipse(0, 0, d2, d2);

    popMatrix();
  }
}

