float x, y; // 円の中⼼座標の変数宣⾔
float xSpeed, ySpeed; // 1フレームのx軸⽅向，y軸⽅向の移動量の宣⾔

void setup() {
  size(480, 480);
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
  fill(0, 191, 255, 80); // 塗りつぶし⾊をDeep Sky Blueに設定
  x = random(width); // width = 480（キャンバスサイズの幅）
  y = random(height); // height = 480（キャンバスサイズの⾼さ）
  xSpeed = random(-10, 10); // x軸⽅向の移動量を-10〜10の乱数で設定
  ySpeed = random(-10, 10); // x軸⽅向の移動量を-10〜10の乱数で設定
}

void draw() {
  background(255); // 背景を⽩で描画（塗る）
  ellipse(x, y, 40, 40); // 中⼼座標(x,y)で円を描画
  x += xSpeed; // 中⼼x座標にx軸⽅向の移動量 xSpeedを⾜す
  y += ySpeed; // 中⼼y座標にy軸⽅向の移動量 ySpeedを⾜す
  
  if (x > width) { // xの値がキャンバス幅(480)より⼤きくなった場合
    x = 0; // xの値を0にする
  }
  if (x < 0) { // xの値が0より⼩さくなった場合
    x = width; // xの値をwidth(480)にする
  }
  if (y > height) { // yの値がキャンバス⾼さ(480)より⼤きくなった場合
    y = 0; // yの値を0にする
  }
  if (y < 0) { // yの値が0より⼩さくなった場合
    y = height; // yの値をheight(480)にする
  }
}
