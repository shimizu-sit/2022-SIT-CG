// 初期化関数
void setup() {
  size(400, 400); // キャンバスを(400,400)に設定
  noStroke(); // 枠線を描画しない
  background(255); // 背景を白で描画（塗る）
}

// ループ関数
void draw() {
  // R,G,Bを0〜255までの乱数で塗りつぶし色を設定
  fill(random(255), random(255), random(255));
  // x,y座標を0〜400の乱数で円を描画
  ellipse(random(400), random(400), 50, 50);
}
