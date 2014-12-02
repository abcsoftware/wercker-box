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
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

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
