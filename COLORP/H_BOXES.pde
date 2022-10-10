class boxes{
float x, y, size;
  
  boxes(){
    x=random(0, width);
    y=random(0, height);
    size=random(20, 50);
  }
  
  
  void actshow(){
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
}
