void setup()
{
  noLoop();
  size(600, 600);
}
void draw()
{
  //your code here
  Die bob;
  background(255);
  int startX = 60;
  int startY=60;
  int spacing = 60;
  int sum= 0;
  //nested loops
  for (int i = 0; i <9; i++) {
    for (int j = 0; j < 9; j++){
      int x = startX + (j*spacing);
      int y = startY + (i*spacing);
      bob= new Die(x,y);
      bob.roll();
      bob.show();
      sum += bob.value;
    }
  }
  fill(0);                // Set text color to black
  textSize(20);           // Make the font crisp and readable
  textAlign(CENTER, TOP); // Center-align the text horizontally
  
  // Draws "Total Roll: [sum]" at the bottom center of the canvas (X: 300, Y: 560)
  text("Total Roll: " + sum, 300, 580); 
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, value; // coordinates
  int R, G, B; // color
  //member variable declarations here

  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    R = (int)(Math.random()*256);
    G = (int)(Math.random()*256);
    B = (int)(Math.random()*256);
    roll ();
  }
  void roll()
  {
    //your code here
    value = (int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    fill(R, G, B);
    rect (myX-25, myY-25, 50, 50, 10);
    if (value == 1 || value == 3 || value == 5) {
      fill (0, 0, 0);
      ellipse (myX, myY, 10, 10);
    }
    if (value == 2|| value == 4|| value == 3|| value == 5) {
      fill (0, 0, 0);
      ellipse (myX-10, myY+10, 10, 10);
      ellipse (myX+10, myY- 10, 10, 10);
    }
    if (value == 4 || value == 5) {
      fill (0, 0, 0);
      ellipse (myX-10, myY-10, 10, 10);
      ellipse (myX+10, myY+10, 10, 10);
    }
    if (value == 6){
      fill (0,0,0);
      ellipse (myX-10, myY-10, 10, 10);
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX-10, myY+10, 10, 10);
      ellipse (myX+10, myY- 10, 10, 10);
      ellipse (myX+10, myY, 10,10);
      ellipse (myX-10, myY, 10,10);
    }
  }
}
