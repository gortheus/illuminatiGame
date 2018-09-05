class Player {
  PVector location, size;
  PVector speed = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0.9);
  boolean moveRight, moveLeft, moveUp, moveDown = false;
  //PShape player;
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;

  Player() {
    this(0, 0, 50, 50);
  }

  Player(float x, float y, float w, float h) {
    speed = new PVector(5, 5);
    location = new PVector(x, y);
    size = new PVector(w, h);
  }


  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    update();
    display();
    popMatrix();
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }

  void mousePressed() {
    if ( mouseX > location.x + size.x) {
      location.x += speed.x;
    } else if (mouseX < location.x - size.x) {
      location.x -= speed.x;
    }

    if ( mouseY > location.y + size.y) {
      location.y += speed.y;
    }
    if ( mouseY < location.y - size.y) {
      location.y -= speed.y;
    }
  }
  void mouseReleased() {
  }

  void movement() {
  }
  void update() {
    movement();
    speed.add(acceleration);
  }

  void display() {
    pushStyle();
    fill(#2215EA);
    ellipse(0, 0, size.x, size.y);
    popStyle();
  }
}
