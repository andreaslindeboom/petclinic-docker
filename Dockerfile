FROM ubuntu:14.04

ADD ./ /app

WORKDIR /app

RUN apt-get -y update &&\
    apt-get -y install maven &&\
    apt-get -y install default-jdk &&\
    mvn package

ENTRYPOINT ["mvn", "tomcat7:run" ]
