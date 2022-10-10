void game() {
  background(0);

  mega.rewind();
 
  //int z=0;
  //while(z<n){
  //  box[z].actshow();
  //}
  
    
  
  //drawbox(100, 100);
  //drawbox(700, 500);
  //drawbox(200, 600);
  //drawbox(0, 400);
  //drawbox(700, 200);
  //drawbox(400, 50);
  println(score, lives);
 // println(timer);
 // println(randomColor, randomWord);
//  println(a);
  //mega.rewind();
  //division
  //strokeWeight(0);
  //fill(0);
  //rect(0, 0, width/2, height);
  //fill(255);
  //rect(width/2, 0, width, height);

  //colors
  textSize(90);
  fill(colors[randomColor], a);
 a=a-0.8;
  text(words[randomWord], x, y);
  y=y+3;
  tsize=tsize-0.05;
  if(y>610) mode=GAMEOVER;



  //score, lives, highscore
  textSize(30);
  fill(255);
  text("SCORE: " +score, 100, 50); 
  text("LIVES: " +lives, 700, 50);
  
//pause button
  stroke(0);
  fill(255);
  square(0, 0, 50);
  rect(10, 10, 10, 30);
 
  rect(30, 10, 10, 30);

//buttons

tactile(100, 550, 100, 60);

fill(255);
tactile(100, 550, 100, 60);
rect(100, 550, 100, 60);
tactile(650, 550, 100, 60);
rect(650, 550, 100, 60);
textSize(20);
fill(colors[randomColor]);
text("not match", 150, 560);
text("match", 700, 560);

if (lives==0) mode=GAMEOVER;

 if(rectclicked(100, 550, 100, 60)){
      generateNewPuzzle();
     //   a=300;
    if (actualmatch()==true) {
      lives--;
    }
 }
 
  if(rectclicked(650, 550, 100, 60)){
   generateNewPuzzle();
   //     a=300;
    if (randomWord>randomColor && randomWord<randomColor) {
      lives--;
    }
  }
   
 if(rectclicked(100, 550, 100, 60)){
    generateNewPuzzle();
   // a=300;
if (randomWord>randomColor && randomWord<randomColor) {
      score++;
      plus.rewind();
      plus.play();
      }
     }
   
   if(rectclicked(650, 550, 100, 60)){
      generateNewPuzzle();
    //a=300;
    if (actualmatch()==true) {
      score++;
      
      plus.rewind();
      plus.play();
    }
     
   }
 
 

    
  if (leftkey==true) {
    generateNewPuzzle();
     //   a=300;
    if (actualmatch()==true) {
      lives--;
    }
  }
  if (rightkey==true) {
    generateNewPuzzle();
   //     a=300;
    if (randomWord>randomColor && randomWord<randomColor) {
      lives--;
    }
  }


  if (leftkey==true) {
    generateNewPuzzle();
   // a=300;
if (randomWord>randomColor && randomWord<randomColor) {
      score++;
      plus.rewind();
      plus.play();
      
    }
  }

  if (rightkey==true ) {
    generateNewPuzzle();
    //a=300;
    if (actualmatch()==true) {
      score++;
       plus.rewind();
      plus.play();
    }
  }
}

void gameClicks() {
  if (rectclicked(0, 0, 50, 50)) {
    mode=PAUSE;
  }
}

boolean actualmatch() {
  return randomColor==randomWord;
}

boolean notactualmatch() {
  return randomWord>randomColor && randomWord<randomColor;
}


void generateNewPuzzle() {
  randomWord=(int) random(0, 6);
  randomColor=(int) random(0, 6);
  a=300;
  x= (int)random(0, 400);
  y=(int) random(0, 300);
splits();
  
}

void splits(){
if (randomMatch<0.5) {
    actualmatch();
  } else {
    notactualmatch();
  }
}
