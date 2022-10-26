// int型で変数の宣言と初期化
int tileCount = 20;
int actRandomSeed = 0;
int actStrokeCap;

void setup() {
  size(400, 400); // キャンバスサイズを(400,400)に設定
  actStrokeCap = ROUND; // actStrokeCapにROUNDを代入
}

void draw() {
  background(255); // 背景色を白(255)に設定
  strokeCap(actStrokeCap); // 線端処理をROUNDに設定
  randomSeed(actRandomSeed); // 乱数の元を0に設定
  // キャンバスをtileCount=20pxで分割
  for (int gridY = 0; gridY < tileCount; gridY++) {
    for (int gridX = 0; gridX < tileCount; gridX++) {
      // 20px x 20px に分割した左上の座標をposX,posYに設定
      float posX = width / tileCount * gridX;
      float posY = height / tileCount * gridY;
      int toggle = int(random(0, 2));

      // toggleが0の場合
      if (toggle == 0) {
        strokeWeight(mouseX / 20); // 線の太さをマウスのX座標/20に設定
        // 左上から右下に線を描画
        line(posX, posY, posX+width/tileCount, posY+height/tileCount);
      }

      // toggleが1の場合
      if (toggle == 1) {
        strokeWeight(mouseY / 20); // 線の太さをマウスのY座標/20に設定
        // 右上から右下に線を描画
        line(posX, posY+width/tileCount, posX+height/tileCount, posY);
      }
    }
  }
}

// マウスが押された場合実行
void mousePressed() {
  // 乱数の元を乱数を使って別のものにする
  actRandomSeed = int(random(1000000));
}

// キーボードが押された場合実行
void keyReleased() {
  // 1が押されたら線端処理をROUND(丸)に設定
  if (key == '1') actStrokeCap = ROUND;
  // 2が押されたら線端処理をSQUARE(延長なし)に設定
  if (key == '2') actStrokeCap = SQUARE;
  // 1が押されたら線端処理をPROJECT(四角形)に設定
  if (key == '3') actStrokeCap = PROJECT;
}
