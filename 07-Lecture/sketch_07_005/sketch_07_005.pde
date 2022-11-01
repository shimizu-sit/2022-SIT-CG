float[] x = new float[5]; // x座標を格納するfloat型の配列の宣言
float[] y = new float[5]; // y座標の配列宣言
float[] rectWidth = new float[5]; // rectWidthの配列宣言
float[] rectHeight = new float[5]; // rectWidthの配列宣言
float[] xSpeed = new float[5]; // xSpeedの配列宣言
float[] ySpeed = new float[5]; // ySpeedの配列宣言

void setup() {
  size(800, 800);
  frameRate(30);
  noStroke();
  rectMode(CENTER);
  fill(0, 142, 204, 80);

  for (int i = 0; i < 5; i++) {
    x[i] = random(width);
    y[i] = random(height);
    rectWidth[i] = random(10, 100);
    rectHeight[i] = random(10, 100);
    xSpeed[i] = random(-10, 100);
    ySpeed[i] = random(-10, 100);
  }
}

void draw() {
  background(205);
  for (int i = 0; i < 5; i++) {
    rect(x[i], y[i], rectWidth[i], rectHeight[i]);
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];

    if (x[i] > width || x[i] < 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] > height || y[i] < 0) {
      ySpeed[i] *= -1;
    }
  }
}
