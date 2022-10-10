
float r=0;
float z=0;
void gameover() {
  background(0, 100);
  //fill(255);
  fill(random(255), random(255), random(255));
  text("HIGHSCORE" +HS, width/2, height/2);
   if (score >HS) {
    HS=score;
  }
  
  
  tactile(300, 450, 200, 100);
  fill(0);
  rect(300, 450, 200, 100);
  textSize(40);
  fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  text("RESTART", 400, 500);

drawbox(100, 100);
drawbox(700, 500);
drawbox(200, 600);
drawbox(0, 400);
drawbox(700, 200);
drawbox(400, 50);

}


void gameoverClicks() {
  reset();
  if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<550) {
    mode=INTRO;
  }
  
}


void drawbox(int x, int y){
  pushMatrix();
translate(x, y);
rotateX(r);
rotateY(r);
stroke(random(255), random(255), random(255));
noFill();
box(50);
//sphere(50);
r=r+0.005;
z=z+1;
popMatrix();
  
}
