Spaceship ship = new Spaceship();
Star[] Stars = new Star[100];
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
     for ( int i = 0; i< rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
   float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
   if (d < 50) {
     rocks.remove(i);
       }
    }
  }

  public void keyPressed() {
    if (key == 'w') {
      ship.accelerate(0.4);
    }
      if (key == 's') {
      ship.accelerate(-0.4);
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
  }
