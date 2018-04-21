class BadFish extends Fish {
  float time=-1;
  BadFish() {
    super();
    this.speed=3;
    this.imgWidth = 40;
    this.imgHeight = 70;
  }
  void swimUp() {
    y-=this.speed;
  }

  void display() {
    //ellipse(this.x, this.y, this.imgWidth, this.imgWidth);
    image(fishesImg[1], this.x-20, this.y-10, this.imgWidth, this.imgHeight);
  }
}
