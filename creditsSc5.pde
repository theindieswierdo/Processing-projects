// SceneFive: Credits roll from bottom to top
void sceneFive() {
  background(0, 0, 100); //dark blue background
  fill(50, 255, 255);    //light blue fill
  consolasFont = createFont("Consolas.ttf", 32); // Consolas font, size
  // Set the Consolas font as the current font
  textFont(consolasFont);
  textAlign(CENTER, CENTER);
  for (int n = 0; n < credits.length; n++)
    text(credits[n], width/2, 610 - frameCount + 80*n);
}
