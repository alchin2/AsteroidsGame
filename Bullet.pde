class Bullet extends Floater
{
  public Bullet(Spaceship theShip){
    myCenterX=theShip.getX();
    myCenterY=theShip.getY();
    myXspeed=theShip.getXspeed();
    myYspeed=theShip.getXspeed();
    myPointDirection= theShip.getDirection();
    accelerate(6);
  }
  public void show(){
  fill(255, 0, 0);
    ellipse ((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
  myCenterX+=myXspeed;
  myCenterY+=myYspeed;
  }
}
