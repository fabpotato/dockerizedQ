FROM ubuntu:12.04

ENV QHOME /q
ENV PATH ${PATH}:${QHOME}/l32/

# Install kdb+
COPY q_l /q
COPY start.sh /.
RUN apt-get update
RUN apt-get install -y curl rlwrap lib32z1 lib32ncurses5 lib32bz2-1.0
EXPOSE 5050
#ENTRYPOINT ["/q/l32/q -p 5050"]
