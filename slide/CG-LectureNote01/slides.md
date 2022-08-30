---
theme: seriph
background: https://source.unsplash.com/collection/94734566/1920x1080
class: text-center
highlighter: shiki
lineNumbers: false
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
drawings:
  persist: false
css: unocss
title: Welcome to Computer Graphics
---

# Welcome to Computer Graphics

### 第1回　ガイダンス

授業担当：清水哲也（[shimizu@info.shonan-it.ac.jp](<mailto:shimizu@info.shonan-it.ac.jp>)）

<!--
The last comment block of each slide will be treated as slide notes. It will be visible and editable in Presenter Mode along with the slide. [Read more in the docs](https://sli.dev/guide/syntax.html#notes)
-->

---

# 授業内容

- **開講学科** - 情報工学科
- **授業形態** - 演習
- **科目学年** - 2年次
- **対象クラス** - 2年次 (I)-1, (I)-4 ((I)-2,(I)-3の学生は2限の宮川先生のクラスを履修してください)
- **授業担当** - 清水哲也（1406室，[shimizu@info.shonan-it.ac.jp](<mailto:shimizu@info.shonan-it.ac.jp>)）
- **SA** - 2名　淺倉さん（清水研所属），飯塚さん（堀越研所属）

<br>
<br>

[シラバス　コンピュータグラフィックス](https://syllabus.shonan-it.ac.jp/doc/73Q102A2.html)

<!--
You can have `style` tag in markdown to override the style for the current page.
Learn more: https://sli.dev/guide/syntax#embedded-styles
-->


---

# 授業目的

- **Processing**というデザイン言語を使ったプログラミングを通して，**コンピュータグラフィックスの基礎概念**を学ぶ
- 3年次開講の「[メディアインタラクション](https://syllabus.shonan-it.ac.jp/doc/73R041A3.html)」を履修する上で必要なことを学ぶ

---

# Processingとは？

- [Processing](https://processing.org/) 
- ビジュアルデザイン用のプログラミング言語
- WindowsでもMacOSでも使える
- すべて無料で使える
- 初心者がプログラミングを学ぶの良い（と言われている）
- [MIT Media Lab](https://www.media.mit.edu/)の[Ben Fry](https://twitter.com/ben_fry)と[Casey Reas](https://twitter.com/REAS)によって開発
- Javaベースのクロスプラットフォームに対応
- JavaScript版の[p5.js](https://p5js.org/)などの派生プロジェクトもある

---

# Processingで何ができる？

Processingで何ができるかを知るためには[OpenProcessing](https://openprocessing.org/)を参考にするといいです．

---

# Procesinng + ○○

- Processing + OpenCV（画像処理ライブラリ）
- Processing + Arduino（マイコンボード）
- Processing + Unity（ゲームエンジン）
- Processing + AR/VR（拡張現実，仮想現実）
- Processing + Sensor(ジャイロセンサなど)


---

# Processing + LeapMotion + Laser
卒業研究事例

https://youtu.be/IDH3-_iRm6s

---

# 出席等について

- 出席：情報開始〜5分まで（Moodle）
- 遅刻：授業開始6分〜30分ぐらいまで（出席カード）
- 欠席：授業開始31分以上

電車遅延は対応します


---

# 毎回の講義の進め方

- 演習形式の授業
- 課題：授業時間内に提出
- 宿題：指定日までに提出
- 課題・宿題の提出はMoodleを利用します


---

# 教科書・参考書

- 教科書
  - 毎回の授業で資料をMoodle上で配布します
- 参考書
  - [Processing　クリエイティブ・コーディング入門](https://gihyo.jp/book/2017/978-4-7741-8867-6)

---

# 授業スケジュール

| 回数  | 日程  |                          講義内容                          |
| :---: | :---: | :--------------------------------------------------------- |
|   1   | 09/27 | ガイダンス                                                 |
|   2   | 10/04 | Processing基本操作                                         |
|   3   | 10/11 | 単純な図形の描画，繰り返し，条件分岐処理の利用             |
|   4   | 10/18 | アニメーションの基本                                       |
|   5   | 10/25 | ローカル座標系，幾何学変換                                 |
|   6   | 11/01 | イベント処理，インタラクティブな図形描画，マウス・キー入力 |
|   7   | 11/08 | 複数図形の描画                                             |
|   8   | 11/15 | 3Dモデル描画とアニメーション                               |

---

# 授業スケジュール

| 回数  | 日程  |               講義内容               |
| :---: | :---: | :----------------------------------- |
|   9   | 11/22 | 陰影表現                             |
|  10   | 11/29 | 画像の読み込み，テクスチャマッピング |
|  11   | 12/06 | ベクトルを利用した描画               |
|  12   | 12/13 | 簡単な物理シミュレーション           |
|  13   | 12/20 | 物理シミュレーション                 |
|  14   | 01/10 | 粒子モデルによる表現                 |
|  15   | 01/17 | 試験                                 |
|  16   | 01/31 | 振り返りとまとめ                     |
