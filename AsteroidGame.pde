Spaceship ship = new Spaceship();
Star[] Stars = new Star[100];
ArrayList<Bullet> pew = new ArrayList<Bullet>();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
public void setup()
{
  //your code here
  background(0);
  size(800, 800);
  for (int i = 0; i<Stars.length; i++) {
    Stars[i]=new Star();
  }
  for (int i = 0; i<10; i++) {
    rocks.add(i, new Asteroid());
  }
}
public void draw()
{
  frameRate(144);
 
    background(0);
    textSize(20);
    fill(255);
    ship.show();
    ship.move();
    for (int i = 0; i<Stars.length; i++) {
      Stars[i].show();
    }
    for (int i = 0; i <pew.size();i++){
    pew.get(i).show();
    pew.get(i).move();
    }
     for ( int i = 0; i< rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
   float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getaX(), (float)rocks.get(i).getaY());
   for (int z = pew.size() - 1; z >= 0; z--){
        float f = dist((float)pew.get(z).getpX(), (float)pew.get(z).getpY(), (float)rocks.get(i).getaX(), (float)rocks.get(i).getaY());
        if (f < 2){
            rocks.remove(i);
            pew.remove(z);
            break;
        }
    }
   if (d < 50) {
     rocks.remove(i);
       }
    }
    text((int)ship.getX(), 100, 100);
    text((int)ship.getY(), 100, 140);
    text((int)ship.getDirection(), 100, 180);
  }

  public void keyPressed() {
    if (key == 'w') {
      ship.accelerate(1);
    }
      if (key == 's') {
      ship.accelerate(-1);
    }
    if (key == 'a') {
      ship.turn(-10);
    }
    if (key == 'd') {
      ship.turn(10);
    }
    if (key == ' ') {
      ship.setXspeed(0);
      ship.setYspeed(0);
      ship.setXcenter();
      ship.setYcenter();
    }
    if (key == 'p'){
    pew.add(new Bullet(ship));
    }
  }
