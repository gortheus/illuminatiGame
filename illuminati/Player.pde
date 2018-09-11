class Player {
  PVector location, size;
  PVector speed;
  PVector acceleration = new PVector(0, 0.9);
  boolean moveRight, moveLeft, moveUp, moveDown, jump = false;
  ArrayList <Bullet> bullets;
  //PShape player;
  int startTime;       //startTime = millis();
  int timePassed;      //timePassed = (millis() - startTime)/1000;

  Player() {
    this(0, 0, 50, 50);
  }

  Player(float x, float y, float w, float h) {
    speed = new PVector(0, 0);
    location = new PVector(x, y);
    size = new PVector(w, h);
    bullets = new ArrayList<Bullet>();
    startTime = millis();
    // bullets.add(new Bullet(location, 10, 10));
  }


  void draw() {
    pushMatrix();
    translate(location.x, location.y);
    update();
    display();
    popMatrix();
    shoot();
    camera(location.x, location.y, (height/2.0) / tan(PI*30.0 / 180.0), location.x, location.y, 0, 0, 1, 0);
  }

  void mousePressed() {
    if (location.y >= 0) {
      jump = true;
      speed.y = -20;
    }
  }
  void mouseClicked() {
  }

  void mouseReleased() {
    jump = false;
  }
  void movement() {
    if (location.y > 512 && jump == false) {
      speed.y = 0;
    }
    location.add(speed);
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

  void shoot() {
    if (shootSpeed() == true) {
      bullets.add(new Bullet(location, 10, 10));
    }
    for (int i = bullets.size()-1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      b.draw();
      if (b.isDead(int(location.x + 300))) {
        bullets.remove(i);
      }
    }
  }
  boolean shootSpeed() {
    timePassed = (millis() - startTime)/1000;
    if (timePassed >= 0.2) {
      startTime = millis();
      return true;
    } else return false;
  }
}
