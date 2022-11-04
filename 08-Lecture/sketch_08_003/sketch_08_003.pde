float angle = 0.0;

void setup() {
  size(400, 400, P3D);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateY(angle);
  rect(0, 0, width/2, height/2);
  angle += 0.05;
}
