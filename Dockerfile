FROM node:8.1.4
RUN npm config set color false && npm config set loglevel warn
RUN cd /tmp && npm install npm@5.2.0 --no-save && rm -rf /usr/local/lib/node_modules && mv node_modules /usr/local/lib
RUN npm install -g s3-cli@0.13.0
