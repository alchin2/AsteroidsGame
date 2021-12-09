//bullet dist not working

int x = 0;
int y = 0;
int score = 0;
Star[] stars = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup() 
{
  background(0);
  smooth(4);
  size(800, 800);
  for (int i = 0; i < stars.length; i++) {
    stars[i]= new Star();
  }
  for (int i = 0; i < 20; i ++)
    rock.add(i, new Asteroid());
}
Spaceship ship = new Spaceship();

public void mousePressed() {
  shots.add(new Bullet(ship));
}

public void draw() 
{
  background(0);
  textSize(20);
  fill(255);
  text(score, 20, 20);

  for (int i = 0; i < stars.length; i++)
    stars[i].display();

  ship.show();
  ship.move();
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < rock.size(); i ++) {
    rock.get(i).show();
    rock.get(i).move();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY());

    if (d < 10) {
      rock.remove(i);
      score++;
    }
  }
  if (shots.size() > 0) {


    for (int j = 0; j < shots.size(); j ++) {
      for (int i = 0; i < rock.size(); i ++) {
        float f = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), (float)rock.get(i).getX(), (float)rock.get(i).getY()); 
        if (f < 10) {
          rock.remove(i);
          shots.remove(j);
          score++;
        }
      }
    }
  }
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 400.0);
  fill(255, 255, 0);
  noStroke();
  sun(x, y, 35, 40, 15); 
  popMatrix();

  if (ship.getX() > 360 && ship.getX() < 430 && ship.getY() > 360 && ship.getY() < 430) {
    noLoop();
    fill(0);
    rect(0, 0, 800, 800);
    textSize(60);
    fill(255);
    text("Game Over", 250, 400);
  }
}



public void keyPressed() {
  if (key == 'a') {
    ship.turn(-10);
  }
  if (key == ' ') {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setCenterX();
    ship.setCenterY();
  }
  if (key == 'd') {
    ship.turn(+10);
  }
  if (key == 'w') {
    ship.accelerate(0.6);
  }
  if (key == 's') {
    ship.accelerate(-0.6);
  }
}
