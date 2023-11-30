class Asteroid extends Floater {
  protected double rotSpeed;
  Asteroid() {
    rotSpeed = (Math.random()*6)-3;
    myColor = (155);
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myXspeed = (Math.random()*3)-2;
    myYspeed = (Math.random()*3)-2;
    myPointDirection = (Math.random()*6)-3;
    corners = 5;
    xCorners= new int[]{-8,0,8,4,-4};
    yCorners= new int[]{4,12,4,-6,-6};
}

public void move(){
  turn(rotSpeed);
  super.move();
}

public double getX(){
      return myCenterX;
}
public double getY(){
      return myCenterY;
}
}
