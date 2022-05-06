# path
export PATH="$PATH":"$HOME/.pub-cache/bin":"$HOME/fvm/default/bin":"/opt/homebrew/opt/openjdk/bin"

# コンパイラにopenjdkの場所を教える設定
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"