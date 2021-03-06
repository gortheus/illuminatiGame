class Menu implements ILevel {
  boolean death;
  Player p;
  Wall w;
  Wall b;
  boolean win = false;
  Menu() {
    death = false;
    p = new Player();
    w = new Wall();
    b = new Wall(0, 512, 50, 50);
  }

  void draw() {
    background(#E3ACAC);
    checkCollisions();
    p.draw();
    w.draw();
    b.draw();
    pushStyle();
    textSize(50);
    fill(#000000);
    text("PRESS W to START", 0, 10);
    popStyle();
  }
  void checkCollisions() {
    //Death
  }

  int checkState() {
    if (death == true) { 
      return 2;
    } else if (win == true) { 
      return 1;
    }
    return 0;
  }

  void nextLevel() {
    game = new Level1();
  }
  void restart() {
  }

  void keyPressed() {
    if (key == 'w') {
      win = true;
    }
  }
  void keyReleased() {
  }
  void mousePressed() {
    p.mousePressed();
  }
  void mouseClicked() {
    p.mouseClicked();
  }
  void mouseReleased() {
    p.mouseReleased();
  }
}
