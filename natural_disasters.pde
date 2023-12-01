void naturalDisasters() {
  // Applies chosen natural disaster for 10 seconds
  if(play) {
    if(naturalDisasterChosen == 1) {
      earthquake();
      timerEnd = 600;
    }
   
    else if(naturalDisasterChosen == 2) {
      tsunami();
      timerEnd = 200;
    }
   
    else if(naturalDisasterChosen == 3) {
      tornado();
    }
   
    timer++;
   
    if(timer == timerEnd) {
      play = false;
      Play.setVisible(true);
      timer = 0;
      xTsunami = -800;
    }
  }
}



void earthquake() {
  if(true) {
    // shakes the ground and selected building by a randomly generated value
    PVector randomShake = new PVector(int(random(-3, 3)), int(random(-2, 2)));
    ground.add(randomShake);
   
    if(shelterChosen == 0) {
      tent.pos.add(randomShake);
    }
   
    else if(shelterChosen == 1) {
      firstHouse.pos.add(randomShake);
    }
   
    else if(shelterChosen == 2) {
      threeStory.pos.add(randomShake);
    }
   
    else {
      skyscraper.pos.add(randomShake);
    }
  }
}


void tsunami() {
  image(tsunami, xTsunami, 0);

  xTsunami += tsunamiSpeed; 
}

void tornado() {}
