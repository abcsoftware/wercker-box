FROM nodesource/trusty:iojs-3.1.0
RUN npm install -g npm@v3.3.0
RUN apt-get update
RUN apt-get install -y curl wget git-core build-essential python-all
RUN mkdir -p /etc/ssh
RUN ssh-keyscan -t rsa 2>&1 > /etc/ssh/ssh_known_hosts
RUN chmod 644 /etc/ssh/ssh_known_hosts
