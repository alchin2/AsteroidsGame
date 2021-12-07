public class Asteroid extends Floater {
  protected double rotSpeed;
  Asteroid() {
    rotSpeed = (Math.random()*6)-3;
    myXspeed = (Math.random()*3)-2;
    myYspeed = (Math.random()*3)-2;
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = (Math.random()*6)-3;
    corners = 6;
    myColor = 150;
    xCorners = new int[]{-11, 7, 13, 6, -11, -13};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
