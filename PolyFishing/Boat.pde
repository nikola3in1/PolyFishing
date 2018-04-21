//Boat class
class Boat {
  float x = width-200;
  float speed = 5;
  float boatWidth = 120;
  float boatHeight = 70;
  float size =50;

  float playerVelocityX = 0;
  float rightKey;
  float leftKey;
  Hook hook;

  Boat() {
    hook = new Hook();
    boatImg = loadImage("boat.png");
  }
  
  //Checking to see if boat is inside of bounds
  void checkBounds() {
    if (x>width-this.size+20) {
      x=width-this.size+20;
    } 
    if (x<0) {
      x=0;
    }
  }

  void display() {
    this.playerVelocityX = (this.rightKey - this.leftKey) * this.speed;
    this.x += this.playerVelocityX;
    stroke(0);
    fill(127);
    imageMode(CORNER);
    image(boatImg, this.x-20, waterLevel-20, this.boatWidth, this.boatHeight);
    hook.display();
    checkBounds();
  }
}
