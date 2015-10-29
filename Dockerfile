FROM nodesource/trusty:4.2.0
RUN apt-get update
RUN apt-get install -y wget git-core
RUN npm --no-color install -g npm@v3.3.8
RUN npm config set color false && npm config set loglevel warn
RUN npm cache clean
