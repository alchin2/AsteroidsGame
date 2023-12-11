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
  fill(255, 255, 255);
    ellipse ((float)myCenterX, (float)myCenterY, 3, 3);
  }
   public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
   public double getpX(){
 return myCenterX;
 }
  public double getpY(){
 return myCenterY;
 }
}
