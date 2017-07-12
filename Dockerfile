FROM node:8.1.4
RUN pip install "s3cmd==2.0.0"
RUN npm config set color false && npm config set loglevel warn
RUN npm install -g s3-cli@0.13.0 npm@5.2.0
