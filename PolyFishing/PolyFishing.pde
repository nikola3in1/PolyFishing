float waterLevel = 200;
int score=0;
int hs=0;
int level=1;
int lives = 3;
boolean isGameOver =false;
boolean splashScreenOn = true;
PrintWriter output;

PImage boatImg;
PImage hookImg;
PImage[] fishesImg;

//Fish spawning variables
float lastMs=0;
float fishSpawnMs = 2500;
Boat boat;

ArrayList<Fish> fishes;

//Cleans up and restarts game
void restartGame() {
  score=0;
  level=1;
  lives=3;
  isGameOver = false;
  lastMs=0;
  fishSpawnMs=1000;
  boat = new Boat();
  fishes = new ArrayList();
}

void setup() {
  fishesImg = new PImage[3];
  fishesImg[0] = loadImage("goodfish.png");
  fishesImg[1] = loadImage("badfish.png");
  fishesImg[2] = loadImage("goldenfish.png");

  size(1024, 800);
  boat = new Boat();
  fishes = new ArrayList();
  //Loading highscore
  hs = parseInt(loadHighScore());
}

//Main game mechanic
void draw() {  
  if (splashScreenOn) {
    splashScreen();
  } else if (!isGameOver) {
    clear();
    drawBackground();
    drawScore();
    boat.display();
    checkFishes();
    checkGameOver();
    levelUP();
    spawnFish();
  } else {
    gameOverScreen();
  }
}
