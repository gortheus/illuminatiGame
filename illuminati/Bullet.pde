class Bullet {
  PVector location, size;
  PVector speed;
  int constrainX;
  int startTime;       
  int timePassed;


  Bullet() {
    this(new PVector(0, 0), 50, 50);
  }
  Bullet(PVector _location, float _w, float _h) {
    location = _location.copy();
    size = new PVector(_w, _h);
    startTime = millis();
  }

  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    location.x += 5;
    display();
    popMatrix();
  }

  void display() {
    pushStyle();
    noStroke();
    fill(#F0F0F0);
    ellipse(0, 0, size.x, size.y);
    popStyle();
  }

  boolean isDead(int _constrainX) {
    if (location.x > _constrainX) {
      return true;
    } else return false;
  }
  //boolean shootSpeed(int seconds) {
  //  timePassed = (millis() - startTime)/1000;
  //  if (timePassed >= seconds) {
  //    return true;
  //  } else return false;
  //}
}
