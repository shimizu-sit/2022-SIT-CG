float rx = 0.0; // x軸の回転角を管理する変数宣言と初期化
float ry = 0.0; // y軸の回転角を管理する変数宣言と初期化
float rz = 0.0; // z軸の回転角を管理する変数宣言と初期化

void setup() {
  size(800, 800, P3D); // キャンパスサイズとレンダラを設定
  noStroke(); // 枠線を描画しない設定
}

void draw() {
  background(204); // 背景色の設定
  translate(width/2, height/2, 0); // 原点をキャンパスの中心へ移動
  rotateX(rx); // x軸を中心に回転角rxの値で回転
  rotateY(ry); // y軸を中心に回転角rxの値で回転
  rotateZ(rz); // z軸を中心に回転角rxの値で回転
  scale(160); // 80倍に拡大

  makeCube();

  rx += 0.01; // rxに0.01を追加
  ry += 0.02; // ryに0.02を追加
  rz += 0.05; // rzに0.05を追加
}

void makeCube() {
  beginShape(QUADS); // 図形の種類を四角形(QUADS)に設定

  fill(255, 0, 0); // 塗りつぶしの色を設定
  vertex(-1, 1, 1);
  vertex( 1, 1, 1);
  vertex( 1, -1, 1);
  vertex(-1, -1, 1);

  fill(0, 255, 0); // 塗りつぶしの色を設定
  vertex( 1, 1, 1);
  vertex( 1, 1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1, 1);

  fill(0, 0, 255); // 塗りつぶしの色を設定
  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);

  fill(255, 255, 0); // 塗りつぶしの色を設定
  vertex(-1, 1, -1);
  vertex(-1, 1, 1);
  vertex(-1, -1, 1);
  vertex(-1, -1, -1);

  fill(0, 255, 255); // 塗りつぶしの色を設定
  vertex(-1, 1, -1);
  vertex( 1, 1, -1);
  vertex( 1, 1, 1);
  vertex(-1, 1, 1);

  fill(255, 0, 255); // 塗りつぶしの色を設定
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1, 1);
  vertex(-1, -1, 1);
  endShape(); // ここでおしまい
}
