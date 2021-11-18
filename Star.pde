class Star {
  private int X, Y;
  public Star() {
    X = (int)(Math.random()*800);
    Y = (int)(Math.random()*800);
  }
  public void display() {
    ellipse((float)X, (float)Y, 1, 1);
  }
}

