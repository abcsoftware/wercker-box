FROM iojs:3.3.0
RUN npm install -g npm@v3.3.2
RUN apt-get update
RUN apt-get install -y curl wget git-core build-essential python-all openssh-client rsync
RUN mkdir -p /etc/ssh
RUN ssh-keyscan -t rsa deploy.abcs.us 2>&1 > /etc/ssh/ssh_known_hosts
RUN chmod 644 /etc/ssh/ssh_known_hosts
