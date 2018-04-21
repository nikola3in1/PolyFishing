//Handling  user input
void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      boat.leftKey = 0;
    }
    if (keyCode == RIGHT)
    {
      boat.rightKey = 0;
    }

    if (keyCode == DOWN)
    {
      boat.hook.downKey = -1;
    }
  }
}

void keyPressed()
{
  if (key ==' ') {
    if (isGameOver) {
      restartGame();
    } else if (splashScreenOn) {
      splashScreenOn = false;
    }
  }

  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      boat.leftKey = 1;
    }
    if (keyCode == RIGHT)
    {
      boat.rightKey = 1;
    }
    if (keyCode == DOWN)
    {
      boat.hook.downKey = 1;
    }
  }
}
