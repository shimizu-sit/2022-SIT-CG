// ダメな例
float x, y;
float rectWidth, rectHeight;
float xSpeed, ySpeed;

void setup() {
  size(800, 800);
  frameRate(10);
  x = random(width);
  y = random(height);

  rectWidth = random(10, 100);
  rectHeight = random(10, 100);

  xSpeed = random(-10, 10);
  ySpeed = random(-10, 10);
}

void draw() {
  background(255);
  for (int i = 0; i < 5; i++) {
    rect(x, y, rectWidth, rectHeight);
    x += xSpeed;
    y += ySpeed;

    if ( x > width || x < 0) xSpeed *= -1;
    if (y > height || y <0) ySpeed *= -1;
  }
}
