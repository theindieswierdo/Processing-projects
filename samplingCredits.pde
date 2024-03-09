public class sampleCredits extends PApplet { //<>//
  Scene currentScene;
  enum Scene {
    myClock,
    myPacman,
    myGhost,
    myEnd,
    myCredits,
    
  }
    public static void main(String[] args) {
        // Launch the Processing sketch as a Java application
        PApplet.main("sampleCredits");
    }
}

PFont consolasFont;
String[] credits;

void setup() {
  PApplet.main("eggBasketInit");
  PApplet.main("sleepyGhostInit");
  PApplet.main("coolGhostInit");
  PApplet.main("movingClock");
  size(900, 700);
  frameRate(50);
  //Load strings from text file into credits array
  credits = loadStrings("sampleCredits.txt");
  consolasFont = createFont("Consolas.ttf", 32); // Consolas font, size
  // Set the Consolas font as the current font
  textFont(consolasFont);
}

void draw() {
  //Define scene by frameCount
  switch(currentScene) {
      case myClock:
        sceneOne();
        displayTime();
        break;
      case myPacman:
        sceneTwo();
        break;
      case myGhost:
        sceneThree();
        break;
      case myEnd:
        sceneFour();
        break;
      case myCredits:
        sceneFive();
        break;
    }
}
public void keyPressed() {
    if (key == '2') {
      currentScene = Scene.sceneTwo;
    } else if (key == '3') {
      currentScene = Scene.sceneThree;
    } else if (key == '4') {
      currentScene = Scene.sceneFour;
    } else if (key == '5') {
      currentScene = Scene.sceneFive;
    } else 
