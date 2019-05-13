# macOS

## システム環境設定

### 一般

### デスクトップとスクリーンセーバ

### Dock

* Dockを自動的に表示/非表示 を「ON」
  `defaults write com.apple.dock autohide -bool true`

### Mission Control

* 最新の使用状況に基づいて操作スペースを自動的に並び替える を「OFF」
* Dashboard を「オフ」

#### ホットコーナー

* 左下：ディスプレイをスリープさせる

  ```bash
  defaults write com.apple.dock wvous-bl-corner -int 10
  defaults write com.apple.dock wvous-bl-modifier -int 0
  ```

* 右下：デスクトップ

  ```bash
  defaults write com.apple.dock wvous-br-corner -int 4
  defaults write com.apple.dock wvous-br-modifier -int 0
  ```

### 言語と地域

### セキュリティとプライバシー

###  Spotlight

### 通知

### ディスプレイ

### 省エネルギー

* コンピュータのスリープ を「しない」
* ディスプレイのスリープ を「しない」
* 可能な場合はハードディスクをスリープさせる を「OFF」
* ネットワークアクセスによるスリープ解除 を「OFF」

### キーボード

* F1、F2などのキーを標準のファンクションキーとして使用 を「ON」
  `defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true`

#### 修飾キー

* Caps Lock キー：Control

### マウス

#### ポイントとクリック

* スクロールの方向：ナチュラル を「ON」
* 副ボタンのクリック を「ON」
* スマートズーム を「ON」
* 軌跡の速さ を「上から３個目」
  `defaults write "Apple Global Domain" com.apple.mouse.scaling 1.6`

### その他のジェスチャ

* ページ間をスワイプ を「ON」
* フルスクリーンアプリケーション間をスワイプ を「ON」
* Mission Control を「ON」

### トラックパッド

### プリンタとスキャナ

### サウンド

### 起動ディスク

### iCloud

### インターネットアカウント

### ソフトウェアアップデート

### ネットワーク

### Bluetooth

### 拡張機能

### 共有

* コンピュータ名 を「任意の名称」に変更

### ユーザとグループ

### ペアレンタルコントロール

### Siri

### 日付と時刻

* 時間帯 を「Tokyo - 日本」

### Time Machine

### アクセシビリティ

## Finder

### 一般

* デスクトップに表示する項目 を「すべてON」
* 新規Finderウインドウで次を表示 を「アプリケーション」

### タグ

### サイドバー

* サイドバーに表示する項目
  * $HOME
  * ハードディスク

### 詳細

* すべてのファイル名拡張子を表示 を「ON」
  `defaults write NSGlobalDomain AppleShowAllExtensions -bool true`

## その他

### System

* ネットワークフォルダに.DS_Storeを作らない
  `defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true`

### Menubar

* バッテリー残量を％表記にする
  `defaults write com.apple.menuextra.battery ShowPercent -string "YES"`
* 日付と時刻のフォーマットを変更する（24時間表示、秒表示あり、日付・曜日を表示）
  `defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE) H:mm:ss"`

### Finder

* デフォルトをカラムビュー表示にする
  `defaults write com.apple.finder FXPreferredViewStyle clmv`
* タイトルバーにフルパスを表示する
  `defaults write com.apple.finder _FXShowPosixPathInTitle -bool true`
* ステータスバーを表示する
  `defaults write com.apple.finder ShowStatusBar -bool true`
* パスバーを表示する
  `defaults write com.apple.finder ShowPathbar -bool true`
* 他のウィンドウに移った時にQuick Lookを非表示にする
  `defaults write com.apple.finder QLHidePanelOnDeactivate -bool true`
* Quick Look上でテキストの選択を可能にする
  `defaults write com.apple.finder QLEnableTextSelection -bool true`
* 「ライブラリ」を常に表示する
  `chflags nohidden ~/Library`
* Finder再起動する
  `killall Finder`