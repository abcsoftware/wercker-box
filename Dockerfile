FROM nodesource/trusty:iojs-3.1.0
RUN npm install -g npm@v3.3.0
RUN apt-get update
RUN apt-get install -y curl wget git-core build-essential python-all
