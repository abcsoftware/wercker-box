FROM iojs:3.3.0
RUN npm --no-color install -g npm@v3.3.2
RUN npm config set color false && npm config set loglevel warn
RUN npm cache clean
RUN apt-get update
RUN apt-get install -y curl wget git-core build-essential python-all
