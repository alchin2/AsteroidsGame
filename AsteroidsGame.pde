Spaceship ship = new Spaceship();
Asteroid bob = new Asteroid();
Star[] Stars = new Star[100];
public void setup()
{
  //your code here
  background(0);
  size(800, 800);
  for (int i = 0; i<Stars.length;i++){
  Stars[i]=new Star();
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
  bob.show();
  bob.move();
  for (int i = 0; i<Stars.length;i++){
  Stars[i].show();
  }
}

public void keyPressed() {
  if (key == 'w') {
    ship.accelerate(0.4);
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
