# zinitプラグイン
# 参考: https://qiita.com/YUM_3/items/31ed30782f160ffd6f82

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi
