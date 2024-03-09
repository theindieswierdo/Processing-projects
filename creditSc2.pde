float currentTime = 0;
PImage eggBasket;
 boolean left,right,up,down;
 float x,y,w,h;
Player p;
PFont consolasFont;
 
//boolean left,right,up,down;
//float x,y,w,h;
//Player p;
public class eggBasketInit extends sampleCredits {
  PImage eggBasket;

  void eggBasketInit() {
    size(800, 800);
    smooth();//make the shape have smoother edges
    eggBasket = loadImage("eggbasket1.PNG");
    p = new Player();
    p.display();
    consolasFont = createFont("Consolas.ttf", 32); // Consolas font, size
  // Set the Consolas font as the current font
    textFont(consolasFont);
  }


void sceneTwo () {
  background(204, 230, 255);
  // Increment time by a small value
  currentTime += 0.01; //increment the time count 
 
  // Display the current time
  fill(0);
  text("Using keyboard arrows, try moving the pacman close to the egg basket!Press the space bar for the next scene", 18, 18);
  text("Time taken(s): " + currentTime, 20, 40);
  textSize(20);
  
 
  image(eggBasket, 650, 80);//postion of eggbasket 
  
  p.display();
}
void keyPressed() {
  switch(keyCode){
    case LEFT: //left
      left = true;
      x = x - 1;
      break;
    case UP: //up
      up = true;
      y= y - 1;
      break;
    case RIGHT: //right
      right = true;
      x = x + 1;
      break;
    case DOWN: //down
      down = true;
      y = y + 1;
      break;
  }
}
}

  
