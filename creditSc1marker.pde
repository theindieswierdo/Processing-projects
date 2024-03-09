class circleMarkers {
  float x, y, diameter;

  // Constructor
  circleMarkers(float x, float y, float diameter) {
    this.x = x; 
    this.y = y;
    this.diameter = diameter;
  }

  // methods
  void setMarker(int strokeColor, float strokeWeight, int fillColor) {
    stroke(strokeColor);
    strokeWeight(strokeWeight);
    fill(fillColor);
  }

  // Function to draw markers
  void drawMarkers() {
    setDrawingStyle(0, 2, 255, 204, 255); // Example call with drawing styles

    for (int i = 0; i < 12; i++) {
      float angle = radians(map(i, 0, 12, 0, 360));
      float markerX = x + cos(angle) * diameter / 2 * 2;
      float markerY = y + sin(angle) * diameter / 2 * 2;
      ellipse(markerX, markerY, 20, 20);
    }
  }
}
