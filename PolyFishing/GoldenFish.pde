//Golden fish class which extends Fish
class GoldenFish extends Fish {
  GoldenFish() {
    super();
    this.movementNoise*=2;
    this.imgWidth -= 10;
    this.imgHeight -= 10;

    this.speed=3.5;
  }
  void swimUp() {
    y-=this.speed;
    x = x+random(this.movementNoise*(-1), this.movementNoise);
  }

  void display() {
    //ellipse(this.x, this.y, this.size, this.size);
    image(fishesImg[2], this.x-10, this.y-5, this.imgWidth, this.imgHeight);
  }
}
