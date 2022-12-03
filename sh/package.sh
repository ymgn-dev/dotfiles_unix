# rosetta
# asdf, fvmの操作でRosetta 2が必要になるため必ず先に実行すること
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"

# asdf
# https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 19.0.1
asdf global nodejs 19.0.1
corepack enable
asdf reshim nodejs

# https://github.com/danhper/asdf-python
asdf plugin-add python
asdf install python 3.11.0
asdf global python 3.11.0
asdf reshim python
pip install --upgrade pip
pip install pipenv
asdf reshim python

# fvm
fvm install 3.3.9
fvm global 3.3.9

# mason-cli
dart pub global activate mason_cli

# FlutterFire-cli
dart pub global activate flutterfire_cli

# firebase-cli
npm install -g firebase-tools

# openjdk
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
