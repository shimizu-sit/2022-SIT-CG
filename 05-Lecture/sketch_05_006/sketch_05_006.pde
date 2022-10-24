float angle = 0.0; // 回転させる変数の宣言と初期化
void setup() {
   size(400, 400);
   frameRate(10); // アニメーションがわかりやすいように10に設定
}
void draw() {
   background(0);
   rotate(angle); // angle変数の値で回転
   stroke(255);
   line(0, 0, 400, 0);
   rect(200, 50, 100, 50);
   angle += 0.05; // angleに0.05を加算
}
