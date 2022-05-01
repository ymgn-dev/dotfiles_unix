-- cmd + ;でKittyを起動するホットキー
-- TODO(ymgn9314): アクティブなウィンドウに全画面表示できるように改善する
-- ↓参考にできそうな記事
-- https://github.com/asmagill/hs._asm.undocumented.spaces
-- https://www.hammerspoon.org/go/#winmovenethack

hs.hotkey.bind({"cmd"}, ";", function()
    local app = hs.application.get("kitty")
    if app and app:isFrontmost() then
        app:hide()
    else
        hs.application.launchOrFocus("/Applications/kitty.app")
    end
end)
