// lightのオンオフを管理するswをブール型で宣言し初期化
boolean sw = false;

void setup() {
  // キャンバスサイズ(300, 300)，レンダラーP3Dに設定
  size(300, 300, P3D);
  noStroke(); // 枠線を描画しない
}

void draw() {
  background(204); // 背景色を設定

  if (sw) { // swがtrueの場合
    lights(); // 光源を設定
  }

  translate(width/2, height/2, 0); // 原点を移動
  sphere(width/3); //　球体を描画
}

void keyPressed() { // キー入力がされた場合実行
  if (key == 's') { // 入力キーがsだった場合
    if (sw == true) { // swがtrueだった場合
      sw = false; // swをfalaseに設定
    } else if (sw == false) { // swがfalseだった場合
      sw = true; // swをtrueに設定
    }
  }
}
