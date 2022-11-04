int ures = 5; // 縦⽅向の分割数を格納するuresの宣⾔と初期化
int vres = 5; // 横⽅向の分割数を格納するvresの宣⾔と初期化

void setup() {
  // キャンバスサイズとレンダラーをP3Dに設定
  size(400, 400, P3D);
  noFill(); // 塗りつぶしをしない設定
}

void draw() {
  background(204); // 背景⾊を設定
  // 原点をキャンバスの中⼼に設定
  translate(width/2, height/2, 0);
  // 球の縦⽅向と横⽅向の分割数を設定
  sphereDetail(ures, vres);
  sphere(width/3); // 球(sphere)を描画
}

void keyPressed() {// キーボード⼊⼒があった場合実⾏
  if (keyCode==UP) ures += 1; // 上でuresに1を追加
  if (keyCode==DOWN) ures -= 1; // 下でuresから1を引く
  if (keyCode==LEFT) vres += 1; // 左でvresに1を追加
  if (keyCode==RIGHT) vres -= 1; // 右でvresから1を引く
}
