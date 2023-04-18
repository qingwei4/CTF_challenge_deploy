FROM ubuntu:20.04
MAINTAINER Terry1234

RUN apt-get update && \
    DEBAIN_FRONTEND=noninteractive apt-get install -qy xinetd

RUN apt-get install -y python3-pip

RUN pip3 install pycryptodome

RUN useradd -m affine
RUN chown -R root:root /home/affine
RUN chmod -R 755 /home/affine

CMD ["/usr/sbin/xinetd", "-dontfork"]
