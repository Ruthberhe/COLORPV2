void mousePressed() {
  if(mode==INTRO){
    introClicks();
  }else if (mode==GAME) {
    gameClicks();
  }else if (mode==PAUSE) {
    pauseClicks();
  }else if (mode==GAMEOVER) {
    gameoverClicks();
  }else {
  }
}

boolean rectclicked(int x, int y, int w, int h){
  if(mouseX>x && mouseY<x+w && mouseY>y && mouseY<y+h){
    return true;
  }else{
    return false;
  }
  
}

void tactile(int x, int y, int w, int h){
    if(mouseX>x && mouseY<x+w && mouseY>y && mouseY<y+h){
      strokeWeight(5);
      stroke((colors[randomColor]));
      
    }else stroke(255);
     
    }
