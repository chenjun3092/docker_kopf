FROM debian:jessie

RUN apt-get update \
        && apt-get -y upgrade \
        && apt-get install -y \
                git \
                apache2 \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html/

RUN rm *

RUN git clone git://github.com/lmenezes/elasticsearch-kopf.git kopf-v0.90

WORKDIR kopf-v0.90

RUN git checkout 1.0 \
        && cp -rp _site /var/www/html/kopf-v1.x

RUN git checkout 2.0 \
        && cp -rp _site /var/www/html/kopf-v2.x

RUN git checkout 0.90

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
