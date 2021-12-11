class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show() {
  noStroke();
  fill(255, 0, 0);
    ellipse ((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getBX() {
    return myCenterX;
  }
  public double getBY() {
    return myCenterY;
  }
}
