FROM alpine

RUN apk add --no-cache bash curl

ADD ./updater.sh /bin/updater 

ENTRYPOINT [ "/bin/updater" ]