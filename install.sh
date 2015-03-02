echo 'Installing core utilities'
apt-get update
apt-get install -y \
    curl \
    wget \
    git-core \
    build-essential \
    xvfb \
    python-all

echo 'Installing Node.js'
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
source ~/.nvm/nvm.sh
nvm install iojs-v1.4.2
nvm alias default iojs-v1.4.2

echo 'Updating npm'
npm install -g npm@latest
npm cache clean

# install firefox
echo 'Installing Firefox'
apt-get install -y firefox

echo 'Installing Google Chrome'
curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list
apt-get update
apt-get install -y google-chrome-stable
