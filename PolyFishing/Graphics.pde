//Drawing GameOver screen
void gameOverScreen() {
  saveHighScore();
  clear();
  drawBackground();
  image(boatImg, boat.x-20, waterLevel-20, boat.boatWidth, boat.boatHeight);
  textSize(30);
  textAlign(CENTER);
  String s = "Game Over";
  fill(0);
  text(s, width/2, height/2-90);
  textAlign(LEFT);
  textSize(25);
  String s1 = "Score:"+score +"\nLevel: "+level+"\nHigh Score:"+hs+"\nPress any key to play again!";
  fill(0);
  text(s1, width/2-150, height/2-40);
}

//Drawing splash screen
void splashScreen() {
  drawBackground();
  image(boatImg, boat.x-20, waterLevel-20, boat.boatWidth, boat.boatHeight);
  textSize(30);
  textAlign(CENTER);
  String s = "Welcome to PolyFishing!";
  fill(0);
  text(s, width/2, height/2-150);
  textSize(20);
  textAlign(CENTER);
  String s1 = "Collect the green fish and make a highscore!\n Watch out for the brown ones they can harm your boat!\nTry collecting golden ones they give 1UP!";
  fill(0);
  text(s1, width/6*3, height/2-100);
  textSize(20);
  textAlign(CENTER);
  String s2 = "Controls :";
  fill(0);
  text(s2, width/2, height/2+10);
  textAlign(LEFT);
  String s3 = "Left Arrow - Move left\nRight Arrow - Move right\nDown Arrow On Press - Drop hook\nDown Arrow On Release - Rise hook";
  fill(0);
  text(s3, width/2-170, height/2+40);
  textSize(25);
  textAlign(CENTER);
  String s4 = "Press space to start playing!";
  fill(0);
  text(s4, width/2, height/2+210);
  textAlign(LEFT);
}

//Drawing scores [score,lives,level,highscore]
void drawScore() {

  if (score>hs) {
    hs=score;
  }

  textSize(25);
  String s = "Score: "+score +"\nLevel: "+level;
  fill(0);
  text(s, 10, 35);
  textSize(25);

  String liv = "Lives: "+lives;
  fill(0);
  text(liv, width/2-40, 35);
  textSize(25);

  String hss = "Highscore: "+hs;
  fill(0);
  text(hss, width-200, 35);
}
void drawBackground() {
  //Sky
  background(38, 82, 226);
  fill(66, 217, 244);
  //Water
  rect(0, 0, width, waterLevel+20);
}
