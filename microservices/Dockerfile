
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y mongodb-server nodejs git npm
RUN git clone https://github.com/AlexKrp/NodeLearnApp1.git

COPY mongod.conf /etc/mongod.conf
COPY database.js /NodeLearnApp1/config/database.js
COPY start.sh /start.sh

RUN cd /NodeLearnApp1 && npm install
RUN mkdir -p /data/db
RUN chmod 0777 /start.sh

CMD ["/bin/bash","/start.sh"]