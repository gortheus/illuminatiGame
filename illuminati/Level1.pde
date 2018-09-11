class Level1 implements ILevel {
  boolean death;
  Player p;
  Wall w;
  Wall b;
  Level1() {
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
    text("PRESS W to START", 0,10);
    popStyle(); 
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
    if(key == 'w'){
      
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
