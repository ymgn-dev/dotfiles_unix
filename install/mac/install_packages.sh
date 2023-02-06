# asdf
# https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 19.6.0
asdf global nodejs 19.6.0
corepack enable
asdf reshim nodejs

# fvm
fvm install 3.3.10
fvm global 3.3.10

# firebase-cli
npm install -g firebase-tools

# TypeScript
npm install -g typescript

# openjdk
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
