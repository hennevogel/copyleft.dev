FROM opensuse/leap:15.5

WORKDIR /featmap/

RUN zypper --non-interactive in wget; \
    wget https://github.com/amborle/featmap/releases/download/v2.1.0/featmap-2.1.0-linux-amd64; \
    chmod +x featmap-2.1.0-linux-amd64 

EXPOSE 5000
ENTRYPOINT ["./featmap-2.1.0-linux-amd64"]

