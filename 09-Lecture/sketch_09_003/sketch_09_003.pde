import com.jogamp.opengl.GLProfile;
{
  GLProfile.initSingleton();
}

float angle = 0.0; // 回転角angleをfloat型で宣言と初期化
int lightFlag = 0; // 指向光の管理用変数lightFlagの宣言と初期化
float nx = 0.0, ny = 0.0, nz = -1.0; // 指向光の照射方向を管理するnx,ny,nzの宣言と初期化
// 今回はZ軸は-1に固定

void setup() {
  size(800, 800, P3D); // キャンバスサイズ(800,800)，レンダラーP3Dに設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
  textSize(32); // フォントサイズを32に設定
}

void draw() {
  background(204); //背景色を設定

  // キャンバス内にnxとnyの値をテキストとして描画
  // nf(nx, 1, 1)について
  // 第一引数：表示する値もしくは変数
  // 第二引数：整数部分の表示桁数
  // 第三引数：小数部分の表示桁数
  // この場合，nxの値を整数1桁，小数1桁で表示するという意味
  text("nx = " + nf(nx, 1, 1), 10, 80);
  text("ny = " + nf(ny, 1, 1), 10, 120);

  if (lightFlag == 1) { // lightFlagが1の場合
    text("light color = Red", 10, 40); // キャンバス内にテキストを描画
    directionalLight(255, 0, 0, nx, ny, nz); // 指向光の色を赤に設定
  } else if (lightFlag == 2) { // lightFlagが2の場合
    text("light color = Green", 10, 40); // キャンバス内にテキストを描画
    directionalLight(0, 255, 0, nx, ny, nz); // 指向光の色を緑に設定
  } else if (lightFlag == 3) { // lightFlagが3の場合
    text("light color = Blue", 10, 40); // キャンバス内にテキストを描画
    directionalLight(0, 0, 255, nx, ny, nz); // 指向光の色を青に設定
  } else { // それ以外
    text("light color = Black", 10, 40); // キャンバス内にテキストを描画
    directionalLight(0, 0, 0, nx, ny, nz); // 指向光の色を黒に設定
  }

  translate(width/2, height/2); // 原点をキャンバスの中心へ移動
  rotateX(angle); // X軸を中心に回転角angleの値で回転
  rotateY(angle * 0.8); // Y軸を中心に回転角angle x 0.8の値で回転
  box(width/3); // 立方体を描画

  angle += 0.05; // 回転角angleに0.05を追加
}

void keyPressed() { // キー入力されたら実行
  switch(key) { // 入力されたキーによって処理を分岐させる
  case 'r': // rが入力された場合
    lightFlag = 1; // lightFlagに1を代入
    break; // switch文から抜ける

  case 'g': // gが入力された場合
    lightFlag = 2; // lightFlagに2を代入
    break; // switch文から抜ける

  case 'b': // bが入力された場合
    lightFlag = 3; // lightFlagに3を代入
    break; // switch文から抜ける

  case '0' : // 0が入力された場合
    lightFlag = 0; // lightFlagに0を代入
    break; // switch文から抜ける
  }

  if ( keyCode == UP) { // 上キーが入力された場合
    ny -= 0.1; // 照射方向のY軸を管理するnyを-0.1
  } else if ( keyCode == DOWN) { // 下キーが入力された場合
    ny += 0.1; // 照射方向のY軸を管理するnyを+0.1
  } else if ( keyCode == LEFT) { // 左キーが入力された場合
    nx -= 0.1; // 照射方向のX軸を管理するnxを-0.1
  } else if ( keyCode == RIGHT) { // 右キーが入力された場合
    nx += 0.1; // 照射方向のX軸を管理するnxを+0.1
  }
}
