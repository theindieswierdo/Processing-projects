
public class movingClock extends PApplet{
  circleMarkers cirMar;
  float heleCirkel = TWO_PI;
  void movingClock() {
    size(700,700);
    background(0);
    smooth();
    cirMar = new circleMarkers(width/2, height/2,200);
  }

  void sceneOne() {
    background(0);
    cirMar.setMarkers(0,2,255,204,255);
    cirMar.drawMarkers();
  
    translate(width/2,height/2);
    rotate(-heleCirkel/4);
  
    noFill();
    strokeWeight(10);
    strokeCap(SQUARE);

    stroke(255, 179, 26);
    float s = map(second(), 0, 60, 0, heleCirkel);
    arc(0, 0, 40, 40, 0, s);
    displayTime(second(), s, 40); // Display the seconds time
  
    stroke(255, 0, 0);
    float m = map(minute(), 0, 60, 0, heleCirkel);
    arc(0, 0, 120, 120, 0, m);
  
    stroke(179, 0, 134);
    float h = map(hour(), 0, 60, 0, heleCirkel);
    arc(0, 0, 170, 170, 0, h);
    cirMar.Draw_Markers(width/28, height/28, 200);

 
  }
  void displayTime(int timeValue, float angle, float radius) {
    float x = cos(angle - HALF_PI) * radius; // Calculate x-coordinate
    float y = sin(angle - HALF_PI) * radius; // Calculate y-coordinate
    
    textAlign(CENTER, CENTER); // Center text alignment
    textSize(14); // Set text size
    text(timeValue, x, y); // Draw text at calculated position
}
}
