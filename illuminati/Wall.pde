class Wall {
  PShape wall;
  PVector location, size; 
  
  Wall() {
    this(0, 0, 50, 50);
  }
  Wall(float _x, float _y, float _w, float _h) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
  }
  
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    display();
    popMatrix();
  }
  
  void display() {
    pushStyle();
    noStroke();
    fill(#F0F0F0);
    rect(0, 0, size.x, size.y);
    popStyle();
  }
  
}
