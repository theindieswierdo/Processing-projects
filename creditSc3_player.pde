class Player {
  //properties
  float speedX, speedY, maxSpeed;
 
  //constructors
  Player (){
    maxSpeed =15;
    w = 32;
    h = 32;
    
    left = false;
    right = false;
    up = false;
    down = false;
  }
  //methods 
  void move(){
   // x += speedX;
   // y += speedY; 
  }
  


  void display(){
    ghost.disableStyle();
    fill(155, 113, 140);
    shape(ghost, fCount*x, y);
    
  
  }
  
}
