//Main collision detection
void checkFishes() {
  ArrayList<Fish> newFishes = new ArrayList();
  //We check every fish to see if it collides
  for (Fish f : fishes) {
    f.display();
    f.swimUp();

    //Calculation distances
    float dxHook = f.x - boat.x;
    float dyHook = f.y - boat.hook.y;
    float d= sqrt(sq(dxHook)+sq(dyHook));

    String fishClass = f.getClass().getSimpleName();

    //Handeling cases
    if (fishClass.equals("BadFish")) {
      //Bubble collides with boat
      if (overlaps(boat.x, boat.size*2, f.x, f.size) && overlaps(waterLevel, boat.size, f.y, f.size)) {
        lives--;
      } else if (f.escaped() || d < boat.hook.size+ f.size) {
      } else {
        newFishes.add(f);
      }
    } else if (fishClass.equals("GoldenFish")) {
      //Bubble collides with boat
      if (d < boat.hook.size+ f.size) {
        lives++;
      } else if (f.escaped() ||  overlaps(boat.x, boat.size*2, f.x, f.size) && overlaps(waterLevel, boat.size, f.y, f.size)) {
      } else {
        newFishes.add(f);
      }
    } else {
      if (f.escaped()) {
        //Fish reaced the waterLevel
        lives--;
      } else if (d < boat.hook.size+ f.size) {
        //Fish is catched
        score++;
      } else {
        //Fish is still "alive"
        newFishes.add(f);
      }
    }
  } 
  fishes = newFishes;
}
//Checking if objects are overlaping
boolean overlaps(double point1, double length1, double point2, double length2)
{
  double highestStartPoint = Math.max(point1, point2);
  double lowestEndPoint = Math.min(point1 + length1, point2 + length2);
  return highestStartPoint < lowestEndPoint;
}

//Making the game more difficult over time
void levelUP() {
  if (score>10 && score<20) {
    level=2;
    fishSpawnMs=1500;
  } else if (score>20 && score<30) {
    fishSpawnMs=1000;
    level=3;
  } else if (score>30 && score<50) {
    fishSpawnMs=750;
    level=4;
  } else if (score > 50) {
    fishSpawnMs=500;
    level=5;
  }
}
//SpawningFishes
void spawnFish() {
  float newMs= millis();
  if (newMs-lastMs > fishSpawnMs) {
    if (random(10)<=5) {
      fishes.add(new BadFish());
    } else {
      if (random(10)<1) {
        fishes.add(new GoldenFish());
      } else {
        fishes.add(new Fish());
      }
    }
    lastMs = millis();
  }
}
//Saving highscore to file
void saveHighScore() {
  output = createWriter("highscore.txt");
  output.println(hs);
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
}
//Loading highscore from file
String loadHighScore() {
  String[] lines = loadStrings("highscore.txt");
  if (lines.length>0) {
    return lines[0];
  }
  return null;
}
//Checking if the game is over
void checkGameOver() {
  if (lives<=0) {
    isGameOver=true;
  }
}
