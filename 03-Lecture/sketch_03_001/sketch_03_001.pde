size(800, 800);

// float型で「rectSize」という変数を用意してそこに600を代入する
float rectSize = 600;

// 左上の座標(100, 100)で幅と高さをそれぞれrectSize=600として正方形を描画
rect(100, 100, rectSize, rectSize);

// rectSizeの値を2で割ってその値をrectSizeに戻す
// rectSize = 600 /2 = 300となる
rectSize = rectSize  / 2;

// 1辺が300の正方形を描画
rect(100, 100, rectSize, rectSize);
// rectSize = 150
rectSize = rectSize  / 2;

// 1辺が150の正方形を描画
rect(100, 100, rectSize, rectSize);
// rectSize = 75
rectSize = rectSize  / 2;

// 1辺が75の正方形を描画
rect(100, 100, rectSize, rectSize);
// rectSize = 37.5
rectSize = rectSize  / 2;

// 1辺が37.5の正方形を描画
rect(100, 100, rectSize, rectSize);

save("sketch_03_001.png");
