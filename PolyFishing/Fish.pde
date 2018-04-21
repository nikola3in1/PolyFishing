//Fish class
class Fish {
  float x=width/2;
  float y=height-10;
  float imgWidth = 30;
  float imgHeight = 60;
  float size=25;
  float speed=1.5;
  float movementNoise=2;
  
  //Picking where to get spawned
  Fish() {
    x=random(0+imgWidth, width-imgWidth);
  }

  //Checking to see if fish escaped, swam to waterLevel
  boolean escaped() {
    if (y<waterLevel+imgWidth) {
      return true;
    }
    return false;
  }
  
  //Moving fish towards up with adding some noise
  void swimUp() {
    y-=this.speed;
    x = x+random(movementNoise*(-1), movementNoise);
  }

  void display() {
    //ellipse(this.x, this.y, this.imgWidth, this.imgWidth);
    image(fishesImg[0], this.x-15, this.y-10, this.imgWidth, this.imgHeight);
  }
}
