# 2022-SIT-CG
 
2022年度湘南工科大学工学部情報工学科のコンピュータグラフィックス（清水担当）のサンプルプログラムとスライド資料を管理するリポジトリです（後に公開するかも）．

## (Mac)P3Dで実行できない場合の対処
MacでProcessing4.0.1を利用している場合P3Dを使うと描画されないという問題があります．
この問題の簡単な解決策はプログラムの先頭に以下のコードを追加することで実行できます．

```Processing
import com.jogamp.opengl.GLProfile;
{
  GLProfile.initSingleton();
}
```

この問題は4.0.2で修正されると予定です．

### 参考サイト
https://github.com/processing/processing4/issues/544

### 問題解決 

#### 221128
Processingのバージョンが **4.1.1** になりました． 
[processing.org](https://processing.org/download) でも **4.1.1** が公開されているので，このバージョンを利用するば問題ないです．

#### 221126
GitHub上で11月25日にリリースされた4.0.2ではこの問題が修正されています．
4.0.2は以下からダウンロードできます．
https://github.com/processing/processing4/releases/tag/processing-1287-4.0.2

まだ，[processing.org](https://processing.org/download) には4.0.2が公開されていません．
