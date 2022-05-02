# 参考:
# https://github.com/ulwlu/dotfiles/blob/master/system/macos.sh
# https://macos-defaults.com/

# 起動音無効化
sudo nvram SystemAudioVolume=" "

# ウィンドウのタイトルバーダブルクリック時の挙動
# defaults write .GlobalPreferences AppleActionOnDoubleClick -string "Minimize"
defaults write .GlobalPreferences AppleActionOnDoubleClick -string "Maximize"
# defaults write .GlobalPreferences AppleActionOnDoubleClick -string "None"

# ウィンドウをアプリアイコンへ最小化する
defaults write com.apple.dock minimize-to-application -bool true

# ウィンドウリサイズアニメーション高速化
defaults write -g NSWindowResizeTime -float 0.001

# Finderのアニメーション無効化
defaults write com.apple.finder DisableAllAnimations -bool true

# Dockが表示されるアニメーション時間
# 秒数を指定する
defaults write com.apple.dock autohide-time-modifier -float 0.4
# ↓デフォルト値に戻す
# defaults delete com.apple.dock autohide-time-modifier

# Dockに最近使用したアプリを表示しない
defaults write com.apple.dock show-recents -bool false

# Finderのパスバー表示
defaults write com.apple.finder ShowPathbar -bool true

# Finderのタブバー表示
defaults write com.apple.finder ShowTabView -bool true

# Finderのステータスバー表示
defaults write com.apple.finder ShowStatusBar -bool true

# ファイルの拡張子表示
defaults write -g AppleShowAllExtensions -bool true

# ゴミ箱を空にする前の警告無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# 30日以上経過したゴミ箱内のアイテムは削除する
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# 未認証アプリ起動時の警告無効化
defaults write com.apple.LaunchServices LSQuarantine -bool false

# バッテリー%表示を有効にする
defaults write ~/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool true

# ディスプレイ暗転までの時間
sudo pmset -b displaysleep 3

# トラックパッドのクリック強さ
# 0: Light, 1: Medium, 2: Firm
defaults write -g com.apple.trackpad.forceClick 0

# トラッキング速度
# 0: Slow, 3: Fast
defaults write -g com.apple.trackpad.scaling 3

# キーのリピート速度
# 0: Slow, 15: Fast
defaults write .GlobalPreferences InitialKeyRepeat -int 15

# キーのリピート開始までの遅延速度
# 0: Slow, 2: Fast
defaults write .GlobalPreferences KeyRepeat -int 2

# できていないこと
echo "キーボードショートカットを全て無効にするには、"
echo "システム設定 > キーボード > ショートカットのチェックを全て外してください。"
echo ""
echo "また、設定を反映するためには、再起動が必要です。"