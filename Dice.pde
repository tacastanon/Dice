void setup()
{
  size(520, 570);
  noLoop();
}
Die bob;
int counter = 0;
void draw()
{
  background(#CCCCFF);
  for (int y=10; y<=500; y+=50) {
    for (int x=10; x<=500; x+=50) {
      Die bob = new Die (x, y);
      bob.show();
    }
  }
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Total: " + counter, 250, 550);
  fill(0);
}
void mousePressed()

{
  redraw();
  counter = 0;
}
class Die
{
  int dicenum, myX, myY;

  Die(int x, int y)
  {
    myX=x;
    myY=y;
    dicenum = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    int dicenum = 1;
    System.out.println(dicenum);
  }
  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    strokeWeight(3);
    stroke(255);
    rect(myX, myY, 50, 50, 10);
    if (dicenum == 1) {
      fill(255);
      ellipse(myX+10, myY+10, 5, 5);
      counter += 1;
    } else if (dicenum == 2) {
      fill(255);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      counter += 2;
    } else if (dicenum == 3) {
      fill(255);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      counter += 3;
    } else if (dicenum == 4) {
      fill(255);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      counter += 4;
    } else if (dicenum == 5) {
      fill(255);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      counter += 5;
    } else if (dicenum == 6) {
      fill(255);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 25, 5, 5);
      counter += 6;
    }
  }
}
