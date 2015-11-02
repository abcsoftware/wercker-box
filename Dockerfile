FROM node:4.2.1
RUN npm --no-color install -g npm@v3.3.10
RUN npm config set color false && npm config set loglevel warn
RUN npm install -g s3-cli@0.13.0
RUN npm cache clean
