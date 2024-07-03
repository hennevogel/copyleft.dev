FROM registry.opensuse.org/opensuse/leap:15.5
EXPOSE 6000

RUN zypper --non-interactive ar -f https://download.opensuse.org/repositories/home:/hennevogel/15.5/home:hennevogel.repo; \
    zypper --non-interactive --gpg-auto-import-keys ref; \
    zypper --non-interactive in --no-recommends webhook; \
    zypper clean; \
    rm -rf /var/log/* /var/cache/zypp

# Setup our user
RUN useradd -m blog

USER blog
WORKDIR /home/blog/blog

CMD ["webhook", "-hooks", "/etc/hooks.json", "-verbose", "-port", "6000"]
