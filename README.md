# Tontoko Tile - Godot TileSet Easy Maker

![image-20220425004254572](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220425004254572.png)

とんとこタイルはGodotのタイルセットをかんたんに作るアドオンです。

pngファイルを読み込み（複数可）、タイルセットのtresファイルと最終pngファイルを出力します。

以下の機能があります。

- タイル画像の配置、並び替え
- セルに対するコリジョンの設定
- マークを塗ることで通行設定が可能
- マークによってZindex、YSortを設定可能
- オートタイルを設定可能
  - 対応矩形マス形式　1x3, 3x1, 3x2, 3x3, 3x3(真ん中穴)
  - 他、ウディタ形式のオートタイル画像、ツクール形式のオートタイル画像に対応しています。
- 複数矩形マスをシングルタイルとして登録可能



[#TODO ここに動画を載せる]

オートタイルはこんな感じに作るよ動画（仮）

[開発中の動画１](https://twitter.com/i/status/1495674099594850309)

[開発中の動画２](https://twitter.com/i/status/1495309899865096192)


[#TODO ここに英語を書く]

Tontoko Tile is Godot TileSet make tool.



## 使い方

---

![help_01_tab](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_01_tab.webp)

上部ワークスペースに TontokoTile が追加されています。



![image-20220424214851811](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424214851811.png)

**※「タイル設定」のCellSizeを設定する**

![image-20220424220127102](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424220127102.png)

追加する画像の種類を選択します。

「通常タイル」「オートタイルウディタ形式」「オートタイルツクール形式」から選択します。

「画像選択」で画像追加します。

![image-20220424223609763](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424223609763.png)

マークをつけて通行設定をします。

**マークは、ドラッグでまとめて矩形マークできます。**

複数シングルタイル化やオートタイル化をします。

![help_04_canvassetting](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_04_canvassetting.webp)

出力するマス範囲を「キャンバスサイズ」で設定します。

![help_03_footer](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_03_footer.webp)

出力パスを指定して「出力！」ボタンを押します。

![image-20220424221006149](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221006149.png)

tresファイル、画像ファイルが作成されます。

# タイル設定

![help_03_footer](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_03_footer.webp)

下部にタイル設定があります。

- タイル設定ボタン
  - ![image-20220424214851811](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424214851811.png)
- 各マークに対応するZindexの設定
- キャンバス背景は透明で出力するかどうか
- TileSet、出力PNG画像の出力パス（res:// 形式か、OSファイルパス形式かどちらでもOK）
- 出力ボタン！

# 画像追加

![image-20220424221304508](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221304508.png)

- 「画像選択」　追加するタイル画像を選択します。


- キャンバスサイズ自動調整
  - チェックが入っていると、画像がはみだす場合にキャンバスサイズが合わせて大きくなります。

- ↑で選択した画像を削除
  - リストで選択した画像を削除します。
  - ただし、シングルタイル化やオートタイル化したものは消えません。
- 全ての画像を削除

# キャンバス操作

## 操作

タイルの位置いれかえや通行設定のマークをつけます。

#### キャンバス上の画像・マーク選択のやり方

![image-20220424221647185](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221647185.png)を選択すると画像を、![image-20220424221705395](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221705395.png)を選択するとマークが対象になります。

ズーム：Ctrl+マウスホイール　または左上の+-ボタン

選択：左クリック、複数選択：Ctrl+左クリック

矩形選択：左ドラッグ、複数矩形選択：Ctrl+左ドラッグ

削除（マークのみ）：右クリック

矩形削除：右ドラッグ

ズーム中はキャンバス線の表示が消えます。100%にすると表示されます。

![help_06_canvas](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_06_canvas.webp)

選択中のタイルには色が付きます。選択したタイルの種類によって色は変わります。

- 通常タイル＝黄色
- 複数シングルタイル＝緑色
- オートタイル＝青色

## キャンバス上部メニュー

![help_04_canvassetting](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/help_04_canvassetting.webp)

- キャンバスサイズの指定をマス/ピクセルにする
- キャンバスサイズ
  - キャンバスサイズ外の画像、マークは画像出力されません。tilesetにも含まれません。
- マーク色変更
- キャンバス背景色変更
  - *キャンバス背景は透明で出力* にチェックが入っている場合は、この色が背景色になります。
- グリッド色変更

# ボタン・マーク説明

![image-20220424223306555](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424223306555.png)

**マークは、ドラッグでまとめてマークできます。**

#### 各マークについて

#### 画像移動

![image-20220424221647185](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221647185.png)

ショートカットキー：Q

画像の移動、選択をします。

#### マーク移動

![image-20220424221705395](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424221705395.png)

ショートカットキー：W

マークの移動、選択をします。



#### 丸マーク

![image-20220424222231312](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222231312.png)

ショートカットキー：１

通行可能タイルにします。印ペイントなしと全く同じです。

#### バツマーク

![image-20220424222240755](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222240755.png)

ショートカットキー：２

タイルを通行不可にします。※1

#### 星マーク

![image-20220424222253236](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222253236.png)

ショートカットキー：３

常にキャラの上に表示します。※1

下をくぐって通れます。

#### 星マーク２

![image-20220424222304900](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222304900.png)

ショートカットキー：４

常にキャラの上に表示します。※1

下をくぐって通れません。

#### 三角マーク

![image-20220424222314035](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222314035.png)

ショートカットキー：５

後ろに行くと隠れます。※1

#### 詳細バツマーク

![image-20220424222332572](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222332572.png)![image-20220424222404595](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222404595.png)

ショートカットキー：６

マークを削除します。

1/2, 3/1, 1/4 サイズで通行禁止にします。

他マークと同マスに置けます。

そのマスのすべての通行設定は詳細バツマークの内容になります。

#### 消しゴム

![image-20220424222508571](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222508571.png)

ショートカットキー：E

マークを削除します。

ペイントツール中に右ドラッグでも削除可能です。

#### マスカーソル

![image-20220424222521819](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222521819.png)

ショートカットキー：C

マスカーソルを移動します。

キャンバスへの画像追加はマスカーソル位置に追加されます。



※1 Zindexが変わるというだけです。重なり順については下部のZindexの値が入ります。キャラがZindex=0という想定です。必要なら変更してください。



### 2列目

#### 移動ロック

![image-20220424222636347](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222636347.png)

ショートカットキー：Ｌ

画像がドラッグで移動しないようにします。

#### シングルタイル化

![image-20220424222645315](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222645315.png)

ショートカットキー：Ｓ

選択中の複数画像タイルが矩形の場合にボタンを押すことができます。

複数タイルを１つのシングルタイルにします。

#### オートタイル化

![image-20220424222656139](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222656139.png)

ショートカットキー：Ａ

選択中の複数画像タイルをオートタイルにします。

対応…1x3, 3x1, 3x2, 3x3, 3x3(真ん中穴)

#### 削除

![image-20220424222804699](https://github.com/folt-a/tontoko_tile/blob/master/addons/tontoko_tileset/help/image-20220424222804699.png)

ショートカットキー：なし

選択中の画像またはマークを削除します。
