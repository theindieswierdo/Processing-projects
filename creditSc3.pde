public class sleepyGhostInit extends sampleCredits {
  PShape ghost;
  PImage bedroom;
  boolean left,right,up,down;
  float x,y,w,h;
  Player p;
 

  public sleepyGhostInit() {
    size(815,411);
    smooth();
    bedroom = loadImage("bedRoom.PNG");
    ghost =loadShape ("sleepyGhost.svg");
    x = 200;
    y = 100;
    p = new Player();
  
  //c = new Clock();
  consolasFont = createFont("Consolas.ttf",14 ); // Consolas font, size
  // Set the Consolas font as the current font
  textFont(consolasFont);
}
void sceneThree() {
  background(bedroom);
  p.move();
  p.display();
  fill(255);
  text(("Charles the ghost is tired but fails to sleep. Use arrows to move him around, and maybe tire him out!"), 20, 20); 
  text(("Press the space bar for the next scene"),18,18);
  }
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
