FROM mrismanaziz/man-userbot:buster

RUN git clone -b master https://github.com/DanaRamadhani/Dan-userbot /home/dan-userbot/ \
    && chmod 777 /home/dan-userbot \
    && mkdir /home/dan-userbot/bin/

COPY ./sample_config.env ./config.env* /home/poconguserbot/

WORKDIR /home/dan-userbot/

CMD ["python3", "-m", "userbot"]
