class CircleForIndividualCourses {
  float x;
  float y;
  float diameter;
  int id;


  CircleForIndividualCourses(float d, int index) {
    diameter=d;
    id=index;
  }

  void display(color c, float sx, float sy) {
    x=sx;
    y=sy;
    fill(c);
    ellipse(x, y, diameter, diameter);
  }

  boolean overlaps() {
    if (dist(mouseX, mouseY, x+(width/2), y+(height/2)) <= diameter/4 ) {
      return true;
    }
    return false;
  }

  int getID() { 
    return id;
  }
  float getX() { 
    return x;
  }
  float getY() { 
    return y;
  }
}