FROM opensuse/leap:15.5
EXPOSE 5000

WORKDIR /featmap/

RUN zypper --non-interactive in wget; \
    wget https://github.com/amborle/featmap/releases/download/v2.1.0/featmap-2.1.0-linux-amd64; \
    chmod +x featmap-2.1.0-linux-amd64 

CMD ./featmap-2.1.0-linux-amd64

