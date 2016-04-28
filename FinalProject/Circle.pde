class Circle {
  float x;
  float y;
  float diameter;


  Circle() {
  }

  void display(color c, float d, float sx, float sy) {
    x=sx;
    y=sy;
    diameter=d;
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  boolean overlaps() {
    if (dist(mouseX, mouseY, x+(width/2), y+(height/2)) <= diameter/4 ) {
      return true;
    }
    return false;
  }

  float getX() { 
    return x;
  }
  float getY() { 
    return y;
  }
}