PImage img; // 画像を格納するPIamgeの変数を用意

void setup() {
  size(800, 800); // キャンバスサイズの設定
  img = loadImage("cat-1.jpg");
}

void draw() {
  background(0); // 背景色を設定
  image(img, 0, 0, 400, 400); // 画像を(0, 0)から幅400，高さ400で表示
}
