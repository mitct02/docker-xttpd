FROM  mitct02/xtide:2.13.2

MAINTAINER Tom Mitchell <tom@tom.org>

# copy all the tcd files from ./tcdfiles into /usr/share/xtide/

ADD ./tcdfiles/* /usr/share/xtide/

ADD loop.sh /bin/
RUN chmod +x /bin/loop.sh

#RUN /usr/sbin/xttpd 8080

CMD ["nohup", "sh", "/bin/loop.sh", "&"]
