FROM tos-beta
MAINTAINER Aymen Furter <aymen.furter@gmail.com>

ENV USER trun
ENV APPUID 8181
ENV JAVA_XMX 256m
ENV EXEC exec

ADD target/camel-example-mock-1.0.0-SNAPSHOT.jar /opt/trun/deploy/camel-example-mock-1.0.0-SNAPSHOT.jar

ENTRYPOINT ["/opt/trun/bin/trun"] 