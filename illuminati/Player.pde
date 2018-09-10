class Player {
  PVector location, size;
  PVector speed;
  PVector acceleration = new PVector(0, 0.9);
  boolean moveRight, moveLeft, moveUp, moveDown, jump = false;
  //PShape player;
  //int startTime;       //startTime = millis();
  //int timePassed;      //timePassed = (millis() - startTime)/1000;

  Player() {
    this(0, 0, 50, 50);
  }

  Player(float x, float y, float w, float h) {
    speed = new PVector(0, 0);
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
    speed.y = -20;
    if (location.y <= 531) {
      jump = true;
    }
    if (location.y > 512) {
      jump = false;
    }
  }
  void mouseReleased() {
    jump = false;
  }

  void movement() {
    println(location.y);
    if (location.y > 512 && jump == false) {
      speed.y = 0;
    }
    location.add(speed);
  }
  void update() {
    movement();
    if (location.y <= 512) {
      speed.add(acceleration);
    }
  }

  void display() {
    pushStyle();
    fill(#2215EA);
    ellipse(0, 0, size.x, size.y);
    popStyle();
  }
}
