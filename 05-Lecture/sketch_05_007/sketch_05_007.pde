float angle = 0.0; // 回転させる変数宣言と初期化
void setup() {
  size(800, 800);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
}
void draw() {
  background(0);
  translate(width/2, height/2); // 原点をキャンバスの中心に移動
  rotate(angle); // angleの値で回転
  rect(0, 0, 200, 200);
  angle += 0.1; // angleに0.1を加算
}
