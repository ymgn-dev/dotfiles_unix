# asdf
# https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 19.0.1
asdf global nodejs 19.0.1
corepack enable
asdf reshim nodejs

# fvm
fvm install 3.3.9
fvm global 3.3.9

# mason-cli
dart pub global activate mason_cli

# FlutterFire-cli
dart pub global activate flutterfire_cli

# firebase-cli
npm install -g firebase-tools

# TypeScript
npm install -g typescript

# openjdk
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
