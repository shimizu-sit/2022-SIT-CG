float angle = 0.0; // 回転角の変数宣言と初期化

void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
  rectMode(CENTER); // rectの第1,2引数を長方形の中心にする
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  rect(0, 0, 100, 100);
  popMatrix();

  pushMatrix();
  translate(width/4, height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(width/4, 3*height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  pushMatrix();
  translate(3*width/4, 3*height/4);
  rotate(angle);
  rect(0, 0, 50, 50);
  popMatrix();

  angle += 0.1;
}
