float angle = 0.0; // 回転させる変数宣言と初期化
void setup() {
  size(400, 400);
  frameRate(60);
  noStroke();
  rectMode(CENTER); // rectの第1,2引数を長方形の中心にする
}
void draw() {
  background(0);
  translate(width/2, height/2); // 原点をキャンバスの中心に移動
  rotate(angle); // angleの値で回転
  rect(0, 0, 100, 100);
  angle += 0.1; // angleに0.1を加算
}
