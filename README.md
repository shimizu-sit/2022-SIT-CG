# 2022-SIT-CG
 
2022年度湘南工科大学工学部情報工学科のコンピュータグラフィックス（清水担当）のサンプルプログラムとスライド資料を管理するリポジトリです（後に公開するかも）．

## MacでP3Dで実行できない場合の対処
MacでProcessing4.0.1を利用している場合P3Dを使うと描画されないという問題があります．
この問題の簡単な解決策はプログラムの先頭に以下のコードを追加することで実行できます．
''' Processing
import com.jogamp.opengl.GLProfile;
{
  GLProfile.initSingleton();
}
'''
この問題は4.0.2で修正されると予定です．

### 参考サイト
https://github.com/processing/processing4/issues/544