 
FROM debian:stable-slim

ADD libc.so.6 /lib/x86_64-linux-gnu/libc.so.6
ADD config.yml /root/rsstgbot/config.yml

RUN apt-get update \
    && apt-get install wget curl -y

RUN wget -qO /root/rsstgbot/flowerss-bot https://om.klee.gq/source/010/flowerss-bot

RUN chmod +x /root/rsstgbot/flowerss-bot

CMD /root/rsstgbot/flowerss-bot
