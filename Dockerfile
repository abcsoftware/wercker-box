FROM node:8.0.0
RUN npm config set color false && npm config set loglevel warn
RUN npm install -g s3-cli@0.13.0
