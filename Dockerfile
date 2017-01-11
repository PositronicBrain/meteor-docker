FROM debian:jessie
MAINTAINER Steve Lambe <@firrae>

ENV LANG C
ENV LC_ALL "C"

RUN apt-get update && \
   apt-get install -y git curl wget libfontconfig bzip2 libfreetype6-dev  libfontconfig1-dev && \
   apt-get clean && \
   rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get install -y nodejs

RUN apt-get install -y libfreetype6
RUN wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN tar -jxvf phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN install -t /usr/local/bin phantomjs-2.1.1-linux-x86_64/bin/phantomjs
RUN rm -rf phantomjs-2.1.1-linux-x86_64
RUN rm phantomjs-2.1.1-linux-x86_64.tar.bz2

RUN npm i -g pm2-meteor
RUN npm i -g ssh2
RUN curl https://install.meteor.com/?release=1.4.2.3 | sh
CMD ["/bin/bash"]
