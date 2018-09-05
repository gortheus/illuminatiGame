class Menu implements ILevel {
  boolean death;
  Player p;
  Wall w;
  Menu() {
    death = false;
    p = new Player();
    w = new Wall();
  }

  void draw() {
    background(#E3ACAC);
    checkCollisions();
    p.draw();
    w.draw();
  }
  void checkCollisions() {
    //Death
  }

  int checkState() {
    if (death == true) { 
      return 2;
    } else if (death == false) { 
      return 0;
    }
    return 0;
  }

  void nextLevel() {
  }
  void restart() {
  }

  void keyPressed() {
  }
  void keyReleased() {
  }
  void mousePressed() {
    p.mousePressed();
  }
  void mouseReleased() {
    p.mouseReleased();
  }
}
