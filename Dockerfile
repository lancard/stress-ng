FROM ubuntu

RUN apt-get update
RUN apt-get install stress-ng -y
RUN apt-get upgrade -y

ENTRYPOINT ["/usr/bin/stress-ng", "-c", "1", "-l", "40", "-t", "0"]
