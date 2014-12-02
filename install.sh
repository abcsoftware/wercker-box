echo 'Installing core utilities'
apt-get update -qq
apt-get install -yqq curl wget git-core build-essential xvfb

# install firefox
echo 'Installing Firefox'
apt-get install -yqq firefox

echo 'Installing Google Chrome'
curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list
apt-get update -qq
apt-get install -yqq google-chrome-stable

echo 'Installing Node.js'
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -yqq nodejs

echo 'Updating npm'
which node
which npm
npm install -g npm@latest
