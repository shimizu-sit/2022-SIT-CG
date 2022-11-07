import com.jogamp.opengl.GLProfile;
{
  GLProfile.initSingleton();
}

float rx = 0.0; // x軸⽅向の回転を格納するrxの宣⾔と初期化
float ry = 0.0; // y軸⽅向の回転を格納するryの宣⾔と初期化

void setup() {
  // キャンバスサイズとレンダラーをP3Dに設定
  size(400, 300, P3D);
  frameRate(60);
  noFill(); // 塗りつぶしをしない設定
}

void draw() {
  background(204); // 背景⾊の設定
  // 原点をキャンバスの中⼼に設定
  translate(width/2, height/2, 0);
  rotateX(rx); // X軸を中⼼にrx分回転
  rotateY(ry); // Y軸を中⼼にry分回転
  pushMatrix(); // 現在の座標を保存
  translate(-100, 0, 0); // 原点を移動
  box(40, 120, 60); // 直⽅体の描画
  popMatrix(); // 保存した座標を戻す
  pushMatrix(); // 現在の座標を保存
  translate(100, 0, 0); // 原点を移動
  sphere(60); // 球を描画
  popMatrix(); // 保存した座標を戻す
}

void keyPressed() { // キーボード⼊⼒があった場合実⾏
  if (keyCode == UP) rx -= 0.1; // 上でrxに0.1を追加
  if (keyCode == DOWN) rx += 0.1; // 下でrxから0.1を引く
  if (keyCode == LEFT) ry -= 0.1; // 左でryから0.1を引く
  if (keyCode == RIGHT) ry += 0.1; // 右でryに0.1を追加
}
