FROM httpd:alpine

LABEL   maintainer="Griefed <griefed@griefed.de>"
LABEL   description="Based on https://github.com/javierbyte/triangulator and the fork https://github.com/maeglin89273/triangulator \
This project allows you to turn your pictures into triangulated / polygonized versions of them."

WORKDIR /usr/local/apache2/htdocs

RUN     rm -R *

RUN     apk update && apk upgrade && apk add git                        && \
        git clone https://github.com/maeglin89273/triangulator.git .    && \
        apk del git

EXPOSE 80
