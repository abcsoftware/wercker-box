FROM nodesource/trusty:4.2.0
RUN apt-get install -y curl wget git-core build-essential python-all
RUN npm --no-color install -g npm@v3.3.8
RUN npm config set color false && npm config set loglevel warn
RUN npm cache clean
