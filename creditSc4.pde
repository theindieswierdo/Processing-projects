// SceneFour: A pacman and ghost move across the screen
public class coolGhostInit extends sampleCredits {
  PShape coolGhost; 
  public coolGhostInit(){
    coolGhost = loadShape("coolghost.svg");  
  }
}
void sceneFour() {
  background(0);
  fill(164, 30, 80);
  consolasFont = createFont("Consolas.ttf",14 ); 
  float mouthAngle = abs(sin(millis()/130.0));
  arc(frameCount * 2, 90, 130, 130, mouthAngle, TWO_PI - mouthAngle); //the pacman
  //changing the style of the ghost
  coolGhost.disableStyle();
  fill(155, 113, 140);
  shape(coolGhost, frameCount * -2,90);
  text("THE END", 400, 400);
}
