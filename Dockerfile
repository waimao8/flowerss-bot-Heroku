 
FROM debian:stable-slim

ADD config.yml /root/rsstgbot/config.yml
ADD run.sh /root/rsstgbot/run.sh


RUN apt-get update \
    && apt-get install wget curl libc6-dev -y

RUN wget -qO /root/rsstgbot/flowerss-bot https://om.klee.gq/source/010/flowerss-bot

RUN chmod +x /root/rsstgbot/flowerss-bot \
    && chmod +x /root/rsstgbot/run.sh

CMD /root/rsstgbot/run.sh
