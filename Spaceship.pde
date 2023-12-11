class Spaceship extends Floater
{
  //your code here
  public Spaceship() {
    corners = 6;
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0] = -16;
    yCorners[0] = -8;
    xCorners[1] = 8;
    yCorners[1] = -16;
    xCorners[2] = 20;
    yCorners[2] = 0;
    xCorners[3] = 8;
    yCorners[3] = 16;
    xCorners[4] = -16;
    yCorners[4] = 8;
    xCorners[5] = -12;
    yCorners[5] = 0;
    myColor = (255);
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setXspeed(double x){
  myXspeed = x;
}
 public void setYspeed(double y){
  myYspeed = y;
}
 public void setXcenter(){
  myCenterX = (int)(Math.random()*800);
}
 public void setYcenter(){
  myCenterY = (int)(Math.random()*800);
}
 public double getX(){
 return myCenterX;
 }
  public double getY(){
 return myCenterY;
 }
 public double getXspeed(){
 return myXspeed;
 }
  public double getYspeed(){
 return myYspeed;
 }
  public double getDirection(){
 return myPointDirection;
 }
public void hater() {  
  if (myXspeed > 0) {
        myXspeed -= 0.1;
        System.out.println(myXspeed);
    } else if (myXspeed < 0) {
        myXspeed += 0.1;
    } else if (myXspeed <.1 || myXspeed >-.1){
        myXspeed = 0;
    }

    if (myYspeed > 0) {
        myYspeed -= 0.1;
    } else if (myYspeed < 0 ) {
        myYspeed += 0.1;
    } else {
        myYspeed = 0;
    }
}

}
