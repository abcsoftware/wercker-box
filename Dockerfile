FROM iojs:3.3.0
RUN npm install -g npm@v3.3.2
RUN npm cache clean
RUN apt-get update
RUN apt-get install -y curl wget git-core build-essential python-all
