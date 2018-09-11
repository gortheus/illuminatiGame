class Enemy {
  PVector location, size;
  PVector speed;
  Enemy() {
    this(0, 0, 50, 50);
  }
  Enemy(float _x, float _y, float _w, float _h) {
    location = new PVector(_x, _y);
    size = new PVector(_w, _h);
  }
  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    //rotate(0);
    popMatrix();
  }
  void display() {
    pushStyle();
    fill(#FF1CE1);
    ellipse(location.x, location.y, size.x, size.y);
    popStyle();  
}
}
