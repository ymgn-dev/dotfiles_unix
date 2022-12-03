# path
export PATH=$HOME/.pub-cache/bin:$PATH
export PATH=$HOME/fvm/default/bin:$PATH
export PATH=/opt/homebrew/opt/openjdk@11/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH

# コンパイラにopenjdkの場所を教える設定
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@11/include"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
