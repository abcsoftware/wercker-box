# install core utilities
apt-get update
apt-get install -y curl wget git-core build-essential xvfb

# install firefox
apt-get install -y firefox

# install google chrome
curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google.list
apt-get update
apt-get install -y google-chrome-stable

# install node.js
curl -sL https://deb.nodesource.com/setup | bash -
apt-get install -y nodejs

# update npm
which node
which npm
npm install -g npm@latest
