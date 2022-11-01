// 配列を使わない場合
float x1, y1, x2, y2, x3, y3, x4, y4, x5, y5;
float xSpeed1, ySpeed1, xSpeed2, ySpeed2, xSpeed3, ySpeed3, xSpeed4, ySpeed4, xSpeed5, ySpeed5;
float rW1, rH1, rW2, rH2, rW3, rH3, rW4, rH4, rW5, rH5;

void setup() {
  size(800, 800);
  //frameRate(10);
  noStroke();
  fill(0, 191, 255, 80);
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);
  x3 = random(width);
  y3 = random(height);
  x4 = random(width);
  y4 = random(height);
  x5 = random(width);
  y5 = random(height);

  rW1 = random(10, 100);
  rH1 = random(10, 100);
  rW2 = random(10, 100);
  rH2 = random(10, 100);
  rW3 = random(10, 100);
  rH3 = random(10, 100);
  rW4 = random(10, 100);
  rH4 = random(10, 100);
  rW5 = random(10, 100);
  rH5 = random(10, 100);

  xSpeed1 = random(-10, 10);
  ySpeed1 = random(-10, 10);
  xSpeed2 = random(-10, 10);
  ySpeed2 = random(-10, 10);
  xSpeed3 = random(-10, 10);
  ySpeed3 = random(-10, 10);
  xSpeed4 = random(-10, 10);
  ySpeed4 = random(-10, 10);
  xSpeed5 = random(-10, 10);
  ySpeed5 = random(-10, 10);
}

void draw() {
  background(255);
  rect(x1, y1, rW1, rH1);
  x1 += xSpeed1;
  y1 += ySpeed1;

  if (x1 > width || x1 < 0) xSpeed1 *= -1;
  if (y1 > height || y1 < 0) ySpeed1 *= -1;

  rect(x2, y2, rW2, rH2);
  x2 += xSpeed2;
  y2 += ySpeed2;

  if (x2 > width || x2 < 0) xSpeed2 *= -1;
  if (y2 > height || y2 < 0) ySpeed2 *= -1;

  rect(x3, y3, rW3, rH3);
  x3 += xSpeed3;
  y3 += ySpeed3;

  if (x3 > width || x3 < 0) xSpeed3 *= -1;
  if (y3 > height || y3 < 0) ySpeed3 *= -1;

  rect(x4, y4, rW4, rH4);
  x4 += xSpeed4;
  y4 += ySpeed4;

  if (x4 > width || x4 < 0) xSpeed4 *= -1;
  if (y4 > height || y4 < 0) ySpeed4 *= -1;

  rect(x5, y5, rW5, rH5);
  x5 += xSpeed5;
  y5 += ySpeed5;

  if (x5 > width || x5 < 0) xSpeed5 *= -1;
  if (y5 > height || y5 < 0) ySpeed5 *= -1;
}
