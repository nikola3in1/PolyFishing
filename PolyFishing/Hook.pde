class Hook {
  float y = 100;
  float hookVelocity = 0; //y axis
  float hookSpeed = 4;
  float size=15;
  float downKey;
  Hook() {
    this.y=waterLevel;
    hookImg = loadImage("hook.png");
  }
  void checkBounds() {
    if (this.y>height-this.size) {
      this.y=height-this.size;
    }
  }
  void display() {
    this.hookVelocity = this.downKey * this.hookSpeed;
    float nextY = this.y + this.hookVelocity;
    if (nextY <= waterLevel) {
      nextY=waterLevel;
      this.downKey=0;
    }
    this.y += this.hookVelocity;
    stroke(0);
    line(boat.x-15, waterLevel-12, boat.x-10, this.y-10);
    image(hookImg, boat.x-20, this.y-12, this.size, this.size);
    checkBounds();
  }
}
