  class Star //note that this class does NOT extend Floater
  {
    //your code here
    private int x, y, myColor;
  
    public Star() {
      x = (int)(Math.random()*800);
      y = (int)(Math.random()*800);
      myColor = color((int)(Math.random()*255+40), (int)(Math.random()*46+200), (int)(Math.random()*96+200));
    }
    public void show() {
      stroke(myColor);
      fill(myColor);
      ellipse((float)x, (float)y, 2, 2);
    }
  }
