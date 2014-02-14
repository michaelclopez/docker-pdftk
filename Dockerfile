FROM ubuntu

MAINTAINER Ruud Kamphuis "ruudk@mphuis.com"

RUN apt-get update && apt-get -y install build-essential gcj-jdk unzip wget
RUN wget http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk-2.02-src.zip && unzip pdftk-2.02-src.zip
RUN cd pdftk-2.02-dist/pdftk && make -f Makefile.Debian && make -f Makefile.Debian install
RUN rm -rf pdftk-2.02-dist pdftk-2.02-src.zip && apt-get clean
