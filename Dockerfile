FROM node:6.2.2
RUN npm --no-color install -g npm@v3.10.3
RUN npm config set color false && npm config set loglevel warn
RUN npm install -g s3-cli@0.13.0
RUN npm cache clean
