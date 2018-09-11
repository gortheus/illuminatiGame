interface ILevel {
  void draw();
  void keyPressed();
  void keyReleased();
  void mousePressed();
  void mouseReleased();
  void mouseClicked();
  int checkState();
  void nextLevel();
  void restart();
}
