float currentTime = 0;
boolean left,right,up,down;
float x,y,w,h;
Player p;
PFont consolasFont;
 
class Player{
  float speedX, speedY, maxSpeed;
  Player (){
    maxSpeed = 15;
    x = width/2;
    y = height/2; 
    w = 32;
    h = 32;
    
    left = false;
    right = false;
    up = false;
    down = false;
  }
  void display(){
    noStroke();
    fill(164, 30, 80);
    float mouthAngle = abs(sin(millis()/130.0));
    arc(x, y, 130, 130, mouthAngle, TWO_PI - mouthAngle);
  }
}
